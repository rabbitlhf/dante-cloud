package cn.herodotus.eurynome.platform.gateway.filter;

import cn.herodotus.eurynome.component.common.constants.SecurityConstants;
import cn.herodotus.eurynome.component.common.domain.Result;
import cn.herodotus.eurynome.component.common.enums.ResultStatus;
import cn.herodotus.eurynome.platform.gateway.properties.GatewaySecurityProperties;
import cn.herodotus.eurynome.platform.gateway.utils.WebFluxUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpStatus;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.HttpHeaders;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p> Description : GlobalCertificationFilter </p>
 *
 * @author : gengwei.zheng
 * @date : 2020/3/4 18:36
 */
@Slf4j
@Component
public class GlobalCertificationFilter implements GlobalFilter, Ordered {

    @Resource
    private GatewaySecurityProperties gatewaySecurityProperties;
    @Resource
    private RedisTemplate<Object, Object> redisTemplate;

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {

        log.debug("[Herodotus] |- Gateway Global Certification Filter in use!");

        // 1.检查是否是免登陆连接
        String url = exchange.getRequest().getURI().getPath();
        List<String> whiteList = gatewaySecurityProperties.getWhiteList();
        if (WebFluxUtils.isPathMatch(whiteList, url)) {
            log.debug("[Herodotus] |- Is White List Request: {}", url);
            // 1.1. 如果是免登陆接口，看一下是否有AUTHORIZATION头，有就把AUTHORIZATION头给去掉，避免免登录接口会校验token。
            //      主要是针对/oauth/token : https://www.cnblogs.com/mxmbk/p/9782409.html
            //      逻辑上可以在前端处理，即根据Token的情况，合理的设置AUTHORIZATION头。但是不好控，所以在这里控制。
            if (exchange.getRequest().getHeaders().containsKey(HttpHeaders.AUTHORIZATION)) {
                ServerHttpRequest request = exchange.getRequest().mutate()
                        .headers(httpHeaders -> httpHeaders.remove(HttpHeaders.AUTHORIZATION))
                        .build();
                log.debug("[Herodotus] |- Remove additional authorization header！");
                return chain.filter(exchange.mutate().request(request).build());
            } else {
                // 1.2 如果没有AUTHORIZATION,正常执行
                return chain.filter(exchange);
            }
        }

        // 2.非免登陆地址，获取token 检查token，如果未空，或者不是 Bearer XXX形式，则认为未授权。
        String token = exchange.getRequest().getHeaders().getFirst(HttpHeaders.AUTHORIZATION);
        if (!isTokenWellFormed(token)) {
            log.debug("[Herodotus] |- Token is not Well Formed！");
            return WebFluxUtils.writeJsonResponse(exchange.getResponse(), new Result<String>().type(ResultStatus.UNAUTHORIZED).httpStatus(HttpStatus.SC_UNAUTHORIZED));
        }

        // 3. 非免登陆接口，同时也有格式正确的Token，那么就验证Token是否过期
        //    就看Redis中，是否有这个Token
        String redisTokenKey = StringUtils.replace(token, SecurityConstants.BEARER_TOKEN, "access:");
        if (!redisTemplate.hasKey(redisTokenKey)) {
            log.debug("[Herodotus] |- Token is Expired！");
            return WebFluxUtils.writeJsonResponse(exchange.getResponse(), new Result<String>().type(ResultStatus.INVALID_TOKEN).httpStatus(HttpStatus.SC_FORBIDDEN));
        } else {
            log.debug("[Herodotus] |- Token is OK！");
            return chain.filter(exchange);
        }
    }

    @Override
    public int getOrder() {
        return FilterOrder.GLOBAL_CERTIFICATION_FILTER_ORDER;
    }

    private boolean isTokenWellFormed(String token) {
        return !StringUtils.isBlank(token) && !StringUtils.containsOnly(token, SecurityConstants.BEARER_TOKEN);
    }
}

/*
 * Copyright (c) 2019-2021 Gengwei Zheng(herodotus@aliyun.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Project Name: eurynome-cloud
 * Module Name: eurynome-cloud-gateway
 * File Name: FilterOrder.java
 * Author: gengwei.zheng
 * Date: 2021/05/07 11:28:07
 */

package cn.herodotus.eurynome.gateway.filter;

/**
 * <p> Description : 过滤器排序值统一管理 </p>
 * <p>
 * 值越小优先级越高
 *
 * @author : gengwei.zheng
 * @date : 2020/3/4 18:31
 */
public class FilterOrder {

    private static final int INITIAL_ORDER = -10;
    private static final int ORDER_STEP = 10;

    public static final int GLOBAL_CACHE_BODY_FILTER_ORDER = INITIAL_ORDER;
    public static final int GLOBAL_SQL_INJECTION_FILTER_ORDER = GLOBAL_CACHE_BODY_FILTER_ORDER + ORDER_STEP;
    public static final int GLOBAL_CERTIFICATION_FILTER_ORDER = GLOBAL_SQL_INJECTION_FILTER_ORDER + ORDER_STEP;
    public static final int GLOBAL_RESPONSE_FILTER_ORDER = GLOBAL_CERTIFICATION_FILTER_ORDER + ORDER_STEP;

}

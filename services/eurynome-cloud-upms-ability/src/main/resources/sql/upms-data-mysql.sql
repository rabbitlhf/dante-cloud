/*
 * Copyright (c) 2019-2021 Gengwei Zheng(herodotus@aliyun.com)
 *
 * Licensed under the Apache License, Version 2.0 (the `License`);
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an `AS IS` BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Project Name: eurynome-cloud
 * Module Name: eurynome-cloud-upms-ability
 * File Name: upms-data-postgresql.sql
 * Author: gengwei.zheng
 * Date: 2021/05/13 15:48:13
 */

-- ----------------------------
-- Table data for oauth_applications
-- ----------------------------
INSERT INTO `oauth_applications`(`app_key`, `create_time`, `ranking`, `update_time`, `description`, `is_reserved`, `reversion`, `status`, `app_icon`, `app_name`, `app_name_en`, `app_secret`, `app_type`, `app_tech`, `website`, `app_code`) VALUES ('010e659a-4005-4610-98f6-00b822f4758e', '2020-04-21 19:00:19.197', 0, '2020-05-05 18:02:48.367', '', b'1', 0, 1, NULL, '业务中台管理端', 'Eurynome', '04165a07-cffd-45cf-a20a-1c2a69f65fb1', 0, 3, 'http://localhost:8080', '');

-- ----------------------------
-- Table data for oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('004b87d8-0a18-4e62-a35c-f2f123713349', '$2a$10$LZW/i7hHD3K6bNMLNMAgsu14avbR7cC0Ibw3cHj6P/NNjUqZSk3ou', NULL, NULL, 'client_credentials,password', NULL, NULL, NULL, NULL, '{\"appCode\":\"eurynome-cloud-upms-ability\",\"appName\":\"业务中台用户中心服务\",\"appSecret\":\"2bda7d3a-dba1-45a4-b08e-cbd731a0418e\",\"applicationType\":\"SERVICE\",\"createTime\":1588735446377,\"description\":\"\",\"id\":\"004b87d8-0a18-4e62-a35c-f2f123713349\",\"ranking\":0,\"reserved\":true,\"reversion\":0,\"serviceId\":\"004b87d8-0a18-4e62-a35c-f2f123713349\",\"status\":\"ENABLE\",\"supplier\":{\"createTime\":1588669980067,\"description\":\"\",\"id\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"linkedProperty\":\"HERODOTUS\",\"ranking\":0,\"reserved\":true,\"reversion\":0,\"status\":\"ENABLE\",\"supplierCode\":\"HERODOTUS\",\"supplierId\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"supplierName\":\"业务中台架构及开发团队\",\"supplierType\":\"CORE\",\"updateTime\":1588669980067},\"updateTime\":1588735446377}', NULL);
INSERT INTO `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('010e659a-4005-4610-98f6-00b822f4758e', '$2a$10$XxKxGWDlqgdKhcvIBvhx9u7hVLpVKfVlsG.d2AoLIGFYugz0dZf2i', NULL, 'all', 'password,authorization_code,client_credentials', NULL, NULL, 43200, 2592000, '{\"appCode\":\"\",\"appKey\":\"010e659a-4005-4610-98f6-00b822f4758e\",\"appName\":\"业务中台管理端\",\"appNameEn\":\"Eurynome\",\"appSecret\":\"04165a07-cffd-45cf-a20a-1c2a69f65fb1\",\"applicationType\":\"WEB\",\"createTime\":1587466819000,\"description\":\"\",\"id\":\"010e659a-4005-4610-98f6-00b822f4758e\",\"ranking\":0,\"reserved\":true,\"reversion\":0,\"scopes\":[{\"authorities\":[],\"createTime\":1586851572000,\"description\":\"中台全部服务权限\",\"id\":\"c153737a-5234-11ea-ae28-14cf92c9b916\",\"linkedProperty\":\"all\",\"ranking\":1,\"reserved\":true,\"reversion\":0,\"scopeCode\":\"all\",\"scopeId\":\"c153737a-5234-11ea-ae28-14cf92c9b916\",\"scopeName\":\"全部权限\",\"status\":\"ENABLE\",\"updateTime\":1587081166481}],\"status\":\"ENABLE\",\"technologyType\":\"NODE\",\"updateTime\":1588672968367,\"website\":\"http://localhost:8080\"}', NULL);
INSERT INTO `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('a7e91f49-ab28-4f55-81c4-973449cfe1eb', '$2a$10$fi5ecIcM3hy9RQwE0x78oeyNecPFiUgi0PnhESeENjX3G4CBvYOLO', '', 'all', 'authorization_code,client_credentials', 'http://localhost:9999/passport/login', '', 43200, 2592000, '{\"status\":\"ENABLE\",\"website\":\"http://localhsot:9999\",\"appName\":\"运营后台\"}', '');
INSERT INTO `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('e2a746fc-cb1a-49c3-9436-67004117b039', '$2a$10$KE23iMm9qHciIzIog8FHQOMjtJ4LVVtGia4NpaS6Mhk3qQlqReU7.', '', '', 'client_credentials,password', '', '', NULL, NULL, '{\"reversion\":0,\"applicationType\":\"SERVICE\",\"appName\":\"业务中台流程中心服务\",\"description\":\"\",\"updateTime\":1592557079565,\"appCode\":\"eurynome-cloud-bpmn-ability\",\"createTime\":1592557079565,\"reserved\":true,\"supplier\":{\"reversion\":0,\"supplierName\":\"业务中台架构及开发团队\",\"supplierId\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"description\":\"\",\"updateTime\":1588669980067,\"supplierCode\":\"HERODOTUS\",\"createTime\":1588669980067,\"reserved\":true,\"linkedProperty\":\"HERODOTUS\",\"ranking\":0,\"id\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"supplierType\":\"CORE\",\"status\":\"ENABLE\"},\"appSecret\":\"25c9a32b-45a9-447a-a7e3-3a28d6a6834e\",\"ranking\":2,\"id\":\"e2a746fc-cb1a-49c3-9436-67004117b039\",\"scopes\":[],\"serviceId\":\"e2a746fc-cb1a-49c3-9436-67004117b039\",\"status\":\"ENABLE\"}', NULL);
INSERT INTO `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('f8e3f156-2cf4-449c-926d-d1377fe82c86', '$2a$10$S.cbWjrli7DJ34UQayozBOj07th.o4xAoW6pLEoAMM8Hd3YGh4y82', NULL, 'read_client_detail,read_user_detail', 'client_credentials,password', NULL, NULL, NULL, NULL, '{\"appCode\":\"eurynome-cloud-platform-uaa\",\"appName\":\"业务中台认证中心服务\",\"appSecret\":\"067e9d1c-12ed-4400-92ce-97281ddd71ff\",\"applicationType\":\"SERVICE\",\"createTime\":1588698889183,\"description\":\"\",\"id\":\"f8e3f156-2cf4-449c-926d-d1377fe82c86\",\"ranking\":0,\"reserved\":true,\"reversion\":0,\"scopes\":[{\"authorities\":[{\"authorityCode\":\"OP_0C40DF5087487901D7289D070BE6A5F3\",\"authorityId\":\"0C40DF5087487901D7289D070BE6A5F3\",\"authorityName\":\"获取终端信息\",\"authorityType\":\"API\",\"className\":\"cn.herodotus.eurynome.upms.rest.controller.oauth.OauthClientDetailsController\",\"createTime\":1589024686153,\"id\":\"0C40DF5087487901D7289D070BE6A5F3\",\"menuClass\":\"fa fa-caret-right\",\"methodName\":\"findByClientId\",\"parentId\":\"eurynome-cloud-upms-ability\",\"ranking\":0,\"requestMethod\":\"GET\",\"reserved\":false,\"reversion\":0,\"serviceId\":\"eurynome-cloud-upms-ability\",\"status\":\"ENABLE\",\"updateTime\":1591447593097,\"url\":\"/oauth/client_details\"}],\"createTime\":1591461064569,\"description\":\"\",\"id\":\"5589940e-ec75-4de4-9995-11a2090bf617\",\"linkedProperty\":\"read_client_detail\",\"ranking\":1,\"reserved\":true,\"reversion\":0,\"scopeCode\":\"read_client_detail\",\"scopeId\":\"5589940e-ec75-4de4-9995-11a2090bf617\",\"scopeName\":\"获取客户端信息\",\"status\":\"ENABLE\",\"updateTime\":1591513318119},{\"authorities\":[{\"authorityCode\":\"OP_B9F9A62E9E00E743A832436519AC3E97\",\"authorityId\":\"B9F9A62E9E00E743A832436519AC3E97\",\"authorityName\":\"根据用户ID查询用户\",\"authorityType\":\"API\",\"className\":\"cn.herodotus.eurynome.upms.rest.controller.system.SysUserController\",\"createTime\":1589024686189,\"id\":\"B9F9A62E9E00E743A832436519AC3E97\",\"menuClass\":\"fa fa-caret-right\",\"methodName\":\"findById\",\"parentId\":\"eurynome-cloud-upms-ability\",\"ranking\":0,\"requestMethod\":\"POST\",\"reserved\":false,\"reversion\":0,\"serviceId\":\"eurynome-cloud-upms-ability\",\"status\":\"ENABLE\",\"updateTime\":1591447593112,\"url\":\"/user/findById\"},{\"authorityCode\":\"OP_AF75A8DE6B2F439FC486A9CC142A5F5D\",\"authorityId\":\"AF75A8DE6B2F439FC486A9CC142A5F5D\",\"authorityName\":\"根据用户名查询用户\",\"authorityType\":\"API\",\"className\":\"cn.herodotus.eurynome.upms.rest.controller.system.SysUserController\",\"createTime\":1589024686192,\"id\":\"AF75A8DE6B2F439FC486A9CC142A5F5D\",\"menuClass\":\"fa fa-caret-right\",\"methodName\":\"findByUsername\",\"parentId\":\"eurynome-cloud-upms-ability\",\"ranking\":0,\"requestMethod\":\"POST\",\"reserved\":false,\"reversion\":0,\"serviceId\":\"eurynome-cloud-upms-ability\",\"status\":\"ENABLE\",\"updateTime\":1591447593114,\"url\":\"/user/findByUsername\"}],\"createTime\":1591461326815,\"description\":\"\",\"id\":\"911b0419-78d6-4775-824b-c0b4f84d6ddd\",\"linkedProperty\":\"read_user_detail\",\"ranking\":2,\"reserved\":true,\"reversion\":0,\"scopeCode\":\"read_user_detail\",\"scopeId\":\"911b0419-78d6-4775-824b-c0b4f84d6ddd\",\"scopeName\":\"获取用户信息\",\"status\":\"ENABLE\",\"updateTime\":1591513359089}],\"serviceId\":\"f8e3f156-2cf4-449c-926d-d1377fe82c86\",\"status\":\"ENABLE\",\"supplier\":{\"createTime\":1588698780067,\"description\":\"\",\"id\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"linkedProperty\":\"HERODOTUS\",\"ranking\":0,\"reserved\":true,\"reversion\":0,\"status\":\"ENABLE\",\"supplierCode\":\"HERODOTUS\",\"supplierId\":\"067fc1c8-f3e1-4f41-9c7c-0bd4f885bf9e\",\"supplierName\":\"业务中台架构及开发团队\",\"supplierType\":\"CORE\",\"updateTime\":1588698780067},\"updateTime\":1588698889183}', NULL);

-- ----------------------------
-- Table data for oauth_scopes
-- ----------------------------
INSERT INTO `oauth_scopes`(`scope_id`, `create_time`, `ranking`, `update_time`, `description`, `is_reserved`, `reversion`, `status`, `scope_code`, `scope_name`) VALUES ('c153737a-5234-11ea-ae28-14cf92c9b916', '2020-04-14 16:06:12', 1, '2020-04-17 07:52:46.481', '中台全部服务权限', b'1', 0, 1, 'all', '全部权限');

-- ----------------------------
-- Table data for sys_user
-- ----------------------------
INSERT INTO `sys_user`(`user_id`, `create_time`, `ranking`, `update_time`, `description`, `is_reserved`, `status`, `nick_name`, `password`, `user_name`, `reversion`) VALUES ('1', '2019-07-23 07:19:50', 1, '2019-07-23 07:19:52', '平台管理员', b'1', 1, 'Hades', '$2a$10$fi5ecIcM3hy9RQwE0x78oeyNecPFiUgi0PnhESeENjX3G4CBvYOLO', 'system', NULL);

-- ----------------------------
-- Table data for sys_role
-- ----------------------------
INSERT INTO `sys_role`(`role_id`, `create_time`, `ranking`, `update_time`, `description`, `is_reserved`, `status`, `role_code`, `role_name`, `reversion`) VALUES ('1', '2019-07-23 07:22:27', 1, '2019-09-11 12:04:52', '中台管理员角色', b'1', 1, 'ROLE_ADMINISTRATOR', '平台管理员角色', NULL);

-- ----------------------------
-- Table data for sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role`(`user_id`, `role_id`) VALUES ('1', '1');

-- ----------------------------
-- Table data for sys_authority
-- ----------------------------
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('e639f8973fe07b89bff4e7777a926cbe', NULL, b'0', 0, 1, 'OP_934227964', '给用户分配角色', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysUserController', 'fa fa-caret-right', 'assign', 'eurynome-cloud-upms-ability', 'PUT', 'eurynome-cloud-upms-ability', '/user', '2021-07-25 15:12:22.504', 0, '2021-07-25 15:35:43.393');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('f8707d73263e9b0095814933753bd7c9', NULL, b'0', 0, 1, 'OP_909071670', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.development.SupplierController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/microservice/supplier', '2021-07-25 15:12:22.506', 0, '2021-07-25 15:35:43.444');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('96dcf808dd1e151a2f08b03cd8072e0c', NULL, b'0', 0, 1, 'OP_1898367071', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysAuthorityController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/authority', '2021-07-25 15:12:22.516', 0, '2021-07-25 15:35:43.444');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('bcd05c815d94c20ef66df63a36c7151d', NULL, b'0', 0, 1, 'OP_1991063326', '更新ClientDetails', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthClientDetailsController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/oauth/client_details', '2021-07-25 15:12:22.517', 0, '2021-07-25 15:35:43.445');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('a7b44a7f4296e7a6d104709050a44541', NULL, b'0', 0, 1, 'OP_207766009', '获取服务使用常量', 'API', 'cn.herodotus.eurynome.upms.rest.controller.UpmsConstantsController', 'fa fa-caret-right', 'findAllEnums', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/constants/enums', '2021-07-25 15:12:22.526', 0, '2021-07-25 15:35:43.445');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('ae8f8686b97f6c2d27e19b936b45f0a5', NULL, b'0', 0, 1, 'OP_935543304', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysUserController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/user', '2021-07-25 15:12:22.499', 0, '2021-07-25 15:35:43.446');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('a08e4745161661c8934658ca28d55305', NULL, b'0', 0, 1, 'OP_1755260542', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthApplicationsController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/oauth/applications', '2021-07-25 15:12:22.522', 0, '2021-07-25 15:35:43.446');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('1090bdb85eb15b1f85fa09cb3f043fbf', NULL, b'0', 0, 1, 'OP_696275250', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysAuthorityController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/authority', '2021-07-25 15:12:22.507', 0, '2021-07-25 15:35:43.447');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('c8ebf08d787bde50b652826a5c4d4a47', NULL, b'0', 0, 1, 'OP_1559961844', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysUserController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/user', '2021-07-25 15:12:22.521', 0, '2021-07-25 15:35:43.447');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('0519f7de094291e4575f5cc1d06b74ba', NULL, b'0', 0, 1, 'OP_645617925', '获取ClientDetails分页数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthClientDetailsController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/oauth/client_details', '2021-07-25 15:12:22.505', 0, '2021-07-25 15:35:43.447');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('16b70371ecca3ecc4391249c40869445', NULL, b'0', 0, 1, 'OP_1174303230', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthApplicationsController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/oauth/applications', '2021-07-25 15:12:22.52', 0, '2021-07-25 15:35:43.448');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('018d6a5042c96c0d0a5ca4d904a7852d', NULL, b'0', 0, 1, 'OP_331318559', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.development.SupplierController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/microservice/supplier', '2021-07-25 15:12:22.488', 0, '2021-07-25 15:35:43.448');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('2b5095fb1abdcc0bc1c11e76c37f2e85', NULL, b'0', 0, 1, 'OP_984746360', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.development.SupplierController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/microservice/supplier', '2021-07-25 15:12:22.519', 0, '2021-07-25 15:35:43.448');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('d4b03797cf2e74aa14a093833ad913b5', NULL, b'0', 0, 1, 'OP_350516378', '给角色授权', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysRoleController', 'fa fa-caret-right', 'authorize', 'eurynome-cloud-upms-ability', 'PUT', 'eurynome-cloud-upms-ability', '/role', '2021-07-25 15:12:22.49', 0, '2021-07-25 15:35:43.448');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('63e24c432d5bf40f45268eda67788405', NULL, b'0', 0, 1, 'OP_1058261553', '获取全部API接口', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysAuthorityController', 'fa fa-caret-right', 'findAllApis', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/authority/apis', '2021-07-25 15:12:22.524', 0, '2021-07-25 15:35:43.449');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('6388310852b64b8fd99940d65627fb1c', NULL, b'0', 0, 1, 'OP_1752287505', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysAuthorityController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/authority', '2021-07-25 15:12:22.511', 0, '2021-07-25 15:35:43.45');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('e3dfcc61063933e0154ae0abde25c92b', NULL, b'0', 0, 1, 'OP_906641554', '删除ClientDetails', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthClientDetailsController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/oauth/client_details', '2021-07-25 15:12:22.514', 0, '2021-07-25 15:35:43.451');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('32b1efdabbd1b337cfe907e6c1491dc9', NULL, b'0', 0, 1, 'OP_676768212', '给应用分配Scope', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthApplicationsController', 'fa fa-caret-right', 'assign', 'eurynome-cloud-upms-ability', 'PUT', 'eurynome-cloud-upms-ability', '/oauth/applications', '2021-07-25 15:12:22.491', 0, '2021-07-25 15:35:43.451');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('975ca2fb915e871893eb721ad7208ce8', NULL, b'0', 0, 1, 'OP_1338219775', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthScopesController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/oauth/scopes', '2021-07-25 15:12:22.502', 0, '2021-07-25 15:35:43.451');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('471af4c5980008670a94eeceeb6149ff', NULL, b'0', 0, 1, 'OP_1944236709', '获取全部厂商数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.development.SupplierController', 'fa fa-caret-right', 'findAll', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/microservice/supplier/list', '2021-07-25 15:12:22.447', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('2582c3b2d4afbc1452720a9df3320c27', NULL, b'0', 0, 1, 'OP_1893133407', '获取当前登录用户信息', 'API', 'cn.herodotus.eurynome.oauth.controller.IdentityController', 'fa fa-caret-right', 'getUserProfile', 'eurynome-cloud-uaa', 'GET', 'eurynome-cloud-uaa', '/identity/profile', '2021-07-25 15:21:05.248', 0, '2021-07-25 15:36:20.698');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('d1e2dd111ae3db633d3d50e2aef817a1', NULL, b'0', 0, 1, 'OP_1769301532', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthApplicationsController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/oauth/applications', '2021-07-25 15:12:22.501', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('9e5acec7fd5da9173ca387447fc9e2d1', NULL, b'0', 0, 1, 'OP_461496766', '给OauthScopes授权', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthScopesController', 'fa fa-caret-right', 'authorize', 'eurynome-cloud-upms-ability', 'PUT', 'eurynome-cloud-upms-ability', '/oauth/scopes', '2021-07-25 15:12:22.515', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('7fb8655292006bfd40d9f99e92e9f305', NULL, b'0', 0, 1, 'OP_1348550597', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysUserController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/user', '2021-07-25 15:12:22.523', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('0a9db6221dcf50d4c9622b2e1a831576', NULL, b'0', 0, 1, 'OP_320538228', '删除数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysRoleController', 'fa fa-caret-right', 'delete', 'eurynome-cloud-upms-ability', 'DELETE', 'eurynome-cloud-upms-ability', '/role', '2021-07-25 15:12:22.518', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('c25021a7792091130b35ab771abe5d1e', NULL, b'0', 0, 1, 'OP_1660202662', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthScopesController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/oauth/scopes', '2021-07-25 15:12:22.512', 0, '2021-07-25 15:35:43.452');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('389eba0d97bf960ed9abd634cad3b2b6', NULL, b'0', 0, 1, 'OP_1600690469', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysRoleController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/role', '2021-07-25 15:12:22.508', 0, '2021-07-25 15:35:43.453');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('03992b0c1746b64413748f2f656fec4b', NULL, b'0', 0, 1, 'OP_1094058159', '分页查询数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysRoleController', 'fa fa-caret-right', 'findByPage', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/role', '2021-07-25 15:12:22.497', 0, '2021-07-25 15:35:43.454');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('c0a1d4ae9b22d82b438843ce53f503c7', NULL, b'0', 0, 1, 'OP_1159367173', '获取权限树', 'API', 'cn.herodotus.eurynome.upms.rest.controller.system.SysAuthorityController', 'fa fa-caret-right', 'findTree', 'eurynome-cloud-upms-ability', 'GET', 'eurynome-cloud-upms-ability', '/authority/tree', '2021-07-25 15:12:22.493', 0, '2021-07-25 15:35:43.454');
INSERT INTO `sys_authority` (`authority_id`, `description`, `is_reserved`, `reversion`, `status`, `authority_code`, `authority_name`, `authority_type`, `class_name`, `menu_class`, `method_name`, `parent_id`, `request_method`, `service_id`, `url`, `create_time`, `ranking`, `update_time`) VALUES ('d8b9d338541fc4488eca720cd4f85a72', NULL, b'0', 0, 1, 'OP_1894211736', '保存或更新数据', 'API', 'cn.herodotus.eurynome.upms.rest.controller.oauth.OauthScopesController', 'fa fa-caret-right', 'saveOrUpdate', 'eurynome-cloud-upms-ability', 'POST', 'eurynome-cloud-upms-ability', '/oauth/scopes', '2021-07-25 15:12:22.495', 0, '2021-07-25 15:35:43.454');

-- ----------------------------
-- Table data for sys_role_authority
-- ----------------------------
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'e639f8973fe07b89bff4e7777a926cbe');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'f8707d73263e9b0095814933753bd7c9');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '96dcf808dd1e151a2f08b03cd8072e0c');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'bcd05c815d94c20ef66df63a36c7151d');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'a7b44a7f4296e7a6d104709050a44541');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'ae8f8686b97f6c2d27e19b936b45f0a5');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'a08e4745161661c8934658ca28d55305');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '1090bdb85eb15b1f85fa09cb3f043fbf');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'c8ebf08d787bde50b652826a5c4d4a47');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '0519f7de094291e4575f5cc1d06b74ba');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '16b70371ecca3ecc4391249c40869445');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '018d6a5042c96c0d0a5ca4d904a7852d');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '2b5095fb1abdcc0bc1c11e76c37f2e85');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'd4b03797cf2e74aa14a093833ad913b5');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '63e24c432d5bf40f45268eda67788405');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '6388310852b64b8fd99940d65627fb1c');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'e3dfcc61063933e0154ae0abde25c92b');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '32b1efdabbd1b337cfe907e6c1491dc9');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '975ca2fb915e871893eb721ad7208ce8');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '471af4c5980008670a94eeceeb6149ff');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '2582c3b2d4afbc1452720a9df3320c27');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'd1e2dd111ae3db633d3d50e2aef817a1');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '9e5acec7fd5da9173ca387447fc9e2d1');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '7fb8655292006bfd40d9f99e92e9f305');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '0a9db6221dcf50d4c9622b2e1a831576');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'c25021a7792091130b35ab771abe5d1e');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '389eba0d97bf960ed9abd634cad3b2b6');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', '03992b0c1746b64413748f2f656fec4b');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'c0a1d4ae9b22d82b438843ce53f503c7');
INSERT INTO `sys_role_authority` (`role_id`, `authority_id`) VALUES ('1', 'd8b9d338541fc4488eca720cd4f85a72');






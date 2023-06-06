/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : kfish

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 06/06/2023 14:47:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `resource_id` bigint(0) NOT NULL COMMENT '主键id',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称名字',
  `component` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端组件路径',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源菜单图标（mdi）',
  `parent_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父ID',
  `type` int(0) NOT NULL COMMENT '资源类型',
  `path` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  `operation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  `resource_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源代码',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_by` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `last_modified_time` datetime(0) NULL DEFAULT NULL COMMENT '最后的更新时间',
  `last_modified_by` bigint(0) NULL DEFAULT NULL COMMENT '最后的更新人',
  `hidden` int(0) NULL DEFAULT 0 COMMENT '是否隐藏',
  PRIMARY KEY (`resource_id`) USING BTREE,
  INDEX `IX_SYS_RESOURCE_RESOURCENAME`(`resource_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1264742816068694014, '首页', 'components/CrudTable', 'mdi-file-tree-outline', NULL, 0, '/', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1264742816068694015, '项目管理', 'view/system/Authority', 'mdi-shield-account-outline', NULL, 0, '/rest/auth', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1264742816068694016, '模板管理', 'components/CrudTable', 'mdi-cogs', NULL, 0, '/rest/dicts', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1264742816068694017, '用户管理', 'components/CrudTable', 'mdi-account', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1264742816068694018, '系统管理', NULL, 'mdi-cogs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1264851760833429505, '角色管理', 'components/CrudTable', 'mdi-account-cowboy-hat', '1264742816068694017', 0, '/rest/roles', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1288721127266394114, '用户列表', 'components/CrudTable', 'mdi-microsoft-xbox-controller-menu', '1264742816068694017', 0, '/rest/users', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1288721239736655873, '资源管理', 'components/CrudTable', 'mdi-semantic-web', '1264742816068694018', 2, '/rest/resources', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1288721499544428545, 'a管理', NULL, 'mdi-cogs', '1264742816068694018', 2, '/rest/scopes', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688647704578, '列表', NULL, NULL, '1264847011765583874', 2, '/rest/users', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688664481793, '查看', NULL, NULL, '1264847011765583874', 2, '/rest/users/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688677064706, '导出', NULL, NULL, '1264847011765583874', 2, '/rest/users/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688693841922, '新增', NULL, NULL, '1264847011765583874', 2, '/rest/users', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688702230529, '编辑', NULL, NULL, '1264847011765583874', 2, '/rest/users', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688714813441, '删除', NULL, NULL, '1264847011765583874', 2, '/rest/users/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688727396353, '批量删除', NULL, NULL, '1264847011765583874', 2, '/rest/users/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324166688739979266, '导入', NULL, NULL, '1264847011765583874', 2, '/rest/users/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172170896654338, '列表', NULL, NULL, '1264851760833429505', 2, '/rest/roles', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172170926014466, '查看', NULL, NULL, '1264851760833429505', 2, '/rest/roles/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172170942791682, '导出', NULL, NULL, '1264851760833429505', 2, '/rest/roles/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172170959568898, '新增', NULL, NULL, '1264851760833429505', 2, '/rest/roles', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172170976346113, '编辑', NULL, NULL, '1264851760833429505', 2, '/rest/roles', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172171001511937, '删除', NULL, NULL, '1264851760833429505', 2, '/rest/roles/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172171009900546, '批量删除', NULL, NULL, '1264851760833429505', 2, '/rest/roles/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172171030872065, '导入', NULL, NULL, '1264851760833429505', 2, '/rest/roles/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244007567361, '列表', NULL, NULL, '1288720100249116674', 2, '/rest/organs', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244032733185, '查看', NULL, NULL, '1288720100249116674', 2, '/rest/organs/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244049510401, '导出', NULL, NULL, '1288720100249116674', 2, '/rest/organs/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244066287618, '新增', NULL, NULL, '1288720100249116674', 2, '/rest/organs', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244078870530, '编辑', NULL, NULL, '1288720100249116674', 2, '/rest/organs', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244095647746, '删除', NULL, NULL, '1288720100249116674', 2, '/rest/organs/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244108230657, '批量删除', NULL, NULL, '1288720100249116674', 2, '/rest/organs/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172244129202177, '导入', NULL, NULL, '1288720100249116674', 2, '/rest/organs/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172263456555010, '加载树', NULL, NULL, '1288720100249116674', 2, '/rest/organs/tree', 'GET', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172263477526529, '加载子节点', NULL, NULL, '1288720100249116674', 2, '/rest/organs/tree/{parentKey}', 'GET', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172263498498050, '移动', NULL, NULL, '1288720100249116674', 2, '/rest/organs/tree/move', 'POST', 'move', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172263515275266, '初始化', NULL, NULL, '1288720100249116674', 2, '/rest/organs/tree/init', 'POST', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172287963873281, '列表', NULL, NULL, '1288721127266394114', 2, '/rest/menus', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172287976456194, '查看', NULL, NULL, '1288721127266394114', 2, '/rest/menus/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172287989039106, '导出', NULL, NULL, '1288721127266394114', 2, '/rest/menus/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172288005816322, '新增', NULL, NULL, '1288721127266394114', 2, '/rest/menus', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172288014204929, '编辑', NULL, NULL, '1288721127266394114', 2, '/rest/menus', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172288026787842, '删除', NULL, NULL, '1288721127266394114', 2, '/rest/menus/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172288043565058, '批量删除', NULL, NULL, '1288721127266394114', 2, '/rest/menus/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172288051953666, '导入', NULL, NULL, '1288721127266394114', 2, '/rest/menus/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172310541811714, '加载树', NULL, NULL, '1288721127266394114', 2, '/rest/menus/tree', 'GET', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172310562783233, '加载子节点', NULL, NULL, '1288721127266394114', 2, '/rest/menus/tree/{parentKey}', 'GET', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172310587949057, '移动', NULL, NULL, '1288721127266394114', 2, '/rest/menus/tree/move', 'POST', 'move', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172310608920578, '初始化', NULL, NULL, '1288721127266394114', 2, '/rest/menus/tree/init', 'POST', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751115698177, '列表', NULL, NULL, '1288721239736655873', 2, '/rest/resources', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751132475394, '查看', NULL, NULL, '1288721239736655873', 2, '/rest/resources/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751153446914, '导出', NULL, NULL, '1288721239736655873', 2, '/rest/resources/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751174418434, '新增', NULL, NULL, '1288721239736655873', 2, '/rest/resources', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751191195650, '编辑', NULL, NULL, '1288721239736655873', 2, '/rest/resources', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751203778561, '删除', NULL, NULL, '1288721239736655873', 2, '/rest/resources/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751233138690, '批量删除', NULL, NULL, '1288721239736655873', 2, '/rest/resources/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172751254110209, '导入', NULL, NULL, '1288721239736655873', 2, '/rest/resources/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761668567042, '列表', NULL, NULL, '1288721499544428545', 2, '/rest/scopes', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761689538561, '查看', NULL, NULL, '1288721499544428545', 2, '/rest/scopes/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761706315778, '导出', NULL, NULL, '1288721499544428545', 2, '/rest/scopes/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761718898689, '新增', NULL, NULL, '1288721499544428545', 2, '/rest/scopes', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761731481601, '编辑', NULL, NULL, '1288721499544428545', 2, '/rest/scopes', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761744064513, '删除', NULL, NULL, '1288721499544428545', 2, '/rest/scopes/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761752453122, '批量删除', NULL, NULL, '1288721499544428545', 2, '/rest/scopes/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172761765036034, '导入', NULL, NULL, '1288721499544428545', 2, '/rest/scopes/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768622723073, '列表', NULL, NULL, '1288721592632811521', 2, '/rest/auth', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768635305985, '查看', NULL, NULL, '1288721592632811521', 2, '/rest/auth/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768647888898, '导出', NULL, NULL, '1288721592632811521', 2, '/rest/auth/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768660471810, '新增', NULL, NULL, '1288721592632811521', 2, '/rest/auth', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768677249026, '编辑', NULL, NULL, '1288721592632811521', 2, '/rest/auth', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768685637634, '删除', NULL, NULL, '1288721592632811521', 2, '/rest/auth/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768698220546, '批量删除', NULL, NULL, '1288721592632811521', 2, '/rest/auth/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1324172768710803458, '导入', NULL, NULL, '1288721592632811521', 2, '/rest/auth/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1347441018663956481, '访问日志', 'components/CrudTable', NULL, '1264742816068694018', 0, '/rest/access/log', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1347441067863142402, '列表', NULL, NULL, '1347441018663956481', 2, '/rest/access/log', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1347441067871531010, '查看', NULL, NULL, '1347441018663956481', 2, '/rest/access/log/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1347441067888308225, '导出', NULL, NULL, '1347441018663956481', 2, '/rest/access/log/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498928685057, '列表', NULL, NULL, '1290121928620699649', 2, '/rest/dicts', 'GET', 'list', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498928685058, '查看', NULL, NULL, '1290121928620699649', 2, '/rest/dicts/{key}', 'GET', 'get', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498932879362, '导出', NULL, NULL, '1290121928620699649', 2, '/rest/dicts/export', 'GET', 'export', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498970628098, '新增', NULL, NULL, '1290121928620699649', 2, '/rest/dicts', 'POST', 'add', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498970628099, '编辑', NULL, NULL, '1290121928620699649', 2, '/rest/dicts', 'POST', 'edit', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498974822401, '删除', NULL, NULL, '1290121928620699649', 2, '/rest/dicts/{key}', 'DELETE', 'delete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498974822402, '批量删除', NULL, NULL, '1290121928620699649', 2, '/rest/dicts/batch_delete', 'POST', 'batchDelete', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (1404462498974822403, '导入', NULL, NULL, '1290121928620699649', 2, '/rest/dicts/import', 'POST', 'import', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for tb_identity
-- ----------------------------
DROP TABLE IF EXISTS `tb_identity`;
CREATE TABLE `tb_identity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `identity_name`(`identity_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_identity
-- ----------------------------
INSERT INTO `tb_identity` VALUES (2, '普通用户');
INSERT INTO `tb_identity` VALUES (0, '系统管理');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户权限',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `last_modified_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新日期',
  `expiration_time` datetime(0) NULL DEFAULT NULL COMMENT '用户有效期',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地',
  PRIMARY KEY (`id`, `login_id`) USING BTREE,
  INDEX `identity`(`identity`) USING BTREE,
  INDEX `name`(`login_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (0, 'admin', '0', '2247486350@qq.com', '15327454472', '123456', NULL, '2023-06-01 12:56:27', '2023-06-02 12:56:31', '2023-07-01 12:56:38', '苏州');

SET FOREIGN_KEY_CHECKS = 1;

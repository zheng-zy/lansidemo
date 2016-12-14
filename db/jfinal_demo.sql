/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.13-log : Database - jfinal_demo
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE = '' */;

/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS */`jfinal_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jfinal_demo`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id`      INT(11)      NOT NULL AUTO_INCREMENT,
  `title`   VARCHAR(200) NOT NULL,
  `content` MEDIUMTEXT   NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 12
  DEFAULT CHARSET = utf8;

/*Data for the table `blog` */

INSERT INTO `blog` (`id`, `title`, `content`) VALUES (1, 'JFinal Demo Title here', 'JFinal Demo Content here');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (2, 'test 1', 'test 1');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (3, 'test 2', 'test 2');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (4, 'test 3', 'test 3');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (5, 'test 4', 'test 4');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (6, '123', '123');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (7, 'sda ', 'asd');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (8, '123', '123');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (9, '123', '123');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (10, '123', '123');
INSERT INTO `blog` (`id`, `title`, `content`) VALUES (11, '123', '123');

/*Table structure for table `tbl_sys_resource` */

DROP TABLE IF EXISTS `tbl_sys_resource`;

CREATE TABLE `tbl_sys_resource` (
  `resource_id`   INT(11)      NOT NULL AUTO_INCREMENT,
  `client_sys_id` VARCHAR(20)  NOT NULL,
  `name`          VARCHAR(100) NOT NULL,
  `type`          VARCHAR(50)  NOT NULL
  COMMENT '资源类型(menu/button)',
  `url`           VARCHAR(200)          DEFAULT NULL
  COMMENT '资源URL',
  `img_path`      VARCHAR(200)          DEFAULT NULL
  COMMENT '资源图标路径',
  `parent_id`     INT(11)      NOT NULL
  COMMENT '父节点ID(没有父节点默认为0)',
  `parent_ids`    VARCHAR(100) NOT NULL
  COMMENT '父节点ID字符串(/分隔)',
  `permission`    VARCHAR(100)          DEFAULT NULL
  COMMENT '权限字符串',
  `available`     VARCHAR(1)   NOT NULL DEFAULT '1'
  COMMENT '是否可用',
  PRIMARY KEY (`resource_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 162
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_sys_resource` */

INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (1, 'cas-admin', '统一权限管理系统', 'system', NULL, 'glyphicon-apple', 0, '0/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (2, 'cas-admin', '系统管理', 'menu', NULL, 'glyphicon-apple', 1, '0/1/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (3, 'cas-admin', '权限管理', 'menu', NULL, 'glyphicon-apple', 1, '0/1/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (4, 'cas-admin', '子系统管理', 'menu', 'html/admin/clientsys/clientsys.html', 'glyphicon-apple', 2, '0/1/2/',
        'admin_clientsys:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (5, 'cas-admin', '新增子系统', 'button', '/admin_clientsys/create', 'glyphicon-apple', 4, '0/1/2/4/',
        'admin_clientsys:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (6, 'cas-admin', '修改子系统', 'button', '/admin_clientsys/update', 'glyphicon-apple', 4, '0/1/2/4/',
        'admin_clientsys:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (7, 'cas-admin', '删除子系统', 'button', '/admin_clientsys/delete', 'glyphicon-apple', 4, '0/1/2/4/',
        'admin_clientsys:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (8, 'cas-admin', '资源管理', 'menu', 'html/admin/resource/resource.html', 'glyphicon-apple', 2, '0/1/2/',
        'admin_resource:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (9, 'cas-admin', '新增资源', 'button', '/admin_resource/create', 'glyphicon-apple', 8, '0/1/2/8/',
        'admin_resource:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (10, 'cas-admin', '修改资源', 'button', '/admin_resource/update', 'glyphicon-apple', 8, '0/1/2/8/',
        'admin_resource:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (11, 'cas-admin', '删除资源', 'button', '/admin_resource/delete', 'glyphicon-apple', 8, '0/1/2/8/',
        'admin_resource:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (12, 'cas-admin', '字典管理', 'menu', 'html/admin/dict/dict.html', NULL, 2, '0/1/2/', 'admin_dict:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (13, 'cas-admin', '新增', 'button', '/admin_dict/create', NULL, 12, '0/1/2/12/', 'admin_dict:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (14, 'cas-admin', '修改', 'button', '/admin_dict/update', NULL, 12, '0/1/2/12/', 'admin_dict:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (15, 'cas-admin', '删除', 'button', '/admin_dict/delete', NULL, 12, '0/1/2/12/', 'admin_dict:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (16, 'cas-admin', '新增明细', 'button', '/admin_dict/create', NULL, 12, '0/1/2/12/', 'admin_dict:create_detail', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (17, 'cas-admin', '修改明细', 'button', '/admin_dict/update_detail', NULL, 12, '0/1/2/12/', 'admin_dict:update_detail',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (18, 'cas-admin', '删除明细', 'button', '/admin_dict/delete_detail', NULL, 12, '0/1/2/12/', 'admin_dict:delete_detail',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (19, 'cas-admin', '用户管理', 'menu', 'html/admin/user/user.html', 'glyphicon-apple', 3, '0/1/3/', 'admin_user:view',
        '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (20, 'cas-admin', '新增用户', 'button', '/admin_user/create', 'glyphicon-apple', 19, '0/1/3/19/', 'admin_user:create',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (21, 'cas-admin', '修改用户', 'button', '/admin_user/update', 'glyphicon-apple', 19, '0/1/3/19/', 'admin_user:update',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (22, 'cas-admin', '删除用户', 'button', '/admin_user/delete', 'glyphicon-apple', 19, '0/1/3/19/', 'admin_user:delete',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (23, 'cas-admin', '查看授权', 'button', '/admin_user/detail', 'glyphicon-apple', 19, '0/1/3/19/', 'admin_user:detail',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (24, 'cas-admin', '重置密码', 'button', '/admin_user/reset_pw', NULL, 19, '0/1/3/19/', 'admin_user:reset_pw', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (25, 'cas-admin', '角色管理', 'menu', 'html/admin/role/role.html', 'glyphicon-apple', 3, '0/1/3/', 'admin_role:view',
        '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (26, 'cas-admin', '新增角色', 'button', '/admin_role/create', 'glyphicon-apple', 25, '0/1/3/25/', 'admin_role:create',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (27, 'cas-admin', '修改角色', 'button', '/admin_role/update', 'glyphicon-apple', 25, '0/1/3/25/', 'admin_role:update',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (28, 'cas-admin', '删除角色', 'button', '/admin_role/delete', 'glyphicon-apple', 25, '0/1/3/25/', 'admin_role:delete',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (29, 'cas-admin', '机构管理', 'menu', 'html/admin/reginfo/reginfo.html', 'glyphicon-apple', 3, '0/1/3/',
        'admin_reginfo:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (30, 'cas-admin', '新增机构', 'button', '/admin_reginfo/create', 'glyphicon-apple', 29, '0/1/3/29/',
        'admin_reginfo:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (31, 'cas-admin', '修改机构', 'button', '/admin_reginfo/update', 'glyphicon-apple', 29, '0/1/3/29/',
        'admin_reginfo:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (32, 'cas-admin', '删除机构', 'button', '/admin_reginfo/delete', 'glyphicon-apple', 29, '0/1/3/29/',
        'admin_reginfo:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (33, 'itms', '业务管理系统', 'system', NULL, 'glyphicon-apple', 0, '0/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (34, 'itms', '基础数据', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (35, 'itms', '厂商管理', 'menu', 'html/factory/factory.html', 'glyphicon-apple', 34, '0/33/34/', 'factory:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (36, 'itms', '新增', 'button', '/factory/create', 'glyphicon-apple', 35, '0/33/34/35/', 'factory:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (37, 'itms', '修改', 'button', '/factory/update', 'glyphicon-apple', 35, '0/33/34/35/', 'factory:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (38, 'itms', '删除', 'button', '/factory/delete', 'glyphicon-apple', 35, '0/33/34/35/', 'factory:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (39, 'itms', '型号管理', 'menu', 'html/modelinfo/modelinfo.html', 'glyphicon-apple', 34, '0/33/34/', 'modelinfo:view',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (40, 'itms', '新增', 'button', '/modelinfo/create', 'glyphicon-apple', 39, '0/33/34/39/', 'modelinfo:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (41, 'itms', '修改', 'button', '/modelinfo/update', 'glyphicon-apple', 39, '0/33/34/39/', 'modelinfo:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (42, 'itms', '删除', 'button', '/modelinfo/delete', 'glyphicon-apple', 39, '0/33/34/39/', 'modelinfo:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (43, 'itms', '维护人员', 'menu', 'html/mainman/mainman.html', 'glyphicon-apple', 34, '0/33/34/', 'mainman:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (44, 'itms', '新增', 'button', '/mainman/create', 'glyphicon-apple', 43, '0/33/34/43/', 'mainman:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (45, 'itms', '修改', 'button', '/mainman/update', 'glyphicon-apple', 43, '0/33/34/43/', 'mainman:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (46, 'itms', '删除', 'button', '/mainman/delete', 'glyphicon-apple', 43, '0/33/34/43/', 'mainman:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (47, 'itms', '耗材管理', 'menu', 'html/supp/supp.html', 'glyphicon-apple', 34, '0/33/34/', 'supp:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (48, 'itms', '新增', 'button', '/supp/create', 'glyphicon-apple', 47, '0/33/34/47/', 'supp:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (49, 'itms', '修改', 'button', '/supp/update', 'glyphicon-apple', 47, '0/33/34/47/', 'supp:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (50, 'itms', '删除', 'button', '/supp/delete', 'glyphicon-apple', 47, '0/33/34/47/', 'supp:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (51, 'itms', '商户信息', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (52, 'itms', '商户资料', 'menu', 'html/merch/merch.html', 'glyphicon-apple', 51, '0/33/51/', 'merch:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (53, 'itms', '新增商户', 'button', '/merch/create', 'glyphicon-apple', 52, '0/33/51/52/', 'merch:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (54, 'itms', '修改商户', 'button', '/merch/update', 'glyphicon-apple', 52, '0/33/51/52/', 'merch:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (55, 'itms', '删除商户', 'button', '/merch/delete', 'glyphicon-apple', 52, '0/33/51/52/', 'merch:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (56, 'itms', '终端信息', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (57, 'itms', '终端资料', 'menu', 'html/apos/apos.html', 'glyphicon-apple', 56, '0/33/56/', 'apos:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (58, 'itms', '新增', 'button', '/apos/create', 'glyphicon-apple', 57, '0/33/56/57/', 'apos:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (59, 'itms', '修改', 'button', '/apos/update', 'glyphicon-apple', 57, '0/33/56/57/', 'apos:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (60, 'itms', '删除', 'button', '/apos/delete', 'glyphicon-apple', 57, '0/33/56/57/', 'apos:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (70, 'itms', '终端异常', 'menu', 'html/aposdevinfo/aposdevinfo.html', 'glyphicon-apple', 56, '0/33/56/',
        'aposdevinfo:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (71, 'itms', '终端换机', 'menu', 'html/aposexchange/aposexchange.html', 'glyphicon-apple', 56, '0/33/56/',
        'aposexchange:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (72, 'itms', '应用管理', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (73, 'itms', '应用信息', 'menu', 'html/developapp/developapp.html', 'glyphicon-apple', 72, '0/33/72/', 'developapp:view',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (74, 'itms', '新增', 'button', '/developapp/create', 'glyphicon-apple', 73, '0/33/72/73/', 'developapp:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (75, 'itms', '修改', 'button', '/developapp/update', 'glyphicon-apple', 73, '0/33/72/73/', 'developapp:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (76, 'itms', '删除', 'button', '/developapp/delete', 'glyphicon-apple', 73, '0/33/72/73/', 'developapp:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (77, 'itms', '应用文件', 'menu', 'html/appissue/appissue.html', 'glyphicon-apple', 72, '0/33/72/', 'appissue:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (78, 'itms', '新增', 'button', '/appissue/create', 'glyphicon-apple', 77, '0/33/72/77/', 'appissue:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (79, 'itms', '修改', 'button', '/appissue/update', 'glyphicon-apple', 77, '0/33/72/77/', 'appissue:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (80, 'itms', '删除', 'button', '/appissue/delete', 'glyphicon-apple', 77, '0/33/72/77/', 'appissue:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (81, 'itms', '应用上架', 'menu', 'html/appaudit/appaudit.html', 'glyphicon-apple', 72, '0/33/72/', 'appaudit:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (82, 'itms', '参数管理', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (83, 'itms', '参数信息', 'menu', 'html/paramitem/paramitem.html', 'glyphicon-apple', 82, '0/33/82/', 'paramitem:view',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (84, 'itms', '新增', 'button', '/paramitem/create', 'glyphicon-apple', 83, '0/33/82/83/', 'paramitem:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (85, 'itms', '修改', 'button', '/paramitem/update', 'glyphicon-apple', 83, '0/33/82/83/', 'paramitem:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (86, 'itms', '删除', 'button', '/paramitem/delete', 'glyphicon-apple', 83, '0/33/82/83/', 'paramitem:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (87, 'itms', '参数模板', 'menu', 'html/parammodel/parammodel.html', 'glyphicon-apple', 82, '0/33/82/', 'parammodel:view',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (88, 'itms', '新增', 'button', '/parammodel/create', 'glyphicon-apple', 87, '0/33/82/87/', 'parammodel:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (89, 'itms', '修改', 'button', '/parammodel/update', 'glyphicon-apple', 87, '0/33/82/87/', 'parammodel:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (90, 'itms', '删除', 'button', '/parammodel/delete', 'glyphicon-apple', 87, '0/33/82/87/', 'parammodel:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (91, 'itms', '广告管理', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (92, 'itms', '广告资源', 'menu', 'html/ad/ad.html', 'glyphicon-apple', 91, '0/33/91/', 'ad:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (93, 'itms', '新增', 'button', '/ad/create', 'glyphicon-apple', 92, '0/33/91/92/', 'ad:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (94, 'itms', '修改', 'button', '/ad/update', 'glyphicon-apple', 92, '0/33/91/92/', 'ad:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (95, 'itms', '删除', 'button', '/ad/delete', 'glyphicon-apple', 92, '0/33/91/92/', 'ad:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (96, 'itms', '广告审核', 'button', '/ad/adcheck', NULL, 92, '0/33/91/92/', 'ad:adcheck', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (97, 'itms', '广告分配', 'menu', 'html/adapos/adapos.html', 'glyphicon-apple', 91, '0/33/91/', 'adapos:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (98, 'itms', '新增', 'button', '/adapos/create', 'glyphicon-apple', 97, '0/33/91/97/', 'adapos:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (99, 'itms', '删除', 'button', '/adapos/delete', 'glyphicon-apple', 97, '0/33/91/97/', 'adapos:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (100, 'itms', '指令管理', 'menu', NULL, NULL, 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (105, 'itms', '指令信息', 'menu', 'html/order/order.html', NULL, 100, '0/33/100/', 'order:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (106, 'itms', '新增', 'button', '/order/create', NULL, 105, '0/33/100/105/', 'order:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (107, 'itms', '修改', 'button', '/order/update', NULL, 105, '0/33/100/105/', 'order:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (108, 'itms', '删除', 'button', '/order/delete', NULL, 105, '0/33/100/105/', 'order:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (109, 'itms', '指令模板', 'menu', 'html/ordermodel/ordermodel.html', NULL, 100, '0/33/100/', 'ordermodel:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (110, 'itms', '新增', 'button', '/ordermodel/create', NULL, 109, '0/33/100/109/', 'ordermodel:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (111, 'itms', '修改', 'button', '/ordermodel/update', NULL, 109, '0/33/100/109/', 'ordermodel:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (112, 'itms', '删除', 'button', '/ordermodel/delete', NULL, 109, '0/33/100/109/', 'ordermodel:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (113, 'itms', '指令分配', 'menu', 'html/orderapos/orderapos.html', NULL, 100, '0/33/100/', 'orderapos:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (114, 'itms', '新增', 'button', '/orderapos/create', NULL, 113, '0/33/100/113/', 'orderapos:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (115, 'itms', '删除', 'button', '/orderapos/delete', NULL, 113, '0/33/100/113/', 'orderapos:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (116, 'itms', '计划任务', 'menu', NULL, 'glyphicon-apple', 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (117, 'itms', '计划定义', 'menu', 'html/updateplan/updateplan.html', 'glyphicon-apple', 116, '0/33/116/',
        'updateplan:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (118, 'itms', '新增', 'button', '/updateplan/create', 'glyphicon-apple', 117, '0/33/116/117/', 'updateplan:create',
        '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (119, 'itms', '修改', 'button', '/updateplan/update', 'glyphicon-apple', 117, '0/33/116/117/', 'updateplan:update',
        '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (120, 'itms', '删除', 'button', '/updateplan/delete', 'glyphicon-apple', 117, '0/33/116/117/', 'updateplan:delete',
        '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (121, 'itms', '任务分配', 'menu', 'html/planapos/planapos.html', 'glyphicon-apple', 116, '0/33/116/', 'planapos:view',
   '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (122, 'itms', '新增', 'button', '/planapos/create', 'glyphicon-apple', 121, '0/33/116/121/', 'planapos:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (123, 'itms', '修改', 'button', '/planapos/update', 'glyphicon-apple', 121, '0/33/116/121/', 'planapos:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (124, 'itms', '删除', 'button', '/planapos/delete', 'glyphicon-apple', 121, '0/33/116/121/', 'planapos:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (125, 'store', '应用市场', 'system', NULL, NULL, 0, '0/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (126, 'store', '应用管理', 'menu', NULL, NULL, 125, '0/125/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES
  (127, 'store', '应用信息', 'menu', 'html/developapp/developapp.html', NULL, 126, '0/125/126/', 'developapp:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (128, 'store', '新增', 'button', '/developapp/create', NULL, 127, '0/125/126/127/', 'developapp:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (129, 'store', '修改', 'button', '/developapp/update', NULL, 127, '0/125/126/127/', 'developapp:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (130, 'store', '删除', 'button', '/developapp/delete', NULL, 127, '0/125/126/127/', 'developapp:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (131, 'store', '应用文件', 'menu', 'html/appissue/appissue.html', NULL, 126, '0/125/126/', 'appissue:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (132, 'store', '新增', 'button', '/appissue/create', NULL, 131, '0/125/126/131/', 'appissue:create', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (133, 'store', '修改', 'button', '/appissue/update', NULL, 131, '0/125/126/131/', 'appissue:update', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (134, 'store', '删除', 'button', '/appissue/delete', NULL, 131, '0/125/126/131/', 'appissue:delete', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (135, 'store', '应用上架', 'menu', 'html/appaudit/appaudit.html', NULL, 126, '0/125/126/', 'appaudit:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (137, 'itms', '监控管理', 'menu', NULL, NULL, 33, '0/33/', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (138, 'itms', '位置监控', 'menu', 'html/position/position.html', NULL, 137, '0/33/137/', 'position:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (139, 'itms', '流量监控', 'menu', 'html/aposdata/aposdata.html', NULL, 137, '0/33/137/', 'aposdata:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (146, 'itms', '日志管理', 'menu', 'html/logfile/logfile.html', NULL, 137, '0/33/137/', 'logfile:view', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (156, 'itms', '导出模版', 'button', '/merch/export', NULL, 52, '0/33/51/52/', 'merch:export', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (157, 'itms', '导入', 'button', '/merch/import', NULL, 52, '0/33/51/52/', 'merch:import', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (158, 'ROOT', '资源', 'ROOT', NULL, 'glyphicon-apple', -1, ' ', NULL, '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (160, 'itms', '导出模版', 'button', '/apos/export', NULL, 57, '0/33/56/57/', 'apos:export', '1');
INSERT INTO `tbl_sys_resource` (`resource_id`, `client_sys_id`, `name`, `type`, `url`, `img_path`, `parent_id`, `parent_ids`, `permission`, `available`)
VALUES (161, 'itms', '导入', 'button', '/apos/import', NULL, 57, '0/33/56/57/', 'apos:import', '1');

/*Table structure for table `tbl_sys_role` */

DROP TABLE IF EXISTS `tbl_sys_role`;

CREATE TABLE `tbl_sys_role` (
  `role_id`       INT(11)      NOT NULL AUTO_INCREMENT,
  `client_sys_id` VARCHAR(20)  NOT NULL,
  `role_name`     VARCHAR(100) NOT NULL,
  `description`   VARCHAR(200)          DEFAULT NULL,
  `available`     VARCHAR(1)   NOT NULL DEFAULT '1',
  `reg_id`        VARCHAR(10)  NOT NULL
  COMMENT '角色所属机构（默认为操作人员所属机构',
  PRIMARY KEY (`role_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_sys_role` */

INSERT INTO `tbl_sys_role` (`role_id`, `client_sys_id`, `role_name`, `description`, `available`, `reg_id`)
VALUES (1, 'cas-admin', '权限系统管理员', NULL, '1', '999999');
INSERT INTO `tbl_sys_role` (`role_id`, `client_sys_id`, `role_name`, `description`, `available`, `reg_id`)
VALUES (2, 'itms', '业务管理系统管理员', NULL, '1', '999999');
INSERT INTO `tbl_sys_role` (`role_id`, `client_sys_id`, `role_name`, `description`, `available`, `reg_id`)
VALUES (3, 'store', '应用市场管理员', NULL, '1', '999999');

/*Table structure for table `tbl_sys_role_resource` */

DROP TABLE IF EXISTS `tbl_sys_role_resource`;

CREATE TABLE `tbl_sys_role_resource` (
  `role_resource_id` INT(11) NOT NULL AUTO_INCREMENT,
  `role_id`          INT(11) NOT NULL,
  `resource_id`      INT(11) NOT NULL,
  PRIMARY KEY (`role_resource_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 163
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_sys_role_resource` */

INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (1, 1, 0);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (2, 1, 1);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (3, 1, 2);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (4, 1, 3);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (5, 1, 4);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (6, 1, 5);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (7, 1, 6);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (8, 1, 7);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (9, 1, 8);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (10, 1, 9);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (11, 1, 10);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (12, 1, 11);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (13, 1, 12);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (14, 1, 13);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (15, 1, 14);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (16, 1, 15);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (17, 1, 16);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (18, 1, 17);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (19, 1, 18);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (20, 1, 19);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (21, 1, 20);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (22, 1, 21);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (23, 1, 22);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (24, 1, 23);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (25, 1, 24);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (26, 1, 25);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (27, 1, 26);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (28, 1, 27);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (29, 1, 28);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (30, 1, 29);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (31, 1, 30);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (32, 1, 31);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (33, 1, 32);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (34, 2, 33);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (35, 2, 34);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (36, 2, 35);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (37, 2, 36);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (38, 2, 37);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (39, 2, 38);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (40, 2, 39);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (41, 2, 40);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (42, 2, 41);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (43, 2, 42);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (44, 2, 43);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (45, 2, 44);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (46, 2, 45);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (47, 2, 46);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (48, 2, 47);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (49, 2, 48);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (50, 2, 49);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (51, 2, 50);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (52, 2, 51);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (53, 2, 52);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (54, 2, 53);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (55, 2, 54);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (56, 2, 55);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (57, 2, 56);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (58, 2, 57);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (59, 2, 58);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (60, 2, 59);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (61, 2, 60);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (71, 2, 70);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (72, 2, 71);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (73, 2, 72);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (74, 2, 73);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (75, 2, 74);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (76, 2, 75);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (77, 2, 76);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (78, 2, 77);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (79, 2, 78);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (80, 2, 79);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (81, 2, 80);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (82, 2, 81);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (83, 2, 82);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (84, 2, 83);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (85, 2, 84);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (86, 2, 85);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (87, 2, 86);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (88, 2, 87);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (89, 2, 88);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (90, 2, 89);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (91, 2, 90);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (92, 2, 91);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (93, 2, 92);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (94, 2, 93);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (95, 2, 94);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (96, 2, 95);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (97, 2, 96);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (98, 2, 97);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (99, 2, 98);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (100, 2, 99);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (101, 2, 100);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (106, 2, 105);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (107, 2, 106);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (108, 2, 107);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (109, 2, 108);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (110, 2, 109);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (111, 2, 110);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (112, 2, 111);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (113, 2, 112);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (114, 2, 113);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (115, 2, 114);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (116, 2, 115);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (117, 2, 116);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (118, 2, 117);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (119, 2, 118);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (120, 2, 119);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (121, 2, 120);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (122, 2, 121);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (123, 2, 122);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (124, 2, 123);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (125, 2, 124);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (126, 3, 125);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (127, 3, 126);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (128, 3, 127);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (129, 3, 128);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (130, 3, 129);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (131, 3, 130);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (132, 3, 131);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (133, 3, 132);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (134, 3, 133);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (135, 3, 134);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (136, 3, 135);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (137, 2, 137);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (138, 2, 138);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (139, 2, 139);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (147, 2, 146);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (157, 2, 156);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (158, 2, 157);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (161, 2, 160);
INSERT INTO `tbl_sys_role_resource` (`role_resource_id`, `role_id`, `resource_id`) VALUES (162, 2, 161);

/*Table structure for table `tbl_sys_user` */

DROP TABLE IF EXISTS `tbl_sys_user`;

CREATE TABLE `tbl_sys_user` (
  `user_id`                  INT(11)      NOT NULL AUTO_INCREMENT,
  `client_sys_id`            VARCHAR(20)  NOT NULL,
  `reg_id`                   VARCHAR(10)  NOT NULL
  COMMENT '用户所属机构',
  `username`                 VARCHAR(20)  NOT NULL,
  `password`                 VARCHAR(100) NOT NULL,
  `name`                     VARCHAR(50)           DEFAULT NULL,
  `salt`                     VARCHAR(100)          DEFAULT NULL,
  `locked`                   VARCHAR(1)   NOT NULL,
  `pwd_changedate`           VARCHAR(10)           DEFAULT NULL
  COMMENT '密码修改日期（用于密码过期验证,提示修改密码等)',
  `login_limit_date`         VARCHAR(10)           DEFAULT NULL
  COMMENT '下次可登录日期',
  `login_limit_count_remain` VARCHAR(1)            DEFAULT NULL
  COMMENT '剩余登录次数',
  `last_login_time`          VARCHAR(19)           DEFAULT NULL
  COMMENT '上次登录时间',
  `email`                    VARCHAR(50)           DEFAULT NULL,
  `mobile`                   VARCHAR(20)           DEFAULT NULL,
  PRIMARY KEY (`user_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_sys_user` */

INSERT INTO `tbl_sys_user` (`user_id`, `client_sys_id`, `reg_id`, `username`, `password`, `name`, `salt`, `locked`, `pwd_changedate`, `login_limit_date`, `login_limit_count_remain`, `last_login_time`, `email`, `mobile`)
VALUES
  (1, 'cas-admin', '999999', '999999', '52c69e3a57331081823331c4e69d3f2e', '超级系统管理员', NULL, '0', NULL, NULL, NULL, NULL,
   NULL, NULL);
INSERT INTO `tbl_sys_user` (`user_id`, `client_sys_id`, `reg_id`, `username`, `password`, `name`, `salt`, `locked`, `pwd_changedate`, `login_limit_date`, `login_limit_count_remain`, `last_login_time`, `email`, `mobile`)
VALUES (2, 'itms', '999999', '999999', '52c69e3a57331081823331c4e69d3f2e', '超级系统管理员', NULL, '0', NULL, NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO `tbl_sys_user` (`user_id`, `client_sys_id`, `reg_id`, `username`, `password`, `name`, `salt`, `locked`, `pwd_changedate`, `login_limit_date`, `login_limit_count_remain`, `last_login_time`, `email`, `mobile`)
VALUES
  (3, 'store', '999999', '999999', '52c69e3a57331081823331c4e69d3f2e', '超级系统管理员', NULL, '0', NULL, NULL, NULL, NULL,
   NULL, NULL);

/*Table structure for table `tbl_sys_user_app_role` */

DROP TABLE IF EXISTS `tbl_sys_user_app_role`;

CREATE TABLE `tbl_sys_user_app_role` (
  `user_app_roles_id` INT(11)     NOT NULL AUTO_INCREMENT,
  `client_sys_id`     VARCHAR(20) NOT NULL,
  `username`          VARCHAR(20) NOT NULL,
  `role_id`           INT(11)     NOT NULL,
  PRIMARY KEY (`user_app_roles_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_sys_user_app_role` */

INSERT INTO `tbl_sys_user_app_role` (`user_app_roles_id`, `client_sys_id`, `username`, `role_id`)
VALUES (1, 'cas-admin', '999999', 1);
INSERT INTO `tbl_sys_user_app_role` (`user_app_roles_id`, `client_sys_id`, `username`, `role_id`)
VALUES (3, 'itms', '999999', 2);
INSERT INTO `tbl_sys_user_app_role` (`user_app_roles_id`, `client_sys_id`, `username`, `role_id`)
VALUES (5, 'store', '999999', 3);

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.14-log : Database - lansi_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE = '' */;

/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS */`lansi_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lansi_demo`;

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

INSERT INTO `blog` (`id`, `title`, `content`)
VALUES (3, 'test 2', 'test 2'), (4, 'test 3', 'test 3'), (5, 'test 4', 'test 4'), (6, '123', '123'), (7, 'sda ', 'asd'),
  (8, '123', '123'), (9, '123', '123'), (10, '123', '123'), (11, '123', '123');

/*Table structure for table `tbl_blog` */

DROP TABLE IF EXISTS `tbl_blog`;

CREATE TABLE `tbl_blog` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `title`       VARCHAR(50) NOT NULL,
  `content`     MEDIUMTEXT,
  `create_time` TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desc`        VARCHAR(100)         DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_blog` */

/*Table structure for table `tbl_permission` */

DROP TABLE IF EXISTS `tbl_permission`;

CREATE TABLE `tbl_permission` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50) NOT NULL,
  `type`        INT(1)      NOT NULL
  COMMENT '1:system,2:menu,3:button',
  `url`         VARCHAR(100)         DEFAULT NULL,
  `icon_cls`    VARCHAR(50)          DEFAULT NULL,
  `parent_id`   INT(11)     NOT NULL DEFAULT '0'
  COMMENT '父节点ID(没有父节点默认为0)',
  `parent_ids`  VARCHAR(50) NOT NULL
  COMMENT '父节点ID字符串(/分隔)',
  `permission`  VARCHAR(100)         DEFAULT NULL,
  `status`      INT(1)               DEFAULT '1'
  COMMENT '0不可用1可用-1删除',
  `create_time` TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desc`        VARCHAR(100)         DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 21
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_permission` */

INSERT INTO `tbl_permission` (`id`, `name`, `type`, `url`, `icon_cls`, `parent_id`, `parent_ids`, `permission`, `status`, `create_time`, `update_time`, `desc`)
VALUES (1, '统一权限管理系统', 1, '', NULL, 0, '0/', '', 1, '2016-12-28 15:48:17', '0000-00-00 00:00:00', NULL),
  (2, '角色管理', 2, '/role/view', '', 1, '0/1/', 'role:view', 1, '2016-12-28 15:52:42', '0000-00-00 00:00:00', ''),
  (19, '添加', 3, '/role/create', NULL, 2, '0/1/2/', 'role:create', 1, '2016-12-29 16:55:47', '0000-00-00 00:00:00',
   '角色添加'),
  (20, '删除', 3, '/role/delete', NULL, 2, '0/1/2/', 'role:delete', 1, '2016-12-30 16:11:43', '0000-00-00 00:00:00',
   '角色删除');

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50) NOT NULL,
  `status`      INT(1)      NOT NULL DEFAULT '1'
  COMMENT '0不可用1可用',
  `create_time` TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desc`        VARCHAR(100)         DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_role` */

INSERT INTO `tbl_role` (`id`, `name`, `status`, `create_time`, `update_time`, `desc`)
VALUES (1, '管理员', 1, '2016-12-28 14:22:09', '0000-00-00 00:00:00', '管理员');

/*Table structure for table `tbl_role_permission` */

DROP TABLE IF EXISTS `tbl_role_permission`;

CREATE TABLE `tbl_role_permission` (
  `id`            INT(11) NOT NULL AUTO_INCREMENT,
  `role_id`       INT(11) NOT NULL,
  `permission_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_role_permission` */

INSERT INTO `tbl_role_permission` (`id`, `role_id`, `permission_id`) VALUES (1, 1, 2), (2, 1, 19);

/*Table structure for table `tbl_tag` */

DROP TABLE IF EXISTS `tbl_tag`;

CREATE TABLE `tbl_tag` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `tag`         VARCHAR(20) NOT NULL
  COMMENT '标签',
  `create_time` TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desc`        VARCHAR(100)         DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_tag` */

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `login_name`  VARCHAR(50) NOT NULL,
  `name`        VARCHAR(50) NOT NULL DEFAULT '',
  `password`    VARCHAR(50) NOT NULL,
  `status`      INT(1)               DEFAULT '0'
  COMMENT '0不可用1可用2锁定-1删除',
  `create_time` TIMESTAMP   NULL     DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP   NULL     DEFAULT NULL,
  `desc`        VARCHAR(100)         DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 26
  DEFAULT CHARSET = utf8;

/*Data for the table `tbl_user` */

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80021
Source Host           : localhost:3306
Source Database       : db_music

Target Server Type    : MYSQL
Target Server Version : 80021
File Encoding         : 65001

Date: 2020-10-16 16:20:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can view permission', '1', 'view_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can view group', '2', 'view_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can add log entry', '3', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('10', 'Can change log entry', '3', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete log entry', '3', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('12', 'Can view log entry', '3', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 歌曲分类', '6', 'add_label');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 歌曲分类', '6', 'change_label');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 歌曲分类', '6', 'delete_label');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 歌曲分类', '6', 'view_label');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 歌曲信息', '7', 'add_song');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 歌曲信息', '7', 'change_song');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 歌曲信息', '7', 'delete_song');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 歌曲信息', '7', 'view_song');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 歌曲动态', '8', 'add_dynamic');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 歌曲动态', '8', 'change_dynamic');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 歌曲动态', '8', 'delete_dynamic');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 歌曲动态', '8', 'view_dynamic');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 歌曲评论', '9', 'add_comment');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 歌曲评论', '9', 'change_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 歌曲评论', '9', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 歌曲评论', '9', 'view_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can add user', '10', 'add_myuser');
INSERT INTO `auth_permission` VALUES ('38', 'Can change user', '10', 'change_myuser');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete user', '10', 'delete_myuser');
INSERT INTO `auth_permission` VALUES ('40', 'Can view user', '10', 'view_myuser');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-10-16 07:36:32.751352', '1', '民谣', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-10-16 07:37:24.857751', '1', '匆匆', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-10-16 07:38:22.563793', '1', '匆匆', '2', '[{\"changed\": {\"fields\": [\"\\u6b4c\\u8bcd\", \"\\u6b4c\\u66f2\\u6587\\u4ef6\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-10-16 07:38:46.156271', '1', '匆匆', '2', '[{\"changed\": {\"fields\": [\"\\u6b4c\\u8bcd\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-10-16 07:39:27.772739', '1', '匆匆', '2', '[{\"changed\": {\"fields\": [\"\\u6b4c\\u66f2\\u6587\\u4ef6\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-10-16 07:41:19.391898', '1', '匆匆', '2', '[{\"changed\": {\"fields\": [\"\\u65f6\\u957f\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-10-16 07:41:41.584833', '1', '匆匆', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-10-16 07:47:11.809168', '2', '爱情', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-10-16 07:47:14.425770', '2', '会长大的幸福', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-10-16 07:50:08.388529', '3', '失恋', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-10-16 07:50:09.706753', '3', '演员', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-10-16 07:53:03.705843', '4', '体面', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2020-10-16 08:11:30.904383', '5', '好心分手', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2020-10-16 08:13:55.049201', '6', '爱过了 又怎样', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2020-10-16 08:15:02.837936', '7', '就是这样', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2020-10-16 08:15:21.980746', '4', 'Dynamic object (4)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2020-10-16 08:15:34.786812', '1', 'Dynamic object (1)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2020-10-16 08:15:51.475380', '2', 'Dynamic object (2)', '2', '[{\"changed\": {\"fields\": [\"\\u64ad\\u653e\\u6b21\\u6570\", \"\\u641c\\u7d22\\u6b21\\u6570\", \"\\u4e0b\\u8f7d\\u6b21\\u6570\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2020-10-16 08:16:03.325100', '3', 'Dynamic object (3)', '2', '[{\"changed\": {\"fields\": [\"\\u64ad\\u653e\\u6b21\\u6570\", \"\\u641c\\u7d22\\u6b21\\u6570\", \"\\u4e0b\\u8f7d\\u6b21\\u6570\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2020-10-16 08:16:36.244879', '5', 'Dynamic object (5)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2020-10-16 08:16:44.180538', '6', 'Dynamic object (6)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2020-10-16 08:16:55.608897', '7', 'Dynamic object (7)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2020-10-16 08:17:03.575930', '8', 'Dynamic object (8)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2020-10-16 08:17:42.687213', '1', 'Comment object (1)', '1', '[{\"added\": {}}]', '9', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('3', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('1', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'index', 'comment');
INSERT INTO `django_content_type` VALUES ('8', 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES ('6', 'index', 'label');
INSERT INTO `django_content_type` VALUES ('7', 'index', 'song');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('10', 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-10-16 07:10:08.503393');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-10-16 07:10:08.597236');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-10-16 07:10:08.680580');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-10-16 07:10:08.949831');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-10-16 07:10:08.957837');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-10-16 07:10:08.964819');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-10-16 07:10:08.972768');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-10-16 07:10:08.980748');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-10-16 07:10:08.988726');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-10-16 07:10:08.996705');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-10-16 07:10:09.004712');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-10-16 07:10:09.071505');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-10-16 07:10:09.080481');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0012_alter_user_first_name_max_length', '2020-10-16 07:10:09.087462');
INSERT INTO `django_migrations` VALUES ('15', 'user', '0001_initial', '2020-10-16 07:10:09.194177');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0001_initial', '2020-10-16 07:10:09.592111');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0002_logentry_remove_auto_add', '2020-10-16 07:10:09.715810');
INSERT INTO `django_migrations` VALUES ('18', 'admin', '0003_logentry_add_action_flag_choices', '2020-10-16 07:10:09.724786');
INSERT INTO `django_migrations` VALUES ('19', 'index', '0001_initial', '2020-10-16 07:10:09.847429');
INSERT INTO `django_migrations` VALUES ('20', 'sessions', '0001_initial', '2020-10-16 07:10:10.087339');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('t287s479miqvcfuer8q8l6plcpt4ghyk', '.eJxVjcFugzAMht_F5wo5QBLCsfc-wZiQSRzISsNEyGGq-u5bKTv0Yln-vv_3Hb5n-unnkDZoP-6Qljj2wUErTq89hTjyCi10WemauyxLKbpstCzhUCLdeBdkheo1_9EWdiRbFPD4PEFPeZv6nHjdn4CAt9tA9srxCdwXxXEp7BK3NQzFUykOmorL4ng-H-5bwURp-kubmsh6J0tDFsk3nrVu0BihbKUbFqbyg3PISpQ1CSY7OETLQjJKROXh8QtLz1pQ:1kTKwX:UJv-4_1_a-MoVpgZoT_CG8-8w0ioBnLMv0GsDltmtDs', '2020-10-30 08:18:29.642602');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `comment_date` varchar(50) NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment_song_id_e60ecaa2_fk_index_song_song_id` (`song_id`),
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES ('1', '超爱这首歌', 'wjh', '2020-10-16', '1');

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic` (
  `dynamic_id` int NOT NULL AUTO_INCREMENT,
  `dynamic_plays` int NOT NULL,
  `dynamic_search` int NOT NULL,
  `dynamic_down` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`dynamic_id`),
  KEY `index_dynamic_song_id_21bb9711_fk_index_song_song_id` (`song_id`),
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES ('2', '23', '34', '2', '2');
INSERT INTO `index_dynamic` VALUES ('3', '12', '12', '22', '3');
INSERT INTO `index_dynamic` VALUES ('4', '25', '12', '34', '1');
INSERT INTO `index_dynamic` VALUES ('5', '11', '32', '2', '4');
INSERT INTO `index_dynamic` VALUES ('6', '22', '11', '21', '5');
INSERT INTO `index_dynamic` VALUES ('7', '3', '4', '3', '6');
INSERT INTO `index_dynamic` VALUES ('8', '6', '1', '2', '7');

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label` (
  `label_id` int NOT NULL AUTO_INCREMENT,
  `label_name` varchar(10) NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES ('1', '民谣');
INSERT INTO `index_label` VALUES ('2', '爱情');
INSERT INTO `index_label` VALUES ('3', '失恋');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) NOT NULL,
  `song_singer` varchar(50) NOT NULL,
  `song_time` varchar(10) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `song_languages` varchar(20) NOT NULL,
  `song_type` varchar(20) NOT NULL,
  `song_release` varchar(20) NOT NULL,
  `song_img` varchar(20) NOT NULL,
  `song_lyrics` varchar(50) NOT NULL,
  `song_file` varchar(50) NOT NULL,
  `label_id` int NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `index_song_label_id_9b9b68ed_fk_index_label_label_id` (`label_id`),
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES ('1', '匆匆', '李剑青', '5:01', '仍是异乡人', '华语', '民谣', '2016', '14.jpg', '匆匆.txt', '匆匆.mp3', '1');
INSERT INTO `index_song` VALUES ('2', '会长大的幸福', 'Tank', '04:32', '第三回合', '华语', '爱情', '2014', '3.jpg', '会长大的幸福.txt', '会长大的幸福.m4a', '2');
INSERT INTO `index_song` VALUES ('3', '演员', '薛之谦', '04:21', '绅士', '华语', '失恋', '2014', '8.jpg', '演员.txt', '演员.m4a', '3');
INSERT INTO `index_song` VALUES ('4', '体面', '于文文', '04:42', '体面', '华语', '失恋', '2015', '2.jpg', '体面.txt', '体面.m4a', '3');
INSERT INTO `index_song` VALUES ('5', '好心分手', '王力宏;', '2:59', '力宏二十 20周年唯一精选', '华语', '失恋', '2016', '11.jpg', '好心分手.txt', '好心分手.m4a', '3');
INSERT INTO `index_song` VALUES ('6', '爱过了 又怎样', '张惠妹', '04:09', '爱过了 又怎样', '华语', '爱情', '2014', '13.jpg', '暂无歌词', '爱过了 又怎样.m4a', '2');
INSERT INTO `index_song` VALUES ('7', '就是这样', '林采欣', '5:13', '就是这样', '华语', '爱情', '2014', '12.jpg', '暂无歌词', '就是这样.m4a', '2');

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `weChat` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES ('1', 'pbkdf2_sha256$216000$tFabKlsV94vf$zGcHjN3iyKSmBAZj3uyvfjHEgUtxui96iw3ZPazC7EY=', '2020-10-16 08:18:29.638612', '1', 'admin', '', '', 'admin@qq.com', '1', '1', '2020-10-16 07:10:46.710664', '', '', '');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `myuser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_groups_myuser_id_group_id_680fbae2_uniq` (`myuser_id`,`group_id`),
  KEY `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `myuser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq` (`myuser_id`,`permission_id`),
  KEY `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`),
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser_user_permissions
-- ----------------------------

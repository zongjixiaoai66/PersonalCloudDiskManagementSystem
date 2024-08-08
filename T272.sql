/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t272`;
CREATE DATABASE IF NOT EXISTS `t272` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t272`;

DROP TABLE IF EXISTS `boke`;
CREATE TABLE IF NOT EXISTS `boke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_name` varchar(200) DEFAULT NULL COMMENT '博客标题 Search111 ',
  `boke_types` int DEFAULT NULL COMMENT '博客类型 Search111 ',
  `boke_photo` varchar(200) DEFAULT NULL COMMENT '博客图片 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zan_number` int DEFAULT '0' COMMENT '赞',
  `cai_number` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `insert_time` date DEFAULT NULL COMMENT '发布日期',
  `boke_content` text COMMENT '博客内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='博客信息';

DELETE FROM `boke`;
INSERT INTO `boke` (`id`, `boke_name`, `boke_types`, `boke_photo`, `yonghu_id`, `zan_number`, `cai_number`, `clicknum`, `insert_time`, `boke_content`, `create_time`) VALUES
	(1, '博客标题1', 3, 'http://localhost:8080/gerenyunpanguanli/upload/boke1.jpg', 2, 447, 204, 452, '2022-03-04', '博客内容1', '2022-03-04 02:50:06'),
	(2, '博客标题2', 3, 'http://localhost:8080/gerenyunpanguanli/upload/boke2.jpg', 2, 302, 99, 133, '2022-03-04', '博客内容2', '2022-03-04 02:50:06'),
	(3, '博客标题3', 2, 'http://localhost:8080/gerenyunpanguanli/upload/boke3.jpg', 2, 262, 344, 17, '2022-03-04', '博客内容3', '2022-03-04 02:50:06'),
	(4, '博客标题4', 1, 'http://localhost:8080/gerenyunpanguanli/upload/boke4.jpg', 1, 158, 346, 250, '2022-03-04', '博客内容4', '2022-03-04 02:50:06'),
	(5, '博客标题5', 3, 'http://localhost:8080/gerenyunpanguanli/upload/boke5.jpg', 1, 239, 152, 26, '2022-03-04', '博客内容5', '2022-03-04 02:50:06');

DROP TABLE IF EXISTS `boke_collection`;
CREATE TABLE IF NOT EXISTS `boke_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int DEFAULT NULL COMMENT '博客信息',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `boke_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='博客信息收藏';

DELETE FROM `boke_collection`;
INSERT INTO `boke_collection` (`id`, `boke_id`, `yonghu_id`, `boke_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(3, 3, 3, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(5, 5, 1, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(15, 4, 1, 3, '2022-03-04 03:20:23', '2022-03-04 03:20:23'),
	(16, 3, 1, 2, '2022-03-04 03:20:54', '2022-03-04 03:20:54'),
	(18, 4, 1, 1, '2024-07-18 07:42:22', '2024-07-18 07:42:22'),
	(19, 1, 1, 1, '2024-07-18 07:42:28', '2024-07-18 07:42:28');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/gerenyunpanguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/gerenyunpanguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/gerenyunpanguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shuji_types', '书籍类别', 1, '书籍类别1', NULL, NULL, '2022-03-04 02:49:48'),
	(2, 'shuji_types', '书籍类别', 2, '书籍类别2', NULL, NULL, '2022-03-04 02:49:48'),
	(3, 'shuji_types', '书籍类别', 3, '书籍类别3', NULL, NULL, '2022-03-04 02:49:48'),
	(4, 'shipin_types', '视频类别', 1, '视频类别1', NULL, NULL, '2022-03-04 02:49:48'),
	(5, 'shipin_types', '视频类别', 2, '视频类别2', NULL, NULL, '2022-03-04 02:49:48'),
	(6, 'shipin_types', '视频类别', 3, '视频类别3', NULL, NULL, '2022-03-04 02:49:48'),
	(7, 'boke_types', '博客类别', 1, '博客类别1', NULL, NULL, '2022-03-04 02:49:48'),
	(8, 'boke_types', '博客类别', 2, '博客类别2', NULL, NULL, '2022-03-04 02:49:48'),
	(9, 'boke_types', '博客类别', 3, '博客类别3', NULL, NULL, '2022-03-04 02:49:48'),
	(10, 'boke_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-04 02:49:48'),
	(11, 'boke_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-04 02:49:48'),
	(12, 'boke_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-04 02:49:48'),
	(13, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-04 02:49:48'),
	(14, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-04 02:49:48'),
	(15, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-04 02:49:48'),
	(16, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-04 02:49:48'),
	(17, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-04 02:49:48'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-04 02:49:48'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-04 02:49:48');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhiyuanzhe_id` int DEFAULT NULL COMMENT 'zhiyuanzhe',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `zhiyuanzhe_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, 1, NULL, '发布内容1', NULL, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(2, '帖子标题2', 2, 2, NULL, '发布内容2', NULL, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(3, '帖子标题3', 1, 3, NULL, '发布内容3', NULL, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(4, '帖子标题4', 3, 4, NULL, '发布内容4', NULL, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(5, '帖子标题5', 2, 5, NULL, '发布内容5', NULL, 1, '2022-03-04 02:50:06', '2022-03-04 02:50:06', '2022-03-04 02:50:06'),
	(6, NULL, 1, NULL, NULL, '用户评论', 5, 2, '2022-03-04 03:21:09', NULL, '2022-03-04 03:21:09'),
	(7, NULL, NULL, NULL, 1, '管理回复', 5, 2, '2022-03-04 03:23:37', NULL, '2022-03-04 03:23:37'),
	(8, '11', 1, NULL, NULL, '11', NULL, 1, '2024-07-18 07:42:34', NULL, '2024-07-18 07:42:34');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/gerenyunpanguanli/upload/news1.jpg', '2022-03-04 02:50:06', '公告详情1', '2022-03-04 02:50:06'),
	(2, '公告标题2', 2, 'http://localhost:8080/gerenyunpanguanli/upload/news2.jpg', '2022-03-04 02:50:06', '公告详情2', '2022-03-04 02:50:06'),
	(3, '公告标题3', 3, 'http://localhost:8080/gerenyunpanguanli/upload/news3.jpg', '2022-03-04 02:50:06', '公告详情3', '2022-03-04 02:50:06'),
	(4, '公告标题4', 3, 'http://localhost:8080/gerenyunpanguanli/upload/news4.jpg', '2022-03-04 02:50:06', '公告详情4', '2022-03-04 02:50:06'),
	(5, '公告标题5', 1, 'http://localhost:8080/gerenyunpanguanli/upload/news5.jpg', '2022-03-04 02:50:06', '公告详情5', '2022-03-04 02:50:06');

DROP TABLE IF EXISTS `shipin`;
CREATE TABLE IF NOT EXISTS `shipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题 Search111 ',
  `shipin_types` int DEFAULT NULL COMMENT '视频类别 Search111 ',
  `shipin_photo` varchar(200) DEFAULT NULL COMMENT '视频图片 ',
  `shipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shipin_clicknum` int DEFAULT '0' COMMENT '点击次数',
  `insert_time` date DEFAULT NULL COMMENT '发布日期',
  `shipin_content` text COMMENT '视频详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='视频信息';

DELETE FROM `shipin`;
INSERT INTO `shipin` (`id`, `shipin_name`, `shipin_types`, `shipin_photo`, `shipin_video`, `yonghu_id`, `shipin_clicknum`, `insert_time`, `shipin_content`, `create_time`) VALUES
	(1, '视频标题1', 3, 'http://localhost:8080/gerenyunpanguanli/upload/shipin1.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/video.mp4', 3, 498, '2022-03-04', '视频详情1', '2022-03-04 02:50:06'),
	(2, '视频标题2', 2, 'http://localhost:8080/gerenyunpanguanli/upload/shipin2.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/video.mp4', 1, 93, '2022-03-04', '视频详情2', '2022-03-04 02:50:06'),
	(3, '视频标题3', 1, 'http://localhost:8080/gerenyunpanguanli/upload/shipin3.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/video.mp4', 3, 366, '2022-03-04', '视频详情3', '2022-03-04 02:50:06'),
	(4, '视频标题4', 1, 'http://localhost:8080/gerenyunpanguanli/upload/shipin4.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/video.mp4', 2, 113, '2022-03-04', '视频详情4', '2022-03-04 02:50:06'),
	(5, '视频标题5', 1, 'http://localhost:8080/gerenyunpanguanli/upload/shipin5.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/video.mp4', 2, 94, '2022-03-04', '视频详情5', '2022-03-04 02:50:06');

DROP TABLE IF EXISTS `shuji`;
CREATE TABLE IF NOT EXISTS `shuji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_name` varchar(200) DEFAULT NULL COMMENT '书籍标题 Search111 ',
  `shuji_types` int DEFAULT NULL COMMENT '书籍类别 Search111 ',
  `shuji_photo` varchar(200) DEFAULT NULL COMMENT '书籍图片 ',
  `shuji_file` varchar(200) DEFAULT NULL COMMENT '书籍下载',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuji_clicknum` int DEFAULT '0' COMMENT '点击次数',
  `insert_time` date DEFAULT NULL COMMENT '发布日期',
  `shuji_content` text COMMENT '书籍详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='书籍信息';

DELETE FROM `shuji`;
INSERT INTO `shuji` (`id`, `shuji_name`, `shuji_types`, `shuji_photo`, `shuji_file`, `yonghu_id`, `shuji_clicknum`, `insert_time`, `shuji_content`, `create_time`) VALUES
	(1, '书籍标题1', 2, 'http://localhost:8080/gerenyunpanguanli/upload/shuji1.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/file.rar', 3, 26, '2022-03-04', '书籍详情1', '2022-03-04 02:50:06'),
	(2, '书籍标题2', 3, 'http://localhost:8080/gerenyunpanguanli/upload/shuji2.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/file.rar', 3, 74, '2022-03-04', '书籍详情2', '2022-03-04 02:50:06'),
	(3, '书籍标题3', 3, 'http://localhost:8080/gerenyunpanguanli/upload/shuji3.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/file.rar', 3, 9, '2022-03-04', '书籍详情3', '2022-03-04 02:50:06'),
	(4, '书籍标题4', 2, 'http://localhost:8080/gerenyunpanguanli/upload/shuji4.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/file.rar', 3, 39, '2022-03-04', '书籍详情4', '2022-03-04 02:50:06'),
	(5, '书籍标题5', 2, 'http://localhost:8080/gerenyunpanguanli/upload/shuji5.jpg', 'http://localhost:8080/gerenyunpanguanli/upload/file.rar', 3, 452, '2022-03-04', '书籍详情5', '2022-03-04 02:50:06');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'ouct9dpi9aendv7r9qkjj1m1ht2yw68b', '2022-03-04 02:58:39', '2024-07-18 08:42:17'),
	(2, 1, 'admin', 'users', '管理员', 'm7u2rfgywntrygtmkywbsgtmukk85zwf', '2022-03-04 02:59:02', '2024-07-18 08:40:58'),
	(3, 2, 'a2', 'yonghu', '用户', 'xnjyjugchy9s7gkz9silxvdwgn2bk7yc', '2022-03-04 02:59:09', '2022-03-04 03:59:09');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/gerenyunpanguanli/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-04 02:50:06'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/gerenyunpanguanli/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-04 02:50:06'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/gerenyunpanguanli/upload/yonghu3.jpg', 2, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-04 02:50:06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

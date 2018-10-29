
-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `recover_code` varchar(32) NOT NULL,
  PRIMARY KEY (`username` )
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `topic` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `contect` varchar(500) NOT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id` )
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tb_bulletin`;
CREATE TABLE `tb_bulletin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `contect` varchar(500) NOT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id` )
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;

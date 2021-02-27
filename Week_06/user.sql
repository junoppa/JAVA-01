CREATE TABLE `user` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `username` varchar(50) DEFAULT NULL COMMENT '姓名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `lastsigntime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

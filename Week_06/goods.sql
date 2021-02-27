CREATE TABLE `goods` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `goodImg` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `classId` varchar(32) DEFAULT NULL COMMENT '分类Id',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

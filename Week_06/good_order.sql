CREATE TABLE `good_order` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `goodsId` varchar(32) DEFAULT NULL COMMENT '商品Id',
  `goodsPrice` decimal(10,2) DEFAULT NULL COMMENT '商品单价格',
  `goods_num` int(10) DEFAULT NULL COMMENT '商品数量',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品订单表';

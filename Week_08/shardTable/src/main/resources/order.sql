CREATE DATABASE `order_0` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE DATABASE `order_1` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `order_0` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_1` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_2` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_3` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_4` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_5` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_6` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_7` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_8` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_9` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_10` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_11` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_12` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_13` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_14` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `order_15` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(2) DEFAULT '1' COMMENT '订单状态 0 取消  1 未支付  ,2 已支付未发快递  3 已发快递 4 已收货  5退款退货',
  `express_no` varchar(255) DEFAULT NULL COMMENT '快递编号',
  `express_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `consignee_mobile` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `consignee_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `deleteStatus` varchar(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';



package com.junoppa.controller;

import com.junoppa.dao.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class OrderController {

    @Autowired
    OrderDao orderDao;

    @RequestMapping("addOrder")
    public String addOrder(@RequestBody Map<String, Object> reqMap) {
        orderDao.insertOrder(reqMap);
        return "新增订单成功";
    }

    @RequestMapping("getOrderList")
    public List<Map<String, Object>> getOrderList() {
        return orderDao.selectAll();
    }

}

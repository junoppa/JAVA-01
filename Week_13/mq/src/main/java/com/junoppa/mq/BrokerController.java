package com.junoppa.mq;

import com.alibaba.fastjson.JSON;
import com.junopp.mq.MqMessage;
import com.junopp.mq.BrokerService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/broker")
public class BrokerController {

    BrokerService brokerService;

    public BrokerController(BrokerService brokerService) {
        this.brokerService = brokerService;
    }

    @PostMapping("/createTopic")
    public Boolean createTopic(@RequestBody String name){
        return brokerService.createTopic(name);
    }

    @PostMapping("/poll")
    public MqMessage poll(@RequestBody Map<String, String> map) {
        return brokerService.poll(map.get("topic"), map.get("hashcode"));
    }

    @PostMapping("/send")
    public Boolean send(@RequestBody Map<String, Object> map) {
        return brokerService.send((String) map.get("topic"), JSON.parseObject((String) map.get("message"), MqMessage.class));
    }

    @PostMapping("/commitConsumerOffset")
    public Boolean commitConsumerOffset(@RequestBody Map<String, Object> map) {
        return brokerService.commitConsumerOffset((String) map.get("hashcode"), (Integer) map.get("offset"));
    }

}

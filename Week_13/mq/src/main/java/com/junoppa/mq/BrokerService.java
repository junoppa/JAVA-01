package com.junoppa.mq;

import com.junopp.mq.Mq;
import com.junopp.mq.MqMessage;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Service
public class BrokerService {

    public static final int CAPACITY = 10000;

    private final Map<String, Mq> kmqMap = new ConcurrentHashMap<>(64);

    private final Map<String, Integer> consumerOffsetMap = new ConcurrentHashMap<>();

    public Boolean createTopic(String name){
        kmqMap.putIfAbsent(name, new Mq(name,CAPACITY));
        return true;
    }

    public Mq findKmq(String topic) {
        return this.kmqMap.get(topic);
    }

    public Boolean send(String topic, MqMessage message) {
        Mq kmq = this.findKmq(topic);
        if (null == kmq) throw new RuntimeException("Topic[" + topic + "] doesn't exist.");
        return kmq.send(message);
    }

    public Boolean commitConsumerOffset(String hashcode, Integer offset) {
        consumerOffsetMap.put(hashcode, offset);
        return true;
    }

    public MqMessage poll(String topic, String hashcode) {
        int offset = consumerOffsetMap.get(hashcode) == null ? 0 : consumerOffsetMap.get(hashcode);
        Mq kmq = kmqMap.get(topic);
        MqMessage message = kmq.poll(offset);
        if (message != null) {
            if (message.getHeaders() == null) {
                message.setHeaders(new HashMap<>());
            }
            message.getHeaders().put("offset", offset);
        }
        return message;
    }

}

package com.junoppa.mq;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class MqBroker { // Broker+Connection

    public static final int CAPACITY = 10000;

    private final Map<String, Mq> kmqMap = new ConcurrentHashMap<>(64);

    public void createTopic(String name){
        kmqMap.putIfAbsent(name, new Mq(name,CAPACITY));
    }

    public Mq findKmq(String topic) {
        return this.kmqMap.get(topic);
    }

    public MqProducer createProducer() {
        return new MqProducer(this);
    }

    public MqConsumer createConsumer() {
        return new MqConsumer(this);
    }

}

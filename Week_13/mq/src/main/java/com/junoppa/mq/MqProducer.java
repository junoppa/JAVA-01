package com.junoppa.mq;

public class MqProducer {

    private MqBroker broker;

    public MqProducer(MqBroker broker) {
        this.broker = broker;
    }

    public boolean send(String topic, MqMessage message) {
        Mq kmq = this.broker.findKmq(topic);
        if (null == kmq) throw new RuntimeException("Topic[" + topic + "] doesn't exist.");
        return kmq.send(message);
    }
}

package com.junoppa.mq;

import java.util.HashMap;

public class MqConsumer<T> {

    private final MqBroker broker;

    private Mq kmq;

    private int offset;

    public MqConsumer(MqBroker broker) {
        this.broker = broker;
    }

    public void subscribe(String topic) {
        this.kmq = this.broker.findKmq(topic);
        if (null == kmq) throw new RuntimeException("Topic[" + topic + "] doesn't exist.");
    }

    public MqMessage<T> poll() {
        MqMessage message = kmq.poll(offset);
        if (message != null) {
            if (message.getHeaders() == null) {
                message.setHeaders(new HashMap<>());
            }
            message.getHeaders().put("offset", offset);
        }
        return message;
    }

    public void commitOffset(int offset) {
        this.offset = ++offset;
    }

}

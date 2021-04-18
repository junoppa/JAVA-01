package com.junoppa.mq;

import lombok.SneakyThrows;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class Mq {

    public Mq(String topic, int capacity) {
        this.topic = topic;
        this.capacity = capacity;
        this.messages = new MqMessage[capacity];
    }

    private String topic;

    private int capacity;

    private int offset;

    private MqMessage[] messages;

    public boolean send(MqMessage message) {
        messages[offset] = message;
        offset++;
        return true;
    }

    public MqMessage poll(int offset) {
        return messages[offset];
    }

}

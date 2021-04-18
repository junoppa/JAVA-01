package com.junoppa.mq;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.HashMap;

@AllArgsConstructor
@Data
public class MqMessage<T> {

    private HashMap<String,Object> headers;

    private T body;

}

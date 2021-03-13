package com.junoppa.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface OrderDao {

    @Options(useGeneratedKeys=true)
    @Insert("<script>" +
            "insert into " +
            "order(" +
            "order_no," +
            "userId," +
            "sum_price," +
            ")values(" +
            "#{order_no}," +
            "#{user_id}," +
            "#{userId}," +
            "#{sum_price}," +
            ")" +
            "</script>")
    void insertOrder(Map<String, Object> dataMap);

    @Select("<script>" +
            "select " +
            "id," +
            "order_no," +
            "userId," +
            "sum_price," +
            "</script>")
    List<Map<String, Object>> selectAll();

}

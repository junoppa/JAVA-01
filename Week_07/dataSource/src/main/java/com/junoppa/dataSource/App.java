package com.junoppa.dataSource;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import com.zaxxer.hikari.HikariDataSource;

/**
 * Hello world!
 *
 */
public class App 
{


    public static void main(String[] args) {
        ConfigurableApplicationContext applicationContext = SpringApplication.run(App.class, args);
        DbService service = applicationContext.getAutowireCapableBeanFactory().getBean(DbService.class);
        service.create();
        service.retrieve();
    }

    @Bean
    public DataSource dataSource1() {
        HikariDataSource dataSource1 = new HikariDataSource();
        dataSource1.setJdbcUrl("jdbc:mysql://127.0.0.1:3306/order?rewriteBatchedStatements=true");
        dataSource1.setUsername("root");
        dataSource1.setPassword("123456");
        return dataSource1;
    }

    @Bean
    public DataSource dataSource2() {
        HikariDataSource dataSource2 = new HikariDataSource();
        dataSource2.setJdbcUrl("jdbc:mysql://127.0.0.1:3307/order?rewriteBatchedStatements=true");
        dataSource2.setUsername("root");
        dataSource2.setPassword("123456");
        return dataSource2;
    }


}

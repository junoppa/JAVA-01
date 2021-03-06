package com.junoppa.sharding;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {

        ConfigurableApplicationContext applicationContext = SpringApplication.run(App.class, args);
        DataSource dataSource = applicationContext.getBean(DataSource.class);
        ResultSet rs = null;
        try (Connection connection = dataSource.getConnection();
             PreparedStatement statement1 = connection.prepareStatement("INSERT INTO `order`(`id`, `user_id`, `order_id`) VALUES (1,1,1)");
             PreparedStatement statement2 = connection.prepareStatement("select * from `order`");
        ) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            statement1.setTimestamp(1, timestamp);
            statement1.setTimestamp(2, timestamp);
            statement1.execute();
            rs = statement2.executeQuery();
            // 
            while (rs.next()) {
                System.out.println(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        try (Connection connection = dataSource.getConnection();
             PreparedStatement statement = connection.prepareStatement("select * from `order`");
        ) {
            rs = statement.executeQuery();
            // 读从库
            while (rs.next()) {
                System.out.println(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    
    }
}

package com.junoppa.dataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;

@Service
public class DbService {

    DataSource saveData;
    DataSource queryData;

    @Autowired
    public DbService (DataSource saveData, DataSource queryData) {
        this.saveData = saveData;
        this.queryData = queryData;
    }

    public void create() {
        try (Connection connection = saveData.getConnection();
             PreparedStatement statement1 = connection.prepareStatement("INSERT INTO `order`(`id`, `user_id`, `order_id`) VALUES (1,1,1)");
        ) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            statement1.setTimestamp(1, timestamp);
            statement1.setTimestamp(2, timestamp);
            statement1.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void retrieve() {
        ResultSet rs = null;
        try (Connection connection = queryData.getConnection();
             PreparedStatement statement = connection.prepareStatement("select * from `order`");
        ) {
            rs = statement.executeQuery();
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

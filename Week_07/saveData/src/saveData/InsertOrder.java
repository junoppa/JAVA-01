package saveData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertOrder {

	public static void main(String[] args) throws ClassNotFoundException {
        String prefix = "INSERT INTO order (id, user_id, order_id) VALUES ";  
        Connection conn = null;
        try {  
        	String url = "jdbc:mysql://192.168.35.128:3306/demo";
        	String user = "root";
        	String password = "123456";
        	conn = DriverManager.getConnection(url, user, password);
        	Class.forName("com.mysql.jdbc.Driver");
            // 保存sql后缀  
            StringBuffer suffix = new StringBuffer();  
            // 设置事务为非自动提交  
            conn.setAutoCommit(false);  
            
            PreparedStatement pst = conn.prepareStatement("");  
            // 外层循环，总提交事务次数  
            for (int i = 1; i <= 100; i++) {  
                // 第次提交步长  
                for (int j = 1; j <= 10000; j++) {  
                    // 构建sql后缀  
                    suffix.append("(" + j * i + ", i * j, " + i * j  
                            * Math.random() + "),");  
                }  
                // 构建完整sql  
                String sql = prefix + suffix.substring(0, suffix.length() - 1);  
                // 添加执行sql  
                pst.addBatch(sql);  
                // 执行操作  
                pst.executeBatch();  
                // 提交事务  
                conn.commit();  
                // 清空上一次添加的数据  
                suffix = new StringBuffer();  
            }  
            // 头等连接  
            pst.close();  
            conn.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
	}

}

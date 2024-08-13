package configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
   
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/telicom";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456789";

  
    private DBConnection() {
       
    }

    
    public static Connection getNewConnection() {
        Connection connection = null;
        try {
        	
            Class.forName("com.mysql.jdbc.Driver");
           
            connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

   
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

package database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DatabaseInfor {
    public static Connection makeConnection() throws ClassNotFoundException, SQLException {
        try {
            String connectionUrl = "jdbc:sqlserver://NGUYENANHTU:1433;databaseName=Project;User=sa;Password=admin;encrypt=true;trustServerCertificate=true";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(connectionUrl);
            System.out.println("Database is connected!");
            return con;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        try {
            Connection conn = makeConnection();
            // Thực hiện các thao tác với cơ sở dữ liệu tại đây
            
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error connecting to database: " + e.getMessage());
        }
    }
}
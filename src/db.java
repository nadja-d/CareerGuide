import java.sql.*;

public class db {
    public static Connection myConnector() {
        Connection myConnection = null;
        
        try {
            String className = "com.mysql.cj.jdbc.Driver";
            Class.forName(className); 
            
            final String URL = "jdbc:mysql://localhost/finalproject";
            final String USER = "root";
            final String PSW = "";
            
            myConnection = DriverManager.getConnection(URL,USER,PSW);            
        } catch (ClassNotFoundException | SQLException e) {System.out.println(e);}
            return myConnection;
    }
}
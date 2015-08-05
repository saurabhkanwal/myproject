package mongodbdemo;

import java.sql.*;

public class dbconnection {
	
	public Connection ConnectionFile1() {
		   
        Connection conn = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");

            System.out.println("Connection is available........");

        } catch (Exception ex) {

            System.out.println("This is the Connection File Exception" + ex);

        }
        return conn;
    }
}


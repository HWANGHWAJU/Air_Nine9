package Jdbc.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	public static Connection getConnection() throws SQLException{
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			String DB_URL = "jdbc:mysql://127.0.0.1:3306/airnine";
			String USER = "root";
			String PASSWORD = "120524";
			
			return DriverManager.getConnection(DB_URL, USER, PASSWORD);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(" DB �뿰寃� �삤瑜�");
		}
		return null;
	}
}

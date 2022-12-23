package ar.com.cac.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConfig {

	private static  final String SERVER = "localhost";
	private static  final String BASE = "ReservaDeCanchas";
	private static  final String USER = "root";
	private static  final String PASSWORD = "12346";
	private static  final Integer PORT = 3306;
	
	public static Connection getConexion() throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		var conectionString = SERVER+"/"+BASE+"&useSSL=false";
		var url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", SERVER, PORT, BASE);
		return DriverManager.getConnection(url,USER,PASSWORD);
	}
	
	public static Connection connection_with( String user, String password ) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", SERVER, PORT, BASE);
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

}


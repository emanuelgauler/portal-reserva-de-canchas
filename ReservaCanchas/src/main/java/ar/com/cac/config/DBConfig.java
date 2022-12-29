package ar.com.cac.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConfig {

	private static  final String SERVER = "localhost";
	private static  final String BASE = "reservadecanchas";
	private static  final String USER = "root";
	private static  final String PASSWORD = "Paola7910";
	private static  final Integer PORT = 3306;
	
	public static Connection getConexion() throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		}
		//var conectionString = SERVER+"/"+BASE+"&useSSL=false";
		var url = String.format("jdbc:mysql://%s:%d/%s?allowPublicKeyRetrieval=true&useSSL=false", SERVER, PORT, BASE);
		return DriverManager.getConnection(url,USER,PASSWORD);
	}

}


package ar.com.cac.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import ar.com.cac.config.DBConfig;

public class UsuarioDAO {
	
	public UsuarioDAO(){}
	
	public void insert( Usuario u ) {
		String query = "INSERT INTO Usuarios(apellido, nombre, email, clave) VALUES(?,?,?,?);";
		Connection con = DBConfig.connection_with("admin", "e.m.a.123");
		try {
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString( 1, u.getApellido() );
			stmt.setString( 2, u.getNombre() );
			stmt.setString( 3, u.getMail() );
			stmt.setString( 4, u.getClave() );
			stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

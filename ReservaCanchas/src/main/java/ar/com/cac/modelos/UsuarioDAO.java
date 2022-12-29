package ar.com.cac.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import ar.com.cac.config.DBConfig;

public class UsuarioDAO {
	
	public UsuarioDAO(){}
	
	public void insert( Usuario u ) throws SQLException {
		String query = "INSERT INTO Usuarios(apellido, nombre, email, clave) VALUES(?,?,?,?);";
		var conn = DBConfig.getConexion();

			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString( 1, u.getApellido() );
			stmt.setString( 2, u.getNombre() );
			stmt.setString( 3, u.getMail() );
			stmt.setString( 4, u.getClave() );
			stmt.executeUpdate();
	}

	public String find_email_from(Map<String, String> params) {
		String response = "";
		try {
			Connection  conn = DBConfig.getConexion();
			Statement stmt = conn.createStatement();
			String where_clause = convert_to_where_clause(params);
			ResultSet result = stmt.executeQuery(
					String.format("select json_object('exists', count(email) > 0) from Usuarios %s;", where_clause));
			while (result.next()) {
				response = result.getString(1);
			}

		} catch (SQLException e) {
			response = String.format("{'status': 'failed', 'message':'%s'}",e.getMessage());
		} catch (NullPointerException e) {
			response = String.format("{'status':'failed', 'message':%s}", e.getMessage());
		}
		return response;
	}
	

	private String convert_to_where_clause(Map<String, String> params) {
		return params.entrySet().stream()
				.map((Map.Entry<String, String> e) -> String.format("%s='%s'", e.getKey(), e.getValue()))
				.collect(Collectors.joining(" AND ", "WHERE ", ""));
	}



}
	

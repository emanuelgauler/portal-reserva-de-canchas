package ar.com.cac.modelos;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ar.com.cac.config.DBConfig;

public class personaDAO implements PDAO{

	
	@Override
	public Integer GetByEmailAndPwd(String mail, String password) throws SQLException {
		Integer Id = 0;
		var conn = DBConfig.getConexion();
		String query = "select idUsuario from usuarios where email = ? and clave = ?";		
		var ps = conn.prepareStatement(query);				
		ps.setString(1, mail);
		ps.setString(2, password);		
		var rs = ps.executeQuery();		
		if(rs!=null)
		{
			while (rs.next()) {
				Id = rs.getInt("idUsuario");												
			}
		
		}
		return Id;
	}

}

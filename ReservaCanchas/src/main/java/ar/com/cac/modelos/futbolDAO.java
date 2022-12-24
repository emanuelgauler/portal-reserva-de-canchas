package ar.com.cac.modelos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ar.com.cac.config.DBConfig;


public class futbolDAO implements DAO<futbol> {

	@Override
	public List<futbol> getAll() throws SQLException {
		// TODO Auto-generated method stub
		List<futbol> futbol= new ArrayList<futbol>();
		var conn = DBConfig.getConexion();
		String query =  "select idCancha, tipoCancha, cantidadPorEquipo, precio, type, imagenes  \r\n"
				+ "from canchas\r\n"
				+ "where type = \"futbol\"";
	
		
		var ps = conn.prepareStatement(query);
		var rs = ps.executeQuery();
		
		if(rs!=null)
		{
			while (rs.next()) {
				futbol futbolC = new futbol();
				futbolC.setIdCancha(rs.getInt("idCancha"));
				futbolC.setTipoCancha(rs.getString("tipoCancha"));
				futbolC.setCantidadPorEquipo(rs.getString("cantidadPorEquipo"));
				futbolC.setPrecio(rs.getDouble("precio"));
				futbolC.setType(rs.getString("type"));
				
							
				futbol.add(futbolC);									
			}
		}			
		return futbol;
		
	}

	@Override
	public void insert(futbol modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(futbol modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public futbol getById(int id) throws SQLException {
		futbol futbol= new futbol();
		var conn = DBConfig.getConexion();
		String query = "select idCancha, tipoCancha, cantidadPorEquipo, precio, type, imagenes  \r\n"
				+ "from canchas\r\n"
				+ "where type = \"futbol\" limit 1";
		//query += "from canchas c inner join metadatacanchas m"; 
		//query += "on c.idCancha = m.idCancha";
		
		var ps = conn.prepareStatement(query);
		var rs = ps.executeQuery();
		
		if(rs.next())
		{
			futbol futbolC = new futbol();
			futbolC.setIdCancha(rs.getInt("idCancha"));
			futbolC.setTipoCancha(rs.getString("tipoCancha"));
			futbolC.setCantidadPorEquipo(rs.getString("cantidadPorEquipo"));
			futbolC.setPrecio(rs.getDouble("precio"));
			futbolC.setType("type");
			futbolC.setImagenes("imagenes");				
		}			
		return futbol;
	}
}

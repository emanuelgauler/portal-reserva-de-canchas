package ar.com.cac.modelos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ar.com.cac.config.DBConfig;

public class paddelDAO implements DAO<paddel>{
	
	@Override
	public List<paddel> getAll() throws SQLException {
		// TODO Auto-generated method stub
		List<paddel> paddel= new ArrayList<paddel>();
		var conn = DBConfig.getConexion();
		String query = "select * from canchas\r\n"
				+ "where type = \"padel\"";
	
		
		var ps = conn.prepareStatement(query);
		var rs = ps.executeQuery();
		
		if(rs!=null)
		{
			while (rs.next()) {
				paddel paddelC = new paddel();
				paddelC.setIdCancha(rs.getInt("idCancha"));
				paddelC.setTipoCancha(rs.getString("tipoCancha"));
				paddelC.setSuelo(rs.getString("suelo"));
				paddelC.setPrecio(rs.getDouble("precio"));
				paddelC.setMedidas(rs.getString("medidas"));
				paddelC.setType(rs.getString("type"));
				paddel.add(paddelC);									
			}
		}			
		return paddel;
		
	}

	@Override
	public void insert(paddel modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(paddel modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public paddel getById(int id) throws SQLException {
		paddel paddel= new paddel();
		var conn = DBConfig.getConexion();
		String query = "select idCancha, tipoCancha, precio, type, imagenes, suelo, medidas\r\n"
				+ "from canchas\r\n"
				+ "where type = \"padel\" limit 1";
		//query += "from canchas c inner join metadatacanchas m"; 
		//query += "on c.idCancha = m.idCancha";
		
		var ps = conn.prepareStatement(query);
		var rs = ps.executeQuery();
		
		if(rs.next())
		{
			paddel paddelC = new paddel();
			paddelC.setIdCancha(rs.getInt("idCancha"));
			paddelC.setTipoCancha(rs.getString("tipoCancha"));
			paddelC.setSuelo(rs.getString("suelo"));
			paddelC.setPrecio(rs.getDouble("precio"));
			paddelC.setType("type");
			paddelC.setImagenes("imagenes");	
			paddelC.setMedidas("medidas");				
		}			
		return paddel;
	}

<<<<<<< Updated upstream
=======
	@Override
	public List<paddel> getAllById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

>>>>>>> Stashed changes

}

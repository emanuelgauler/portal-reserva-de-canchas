package ar.com.cac.modelos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ar.com.cac.config.DBConfig;

public class misReservasDAO  implements DAO<misReservas>{

	@Override
	public void insert(misReservas modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(misReservas modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public misReservas getById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<misReservas> getAllById(int id) throws SQLException {
		List<misReservas> misReservas= new ArrayList<misReservas>();
		var conn = DBConfig.getConexion();
		String query = "select r.idUsuario, c.type, c.tipoCancha, c.cantidadPorEquipo, c.medidas, r.fecha, r.hora, r.totalReserva\r\n"
				+ "from reservas r inner join canchas c on r.idCancha= c.idCancha\r\n"
				+ "where r.idUsuario = ?";
	
		
		var ps = conn.prepareStatement(query);
		ps.setInt(1, id);
		var rs = ps.executeQuery();
		
		if(rs!=null)
		{
			while (rs.next()) {
				misReservas misReservasT = new misReservas();
				misReservasT.setIdUsuario(rs.getInt("idUsuario"));
				misReservasT.setType(rs.getString("type"));
				misReservasT.setTipoCancha(rs.getString("tipoCancha"));
				misReservasT.setCantidadPorEquipo(rs.getInt("cantidadPorEquipo"));
				misReservasT.setMedidas(rs.getString("medidas"));
				misReservasT.setFecha(rs.getDate("fecha"));
				misReservasT.setHora(rs.getTime("hora"));
				misReservasT.setTotalReserva(rs.getDouble("totalReserva"));
				misReservas.add(misReservasT);									
			}
			
		}	
		return misReservas;
		
	}

	@Override
	public List<misReservas> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	}
	
	




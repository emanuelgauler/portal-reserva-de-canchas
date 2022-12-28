package ar.com.cac.modelos;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import ar.com.cac.config.DBConfig;

public class ReservasDAO implements DAO<Reservas> {

	@Override
	public void insert(Reservas modelo) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("Llego acá al insert");
		
		var conn = DBConfig.getConexion();

		String query = "insert into reservas";
		query += " (fecha, hora, totalReserva, idUsuario, idCancha)";
		query += " values (?,?,?,?,?)";

		var ps = conn.prepareStatement(query);

		ps.setDate(1, modelo.getFecha());
		ps.setString(2, modelo.getHora());
		ps.setDouble(3, modelo.getTotalReserva());
		ps.setInt(4, modelo.getIdUsuario());
		ps.setInt(5, modelo.getIdCancha());
		System.out.println("Llego acá al insert parametros");
		ps.executeUpdate();

		conn.close();
	}

	@Override
	public void update(Reservas modelo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Reservas getById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Reservas> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

<<<<<<< Updated upstream
=======
	@Override
	public List<Reservas> getAllById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

>>>>>>> Stashed changes
}

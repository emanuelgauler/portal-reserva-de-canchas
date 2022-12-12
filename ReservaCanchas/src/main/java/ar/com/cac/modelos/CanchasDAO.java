package ar.com.cac.modelos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ar.com.cac.config.DBConfig;


public class CanchasDAO implements DAO<Canchas>{
	
/*
		@Override
		public Canchas getById(int id) throws SQLException {
			Canchas cancha = null;

			var conn = DBConfig.getConexion();
	/*
			String query = "select id, username, password, activo, categoria, nickname";
			query += " from usuarios";
			query += " where id = ?";

			var ps = conn.prepareStatement(query);

			ps.setInt(1, id);

			var rs = ps.executeQuery();

			if (rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setUsername(rs.getString("username"));
				usuario.setPassword(rs.getString("password"));
	ejemplo			usuario.setActivo(rs.getInt("activo") == 1);
				usuario.setCategoria(rs.getString("categoria"));
				usuario.setNickname(rs.getString("nickname"));
			}
	*/
		/*	return cancha;
		
		}
*/
		@Override
		public List<Canchas> getAll() throws SQLException {
			// TODO Auto-generated method stub
			List<Canchas> canchas= new ArrayList<Canchas>();
			var conn = DBConfig.getConexion();
			String query = "select c.idCancha, c.tipocancha, c.precio, m.clave, m.valor";
			query += "from canchas c inner join metadatacanchas m"; 
			query += "on c.idCancha = m.idCancha";
			
			var ps = conn.prepareStatement(query);
			var rs = ps.executeQuery();
			
			if(rs.next())
			{
				Canchas cancha = new Canchas();
				cancha.setIdCancha(rs.getInt("idCancha"));
				cancha.setTipoCancha(rs.getString("tipoCancha"));
				cancha.setPrecio(rs.getDouble("precio"));
				cancha.setClave(rs.getString("clave"));
				cancha.setValor(rs.getString("valor"));			
				canchas.add(cancha);
			}
			
			return canchas;
		}

		@Override
		public void insert(Canchas modelo) throws SQLException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void update(Canchas modelo) throws SQLException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void delete(int id) throws SQLException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public Canchas getById(int id) throws SQLException {
			// TODO Auto-generated method stub
			return null;
		}
		
	}


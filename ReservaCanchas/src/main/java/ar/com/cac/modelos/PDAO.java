package ar.com.cac.modelos;
import java.sql.SQLException;

public interface PDAO{
	
	public Integer GetByEmailAndPwd(String mail, String password) throws SQLException;
	
}

package ar.com.cac.controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import ar.com.cac.config.DBConfig;
import ar.com.cac.modelos.Usuario;
import ar.com.cac.modelos.UsuarioDAO;

/**
 * Servlet implementation class UsuariosController
 */
public class UsuariosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO users = new UsuarioDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuariosController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> params = transform_query_string( request.getParameterMap() );
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		/*
		*/
		try {
			Connection con = DBConfig.connection_with("admin", "e.m.a.123");
			Statement stmt = con.createStatement();
			String where_clause = convert_to_where_clause(params);
			ResultSet result = stmt.executeQuery(
					String.format("select json_object('exists', count(email) > 0) from Usuarios %s;", where_clause));
			while (result.next()) {
				writer.println( result.getString(1) );
			}

		} catch (SQLException e) {
			writer.println(String.format("{'status': 'failed', 'message':'%s'}",e.getMessage()));
		} catch (NullPointerException e) {
			writer.println(String.format("{'status':'failed', 'message':%s}", e.getMessage()));
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> params = request.getParameterMap().entrySet().stream()
				.collect(Collectors.toMap(Map.Entry<String, String[]>::getKey,
						(Map.Entry<String, String[]> e) -> e.getValue()[0]));
		String result = "result=success";

		try {
			insert_user_with(params);
		} catch (SQLException e1) {
			if (e1.getMessage().contains("Duplicate")) {
				result = String.format("result=fail&message=:%d: El correo electrónico <b>%s</b> ya está en uso",
						e1.getErrorCode(), params.get("email_in"));
			}
		} catch (NullPointerException ex ) {
			result = "result=fail&message=Servidor no está disponible";
		}
		response.sendRedirect(String.format("http://localhost:8080%s/registro.jsp?%s", request.getContextPath(), result));
	}

	private void insert_user_with(Map<String, String> params) throws SQLException {
		users.insert(user_from( params ));
	}

	private Usuario user_from(Map<String, String> params) {
		Usuario u = new Usuario();
		u.setApellido(params.get("apellido_in"));
		u.setNombre(params.get("nombre_in"));
		u.setMail(params.get("email_in"));
		u.setClave(params.get("password_in"));
		return u;
	}

	private String convert_to_where_clause(Map<String, String> params) {
		return params.entrySet().stream()
				.map((Map.Entry<String, String> e) -> String.format("%s='%s'", e.getKey(), e.getValue()))
				.collect(Collectors.joining(" AND ", "WHERE ", ""));
	}

	private Map<String, String> transform_query_string(Map<String, String[]> params) {
		Map<String, String> result = new HashMap<>();
		for(var entry: params.entrySet() ) {
			result.put( entry.getKey(), entry.getValue()[0] );
		}
		return result;
	}

}

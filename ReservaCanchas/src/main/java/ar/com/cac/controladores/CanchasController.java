package ar.com.cac.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.server.PathParam;

import java.io.IOException;
import java.sql.SQLException;

import ar.com.cac.modelos.Canchas;
import ar.com.cac.modelos.CanchasDAO;
import ar.com.cac.modelos.Usuario;
import ar.com.cac.modelos.UsuarioDAO;

/**
 * Servlet implementation class CanchasController
 */
@WebServlet("/canchas")
public class CanchasController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CanchasController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			CanchasDAO cDAO = new CanchasDAO();		
			var listaCanchas = cDAO.getAll();
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");		    
		    response.getWriter().write(listaCanchas.toString());
		    
		    request.setAttribute("canchas", listaCanchas);
		    RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
		    rd.forward(request, response);
		    
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

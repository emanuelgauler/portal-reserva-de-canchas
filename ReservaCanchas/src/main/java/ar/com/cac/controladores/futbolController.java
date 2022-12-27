package ar.com.cac.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import ar.com.cac.modelos.Canchas;
import ar.com.cac.modelos.CanchasDAO;
import ar.com.cac.modelos.futbol;
import ar.com.cac.modelos.futbolDAO;

/**
 * Servlet implementation class futbolController
 */
@WebServlet("/futbol")
public class futbolController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public futbolController() {
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
			futbolDAO fDAO = new futbolDAO();		
			var listaCanchas = fDAO.getAll();
			
			
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");		    
		    
		    request.setAttribute("canchas", listaCanchas);
		    RequestDispatcher rd = request.getRequestDispatcher("futbol.jsp");
		    rd.forward(request, response);
		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error:" + e);
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

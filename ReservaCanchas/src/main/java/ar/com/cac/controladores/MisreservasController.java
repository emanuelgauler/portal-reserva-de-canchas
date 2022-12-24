package ar.com.cac.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import ar.com.cac.modelos.futbolDAO;
import ar.com.cac.modelos.misReservasDAO;

/**
 * Servlet implementation class misReservasController
 */
@WebServlet("/misreservas")
public class MisreservasController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MisreservasController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			misReservasDAO mrDAO = new misReservasDAO();		
			var misCanchas = mrDAO.getAll();
			
			
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");		    
		    
		    request.setAttribute("misCanchas", misCanchas);
		    RequestDispatcher rd = request.getRequestDispatcher("reservas.jsp");
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

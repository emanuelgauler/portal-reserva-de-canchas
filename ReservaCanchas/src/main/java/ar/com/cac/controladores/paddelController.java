package ar.com.cac.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import ar.com.cac.modelos.futbolDAO;
import ar.com.cac.modelos.paddelDAO;

/**
 * Servlet implementation class paddelController
 */
@WebServlet("/paddel")
public class paddelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paddelController() {
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
			paddelDAO pDAO = new paddelDAO();		
			var listaCanchas = pDAO.getAll();
			
			
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");		    
		    
		    request.setAttribute("canchas", listaCanchas);
		    RequestDispatcher rd = request.getRequestDispatcher("paddel.jsp");
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

package ar.com.cac.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import ar.com.cac.modelos.Reservas;
import ar.com.cac.modelos.ReservasDAO;


/**
 * Servlet implementation class reservasController
 */
@WebServlet("/reservas")
public class reservasController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reservasController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		
		try {
			//fechaCompra =  new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Fecha"));
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date date = format.parse(request.getParameter("Fecha"));
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			
			Reservas reserva =  new Reservas();	
			reserva.setIdCancha(Integer.parseInt(request.getParameter("IdCancha")));
			reserva.setFecha(sqlDate);
			reserva.setHora(request.getParameter("Hora"));
			reserva.setTotalReserva(Double.parseDouble(request.getParameter("TotalReserva")));
			reserva.setIdUsuario(Integer.parseInt(request.getParameter("IdUsuario")));
			System.out.println("Llego acá");
			ReservasDAO rDao = new ReservasDAO();
			rDao.insert(reserva);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}  
		doGet(request, response);
	}

}

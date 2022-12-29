<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Punto Futbol</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous">
        <link rel="stylesheet" href="/Reserva_Canchas/css/Style.css">
    </head>
    <body>
       <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="./index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <img src="/Reserva_Canchas/images/LogoPuntoFutbol.247x32.png" alt="">
            </a>
			<script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
                crossorigin="anonymous"></script>
            <ul  class="nav nav-pills">
                <li class="nav-item"><a href="./futbol" class="nav-link" style="color: green;">Fútbol</a></li>
                <li class="nav-item"><a href="./paddel" class="nav-link" style="color: green;">Padel</a></li>                
                  <li class="nav-item"><span class="nav-link active" aria-current="page"
                        style="background-color: green;">Mis Reservas</span></li>
                <li class="nav-item"><a href="./contacto.jsp" class="nav-link" style="color: green;">Contacto</a></li>
                        	<% if (Integer.parseInt(session.getAttribute("userId").toString()) > 0) { %>							
							<% } else { %>
							<li class="nav-item"><a href="./login.jsp" class="nav-link" style="color: green;">Iniciar Sesión</a></li>
							<% } %>                
            </ul>
        </header>
    </div>
        <main class="container">

            <h1 class="text-center g-5 mt-5 fw-semibold">Mis Reservas</h1>
            <div id="canchas" class="row row-col-auto gy-2 pb-2">          
            <c:forEach items="${misCanchas}" var="item">       
            <div class="card col-4 card px-1 mx-1 border border-success" style="width: 21rem;">                 	
					  <div class="card-header text-bg-success opacity-75 fst-italic text-capitalize text-center">
						  <h3>${ item.getType() } </h3>
						  </div>
					<div class="card-body">					
						<ul class="list-group list-group-flush">
							<li class="list-group-item" id="mrTipoCancha_${item.getIdUsuario()}"> Tipo: ${item.getTipoCancha()}</li>		
							<li class="list-group-item" id="mrCantidadPorEquipo_${item.getIdUsuario()}"> Jugadores por equipo: ${item.getCantidadPorEquipo()}</li>
							<li class="list-group-item" id="mrMedidas_${item.getIdUsuario()}"> Medidas: ${item.getMedidas()}</li>				
							<li class="list-group-item" id="mrFecha_${item.getIdUsuario()}">Fecha: ${ item.getFecha() }</li>
							<li class="list-group-item" id="mrHora_${item.getIdUsuario()}">Hora: ${ item.getHora() }</li>
							<li class="list-group-item" id="mrTotalReserva_${item.getIdUsuario()}"> Total Reserva: ${ item.getTotalReserva() }</li>
							
						</ul>
						
					</div>
				</div>            
			</c:forEach>
        </div>

        </main>
     
        <footer></footer>
    </body>
</html>
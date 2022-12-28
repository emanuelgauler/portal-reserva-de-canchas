<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es_AR">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancha de Padel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="/Reserva_Canchas/css/Style.css">
</head>
<body>
 <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="./index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <img src="/Reserva_Canchas/images/LogoPuntoFutbol.247x32.png" alt="">
            </a>

            <ul  class="nav nav-pills">
            <li class="nav-item"><a href="./futbol" class="nav-link" style="color: green;">Fútbol</a></li>
                <li class="nav-item"><span class="nav-link active" aria-current="page"
                        style="background-color: green; ">Padel</span></li>
                        <li class="nav-item"><a href="./misreservas" class="nav-link" style="color: green;">Mis Reservas</a></li>                
                <li class="nav-item"><a href="./contacto.jsp" class="nav-link" style="color: green;">Contacto</a></li>
<<<<<<< Updated upstream
                <li class="nav-item"><a href="./login.jsp" class="nav-link" style="color: green;">Iniciar Sesión</a></li>
=======
                <% if (Integer.parseInt(session.getAttribute("userId").toString()) > 0) { %>							
							<% } else { %>
							<li class="nav-item"><a href="./login.jsp" class="nav-link" style="color: green;">Iniciar Sesión</a></li>
							<% } %>   
>>>>>>> Stashed changes
            </ul>
        </header>
    </div>

    <main class="container">
        <div id="canchas" class="row row-col-auto gy-2 pb-2">
            <c:forEach items="${canchas}" var="item">            
            	<div class="col-4 card px-1 mx-1" style="width: 21rem;">
					<div id="football_img_slider_${item.getIdCancha()}" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-inner" style="height: 12rem;">
							<div class="carousel-item active">
								<img src="/Reserva_Canchas/images/PaddleCemento.jpg" alt="Paddle Cemento">
							</div>
							<div class="carousel-item">
								<img src="/Reserva_Canchas/images/PaddleCemento2.jpg" alt="Paddle Cemento">
							</div>
						</div>
						<button class="carousel-control-prev" type="button" data-bs-target="#football_img_slider_${item.getIdCancha()}" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#football_img_slider_${item.getIdCancha()}" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
						</button>
					</div>
					<div class="card-body">
						<h3 class="card-title fs-4">${ item.getTipoCancha() }</h3>
						<ul class="list-group list-group-flush" id="${ item.getIdCancha() }" >
							<li style= "display:none" class="list-group-item" id="pIdCancha_${item.getIdCancha()}" value="${item.getIdCancha()}"> ${item.getIdCancha()}</li>
							<li style= "display:none" class="list-group-item" id="pTipoCancha_${item.getIdCancha()}" data-valor="${ item.getTipoCancha() }"> Tipo: ${ item.getTipoCancha() }</li>
							<li class="list-group-item" id="pSuelo_${item.getIdCancha()}" data-valor="${item.getSuelo()}"> Suelo: ${item.getSuelo() }</li>
							<li class="list-group-item" id="pMedidas_${item.getIdCancha()}" data-valor="${item.getMedidas()}">Medidas: ${ item.getMedidas() }</li>
							<li class="list-group-item" id="pPrecio_${item.getIdCancha()}" data-valor="${item.getPrecio()}">Precio: ${ item.getPrecio() }</li>
							<li style= "display: none" class="list-group-item" id="pType_${item.getIdCancha()}" data-valor="${item.getType()}">${ item.getType() }</li>
						</ul>
						<div class="card-footer">
							<a class="btn btn-primary" style="background-color: green; border-color: green;" onclick="reservarCancha (${item.getIdCancha()})">Reservar</a>
						</div>
					</div>
				</div>            
			</c:forEach>
        </div>
    </main>
    <footer>
        <div class="navfooter py-3">
            <div class="row align-items-center">

                <div class="col text-center">
                    <h5 class="card-title fw-bolder ps-3 pt-3 text-center"> CONTACTO </h5>
                    T. +54 9 1234 4123 / +54 9 9874 6541
                    <br> puntofutbol@pruebas.com.ar
                    <h5 class="card-title fw-bolder ps-3 pt-3">ENCUÉNTRENOS</h5>
                    Av siempre viva 123
                    <br>Copyright © 2022
                </div>
            </div>
        </div>

    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

    <script src="/Reserva_Canchas/js/paddle.js"></script>
</body>
</html>
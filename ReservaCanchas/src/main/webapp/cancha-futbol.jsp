<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es_AR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancha de Futbol</title>
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
                <li class="nav-item"><span class="nav-link active" aria-current="page"
                        style="background-color: green;">Fútbol</span></li>
                <li class="nav-item"><a href="./cancha-paddel.jsp" class="nav-link" style="color: green;">Padel</a></li>
                <li class="nav-item"><a href="./contacto.jsp" class="nav-link" style="color: green;">Contacto</a></li>
                <li class="nav-item"><a href="./login.jsp" class="nav-link" style="color: green;">Iniciar Sesión</a></li>
            </ul>
        </header>
    </div>

    <main class="container">
        <div id="canchas" class="row row-col-auto gy-2 pb-2">
            <div class="col-4 card px-1 mx-1" style="width: 21rem;">
                <div id="football_img_slider_0" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner" style="height: 12rem;">
                        <div class="carousel-item active">
                            <img src="/Reserva_Canchas/images/futbol5.jpg" alt="Fútbol 5">
                        </div>
                        <div class="carousel-item">
                            <img src="/Reserva_Canchas/images/futbol5_2.jpg" alt="Fútbol 5">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#football_img_slider_0" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#football_img_slider_0" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    </button>
                </div>
                <div class="card-body">
                    <h3 class="card-title">Nombre de la cancha</h3>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Tipo de cancha</li>
                        <li class="list-group-item">Medidas de la cancha</li>
                        <li class="list-group-item">Precio de la reserva</li>
                    </ul>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary" style="background-color: green; border-color: green;">Reservar</a>
                    </div>
                </div>
            </div>
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

    <script src="js/canchas-futbol.js"></script>
</body>

</html>
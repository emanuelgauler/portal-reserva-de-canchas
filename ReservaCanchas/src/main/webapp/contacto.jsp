<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Punto Futbol / Contacto</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
    crossorigin="anonymous">
    <link rel="stylesheet" href="/Reserva_Canchas/css/Style.css">
</head>
<body>
    <header>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-sm bg-light nav-bg-color">
        <div class="container-fluid">
    
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="d-flex justify-content-center">
                <img src="/Reserva_Canchas/images/LogoPuntoFutbol.png" alt="LogoPuntoFutbol" class="img-logo-menu"/>
                <div hidden>
                <h1 class="card-title fw-bolder ps-3 pt-3">Punto Futbol</h1></div>
            </div>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                <a class="nav-link cl-link-menu-select fw-semibold fs-4 text-dark " aria-current="page" href="./cancha-futbol.jsp">Futbol</a>
            </li>
            <li class="nav-item">
                <a class="nav-link cl-link-menu fw-semibold fs-4 text-dark" href="./cancha-paddel.jsp">Padel</a>
            </li>
            <li class="nav-item">
                <a class="nav-link cl-link-menu fw-semibold fs-4 text-dark" href="./contacto.jsp">Contacto</a>
            </li>
            <li class="nav-item">
                <a class="nav-link cl-link-menu fw-semibold fs-4 text-dark " href="./login.jsp">Iniciar Sesión</a>
            </li>
            </ul>
        </div>
        </div>
    </nav>
    </header> 
<main>
<h1 class="text-center mt-5 mb-5">Contactános</h1>
<form class="align-items-center">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6 mb-3">
            <label for="exampleFormControlInput1" class="form-label">Gmail:</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="nombre@ejemplo.com">
        </div>
    </div>
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <label for="exampleFormControlTextarea1" class="form-label">Introduzca su duda/consulta:</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    </div>
</form>
<p class="mt-5 text-center">Teléfonos: +54 9 1234 4123 / +54 9 9874 6541</p>
<p class="text-center">Gmail: puntofutbol@pruebas.com.ar</p>
</main>
</body>

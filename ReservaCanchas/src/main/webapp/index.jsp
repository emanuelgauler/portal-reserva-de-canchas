<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ES">
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
        <div  class="d-flex justify-content-center">
         <a href="./index.jsp">
          <img src="/Reserva_Canchas/images/LogoPuntoFutbol.png" alt="LogoPuntoFutbol" class="img-logo-menu"/>
          <div hidden>
          <h1 class="card-title fw-bolder ps-3 pt-3">Punto Futbol</h1></div>
        </a>
        </div>
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            
            <a class="nav-link cl-link-menu-select fw-semibold fs-4 text-dark " aria-current="page" href="./cancha-futbol.jsp">Fútbol</a>
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
    <div id="carouselCanchas" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="3000">
            <img src="/Reserva_Canchas/images/futsal3.jpg" class="d-block w-100" alt="Imagen2 futsal">
            </div>    
            <div class="carousel-item" data-bs-interval="3000">
                <img src="/Reserva_Canchas/images/futbol5_2.jpg" class="d-block w-100" alt="Imagen futbol8">
              </div>      
          <div class="carousel-item" data-bs-interval="3000">
            <img src="/Reserva_Canchas/images/futsal4.jpg" class="d-block w-100" alt="Imagen1 futsal">
          </div>         
          <div class="carousel-item" data-bs-interval="3000">
            <img src="/Reserva_Canchas/images/futbol5.jpg" class="d-block w-100" alt="Imagen futbol5">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselCanchas" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselCanchas" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

    <div class="container text-center">
        <div class="row g-2">
          <div class="col-6">
            <div class="p-3 border bg-light card text-bg-dark">
                <img src="/Reserva_Canchas/images/FutbolGrid.jpg" class="card-img ima-opacity">
                <div class="card-img-overlay text-margin-bs">                 
                <h2 class="fw-semibold fs-1 p-5 fs-1 text-center">Fútbol</h2>  
                <a class="btn btn-outline-light" href="./cancha-futbol.jsp" role="button">Reserva tu cancha</a>                 
            </div>
            </div>
        </div>
       
            <div class="col-6">
              <div class="p-3 border bg-light card text-bg-dark">
                  <img src="/Reserva_Canchas/images/FutsalGrid.jpg" class="card-img ima-opacity">
                  <div class="card-img-overlay text-margin-bs">
                    <h2 class="fw-semibold fs-1 p-5 fs-1 text-center">Fútbol Sala</h2>  
                    <a class="btn btn-outline-light" href="./cancha-futbol.jsp" role="button">Reserva tu cancha</a>  
                  </div>
              </div>

      </div>
    
      <div class="container text-center">
        <div class="row g-2">
          <div class="col-6">
            <div class="p-3 border bg-light card text-bg-dark">
                <img src="/Reserva_Canchas/images/padelGrid.jpg" class="card-img ima-opacity">
                <div class="card-img-overlay text-margin-bs">
                    <h2 class="fw-semibold fs-1 p-5 fs-1 text-center">Padel</h2>  
                    <a class="btn btn-outline-light" href="./cancha-paddel.jsp" role="button">Reserva tu cancha</a>  
                </div>
            </div>
        </div>
       
            <div class="col-6">
              <div class="p-3 border bg-light card text-bg-dark">
                 
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13140.764248783731!2d-58.4486426604492!3d-34.5740318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5979e2a507f%3A0x4480a5e31fab55ef!2sLOS%20AMIGOS%20FUTBOL%205%20PALERMO!5e0!3m2!1ses!2sar!4v1666915856876!5m2!1ses!2sar" 
                  width="600" height="400" style="border: 100px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  
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
</body>
</html>

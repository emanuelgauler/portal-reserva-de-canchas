<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="es_AR">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Punto Futbol / Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="css/StyleLogin.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-icons.css">
    <link rel="shortcut icon" href="images/fav.ico/favicon-96x96_sf.png" type="image/x-icon">
  </head>

  <body>
    <form class="row g-3 p-5 d-flex justify-content-center text-secondary" method="post" action="login">
      <div class="margin-form rounded-5 p-5">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-3">
              <img src="images/loginFutbol.png" alt="login-icon" class="img-logo-login" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col text-center">
            <h2 class="fw-semibold fs-1">Login</h2>
          </div>
        </div>
        <div class="row">
           <div class="col">
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-circle"></i></span>
              <input id="mail" name="mail" type="text" class="form-control" placeholder="Usuario"
                aria-label="Username" aria-describedby="addon-wrapping">
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping"><i class="bi bi-lock-fill"></i></span>
              <input id="password" type="password" name="password" class="form-control" placeholder="Contraseña"
                aria-label="Password" aria-describedby="addon-wrapping">
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-check d-flex gap-1">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              <label class="form-check-label fst-italic" for="flexCheckDefault">
                Recordar
              </label>
            </div>
          </div>
        </div>
        <div class="row">
            <button type="submit" class="col btn btn-success mt-3 mx-1">Login</button>
            <button type="button" class="col btn mt-3 btn-outline-dark mx-1" onclick="history.back();">Cancelar</button>
        </div>
        <div class="row">
          <div class="col d-flex gap-1 justify-content-center">
            <p class="text-sm-start">¿No tiene cuenta?</p>
            <a href="registro.jsp" class="text-decoration-none">Registrarse</a>
          </div>
        </div>
    </form>

  </body>

  </html>
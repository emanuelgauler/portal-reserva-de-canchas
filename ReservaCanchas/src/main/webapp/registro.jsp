<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es_AR">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <title>Reserva de Canchas - Registro nuevo usuario</title>
    </head>

    <body>
        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="./index.jsp"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                    <img src="/Reserva_Canchas/images/LogoPuntoFutbol.247x32.png" alt="">
                </a>

                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="/cancha-futbol.jsp" class="nav-link" style="color: green;">Fútbol</a>
                    </li>
                    <li class="nav-item"><a href="./cancha-paddel.jsp" class="nav-link" style="color: green;">Padel</a>
                    </li>
                    <li class="nav-item"><a href="./contacto.jsp" class="nav-link" style="color: green;">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <span class="nav-link active" aria-current="page" style="background-color: green;">
                            Registrando
                        </span>
                    </li>
                </ul>
            </header>
        </div>

        <main>
            <div class="container">
                <div class="d-flex aligns-items-center justify-content-center vw-70 ps-5 border border-1">
                    <form action="<%= request.getContextPath() %>/usuarios" method="post">
                        <div class="col-6">
                            <label for="nombre_apellido_in" class="form-label">Nombre y Apellido</label>
                            <input id="nombre_apellido_in" name="nombre_apellido_in" type="text" class="form-control"
                                aria-describedby="names_help_block" required />
                            <span id="names_help_block" class="form-text">
                                Ingrese su/s nombre/s luego su/s apellido/s, separados por espacios
                            </span>
                        </div>
                        <div class="col-6">
                            <label for="email_in" class="form-label">email</label>
                            <input id="email_in" name="email_in" type="email" class="form-control" aria-describedby="email_help_block"
                                required />
                            <span id="email_help_block" class="form-text">
                                Ingrese su correo electrónico. No se preocupe, no lo compartiremos.
                            </span>
                        </div>
                        <div class="col-6">
                            <label for="password_in" class="form-label">Contraseña</label>
                            <input type="password" id="password_in" name="password_in" class="form-control"
                                aria-describedby="password_help_block" required />
                            <div id="password_help_block" class="form-text">
                                Tu contraseña debe tener entre 8 y 20 caracteres, contener letras y números, y no debe
                                contener
                                espacios,
                                caracteres especiales ni emoji.
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                <label class="form-check-label" for="invalidCheck">
                                    Acepto los <a href="#">términos y condiciones</a>
                                </label>
                                <div class="invalid-feedback">
                                    Debe estar de acuerdo antes de enviar.
                                </div>
                            </div>
                        </div>
                        <button id="confirm_button" class="col-3 btn btn-success">Confirmar</button>
                        <button class="col-3 btn btn-light">Cancelar</button>
                    </form>
                </div>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>

        <script>
                let error_code = "<%= request.getParameter("last_error") %>";
                let error_message = "<%= request.getParameter("error_message") %>";

                if ( error_code != null && error_message != null ) {
                    alert( error_code + "\n" + error_message );
                }
                    /*
            email_in.onchange = (event) => {
                let value = event.target.value;
                if (value.length > 0) {
                    fetch(`http://localhost:9000/Reserva_Canchas/usuarios?query=find&email=${value}`)
                        .then(response => response.json())
                        .then(data => alert(data.message))
                }
            }
            confirm_button.addEventListener("click", function (e) {
                fetch("http://localhost:9000/Reserva_Canchas/usuarios")
                .then( (response) => response.json() )
                .then( (data) => alert(data.message) )
                .catch( (error) => console.log( error ) );
            })
            */
        </script>
    </body>

    </html>
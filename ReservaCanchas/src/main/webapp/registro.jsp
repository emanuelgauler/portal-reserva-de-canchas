<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es_AR">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="shortcut icon" href="images/fav.ico/favicon-96x96_sf.png" type="image/x-icon">
        <title>Reserva de Canchas - Registro nuevo usuario</title>
    </head>

    <body>
        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="index.jsp"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                    <img src="images/LogoPuntoFutbol.247x32.png" alt="">
                </a>

                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="cancha-futbol.jsp" class="nav-link" style="color: green;">Fútbol</a>
                    </li>
                    <li class="nav-item"><a href="cancha-paddel.jsp" class="nav-link" style="color: green;">Padel</a>
                    </li>
                    <li class="nav-item"><a href="contacto.jsp" class="nav-link" style="color: green;">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <span class="nav-link active" aria-current="page" style="background-color: green;">
                            Registrando
                        </span>
                    </li>
                </ul>
            </header>
        </div>

        <div id="toast" class="toast position-absolute top-25 start-50 translate-middle-x" role="alert"
            aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Registro del Usuario</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div id="toast-body" class="toast-body">
                Mensaje recibido después de enviar el formulario
            </div>
        </div>

        <main class="container">
            <div class="m-4 ps-1 d-flex justify-content-center" style="height: auto;">
                <div class="py-2 px-1 rounded-3" style="width: 600px; height: auto; background-color: lightgreen;">
                    <h1 class="h1 pb-3 text-center">Registrate</h1>
                    <form action="<%= request.getContextPath() %>/usuarios" method="post" class="needs-validation"
                        novalidate>
                        <div class="row mb-4 mx-0">
                            <label for="apellido_in" class="col-sm-2 col-form-label">Apellidos</label>
                            <div class="col-sm-10">
                                <input id="apellido_in" name="apellido_in" type="text" class="form-control"
                                    placeholder="Ingrese su/s apellido/s separados por espacios" required />
                            </div>
                        </div>

                        <div class="row mb-4 mx-0">
                            <label for="nombre_in" class="col-sm-2 col-form-label">Nombres</label>
                            <div class="col-sm-10">
                                <input id="nombre_in" name="nombre_in" type="text" class="form-control"
                                    placeholder="Ingrese su/s nombre/s separados por espacios" required />
                            </div>
                        </div>

                        <div class="row mb-1 mx-0">
                            <label for="email_in" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input id="email_in" name="email_in" type="email" class="form-control"
                                    placeholder="Ingrese su correo electrónico" required />
                            </div>
                        </div>

                        <div id="alert_email" class="d-none">
                            <div class="row mb-4 mx-4 alert alert-warning align-items-center p-1" role="alert">
                                <div class="col-sm-2 border border-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                                        class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16"
                                        role="img" aria-label="Warning:">
                                        <path
                                            d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>
                                </div>
                                <small class="col-sm-8 border border-1">El correo electrónico ya está registrado</small>
                            </div>
                        </div>

                        <div class="row mt-4 mx-0">
                            <label for="password_in" class="col-sm-2 col-form-label">Contraseña</label>
                            <div class="col-sm-10">
                                <input id="password_in" name="password_in" type="password" class="form-control"
                                    placeholder="Una contraseña entre 8 y 20 caracteres"
                                    aria-describedby="password_help_block" pattern="[a-zA-Z0-9]{8,20}"
                                    title="Debe contener entre 8 y 20 caracteres sin espacios o caracteres especiales."
                                    required />
                                <div id="password_help_block" class="row mb-4 ms-2 form-text text-left">
                                    Tu contraseña debe tener entre 8 y 20 caracteres, contener letras y números, y no
                                    debe
                                    contener espacios, caracteres especiales.
                                    <ul>
                                        <li>entre 8 y 20 caracteres</li>
                                        <li>contiene letras mayúsculas A-Z</li>
                                        <li>contiene letras minúsculas a-z</li>
                                        <li>contiene números</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row mx-1">
                            <button id="confirm_button" class="col-6 btn btn-success" type="submit">Confirmar</button>
                            <button id="cancel_button" class="col-6 btn btn-light">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>

        <script>
            const params = new Proxy(new URLSearchParams(window.location.search), {
                get: (searchParams, prop) => searchParams.get(prop)
            });
            let result = params.result;
            let message = params.message;

            function show_alert_email() {
                document.getElementById("alert_email")
                    .className = 'd-block';
                const email_in = document.getElementById("email_in");
                email_in.className = "form-control border border-1 border-danger";
                email_in.style.outline = 'red solid 3px;';
                email_in.focus();
            }

            function hide_alert_email() {
                document.getElementById("alert_email")
                    .className = 'd-none';
                const email_in = document.getElementById("email_in");
                email_in.className = "form-control border border-1";
                email_in.style.outline = '';
            }

            function toast_text() {
                return document.getElementById("toast-body");
            }

            if (result === "success") {
                const toast = document.getElementById("toast");
                toast.className += " bg-success text-white";
                toast_text().innerHTML = "Se registró con éxito";
                show_toast();
            }
            if (result === "fail") {
                const toast = document.getElementById("toast");
                toast.className = toast.className + " bg-danger + text-white";
                toast_text().innerHTML = message;
                show_toast();
            }

            function show_toast() {
                var toastElList = [].slice.call(document.querySelectorAll('.toast'))
                var toastList = toastElList.map(function (toastEl) {
                    return new bootstrap.Toast(toastEl)
                })
                toastList.forEach(toast => toast.show())
            }

            function notify_email_status(data) {
                if (data.exists) show_alert_email();
                else hide_alert_email();
                console.log(data.exists ? "el email ya existe" : "el email aún no se registró");
            }

            email_in.onchange = (event) => {
                let value = event.target.value;
                let url = "http://<%= request.getServerName() %>:<%= request.getServerPort() %><%=request.getContextPath() %>/usuarios?email=" + value;
                console.log(url);
                if (value.length > 0) {
                    fetch(url)
                        .then(response => response.json())
                        .then(data => notify_email_status(data))
                }
                /*
                */
            }

            (function () {
                'use strict'

                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.querySelectorAll('.needs-validation')

                // Loop over them and prevent submission
                Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault()
                                event.stopPropagation()
                            }

                            form.classList.add('was-validated')
                        }, false)
                    })
            })()

            cancel_button.addEventListener( 'click', () => {
                history.back();
            });
        </script>
    </body>

    </html>
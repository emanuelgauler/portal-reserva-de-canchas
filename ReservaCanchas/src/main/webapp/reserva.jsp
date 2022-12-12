<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <header>
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
                crossorigin="anonymous"></script>
            <nav class="navbar navbar-expand-sm bg-light nav-bg-color">
                <div  class="container-fluid">

                    <button class="navbar-toggler" type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav" aria-controls="navbarNav"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="d-flex justify-content-center">
                            <a href="./index.jsp">
                                <img src="/Reserva_Canchas/images/LogoPuntoFutbol.png"
                                    alt="LogoPuntoFutbol"
                                    class="img-logo-menu"/>
                                <div hidden>
                                    <h1 class="card-title fw-bolder ps-3 pt-3">Punto
                                        Futbol</h1></div>
                            </a>
                        </div>
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link cl-link-menu-select
                                    fw-semibold fs-4 text-dark "
                                    aria-current="page"
                                    href="./cancha-futbol.jsp">F�tbol</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link cl-link-menu fw-semibold fs-4
                                    text-dark" href="./cancha-paddle.jsp">Padel</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link cl-link-menu fw-semibold fs-4
                                    text-dark" href="./contacto.jsp">Contacto</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link cl-link-menu fw-semibold fs-4
                                    text-dark " href="./login.jsp">Iniciar
                                    Sesi�n</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>

            <h1 class="text-center mt-5 fw-semibold">Confirmar Reserva</h1>
            <form class="row g-3 p-5 d-flex justify-content-center
                text-secondary">
                <div class="containerReserva
                    justify-content-center rounded-3">

                    <div class="row g-2 justify-content-center">
                        <div class="alert alert-secondary text-center"
                            role="alert">
                            <span style="color: green;" id="lbltipoCancha"></span>
                            <div id="lbltipo">
                                <br> <b><span> Tipo: </span></b>
                                <span id="lblcancha"></span>
                            </div>
                            <div id="lbljugador">
                                <b><span>Jugadores por equipo: </span></b>
                                <span id="lblcantidadEquipo"></span>
                            </div>
                            <div id="lbltipoSuelo">
                                <b><span> Suelo: </span></b>
                                <span id="lblsuelo"></span>
                            </div>
                            <div id="lblmedida">
                                <b><span> Medidas: </span></b>
                                <span id="lblmedidas"></span>
                            </div>
                            <div id="lblcosto">
                                <b><span> Precio: $ </span></b>
                                <span id="lblprecio"></span>
                            </div>

                        </div>

                    </div>
                    <div class="row g-2 justify-content-center">
                        <div class="col-5 g-5">
                            <label for="staticFecha" class="col-sm-2
                                col-form-fecha">Fecha</label>
                            <input id="dtReserva" type="date" onkeydown="return
                                false">
                        </div>


                        <div class="col-1 g-5">
                            <label for="staticHora" class="col-sm-1
                                col-form-hora">Hora</label>
                        </div>
                        <div class="col-2 g-5">
                            <select class="form-select form-select-sm col-sm-10"
                                id="timeReserva"
                                aria-label=".form-select-sm hora">
                                <option selected>Seleccionar</option>
                                <option>8:00</option>
                                <option>9:00</option>
                                <option>10:00</option>
                                <option>11:00</option>
                                <option>12:00</option>
                                <option>13:00</option>
                                <option>14:00</option>
                                <option>15:00</option>
                                <option>16:00</option>
                                <option>17:00</option>
                                <option>18:00</option>
                                <option>19:00</option>
                                <option>20:00</option>
                                <option>21:00</option>
                            </select>
                        </div>
                    </div>

                    <div class="row g-2">
                        <button type="button" class="btn btn-success"
                            id="btnConfirmar"
                            data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">Confirmar</button>
                    </div>



                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop"
                        data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="staticBackdropLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5"
                                        id="staticBackdropLabel">Reserva
                                        Confirmada</h1>
                                    <button type="button" class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body fst-italic">
                                    <!--<b><br><span id="lbltipoCancha" ></span></b> -->
                                    <div id="cancha" style="color: green;">
                                        <b><span> Cancha: </span></b>
                                        <b><span id="lbltipoCancha1"></span></b>
                                    </div>
                                    <div id="lbltipo1">
                                        <br> <b><span> Tipo: </span></b>
                                        <span id="lblcancha1"></span>
                                    </div>
                                    <div id="lbljugador1">
                                        <b><span>Jugadores por equipo: </span></b>
                                        <span id="lblcantidadEquipo1"></span>
                                    </div>
                                    <div id="lbltipoSuelo1">
                                        <b><span> Suelo: </span></b>
                                        <span id="lblsuelo1"></span>
                                    </div>
                                    <div id="lblmedida1">
                                        <b><span> Medidas: </span></b>
                                        <span id="lblmedidas1"></span>
                                    </div>
                                    <div id="lblcosto1">
                                        <b><span> Precio: $ </span></b>
                                        <span id="lblprecio1"></span>
                                    </div>
                                    <div id="lblfecha">
                                        <b><span> Fecha: </span></b>
                                        <span id="dtReserva1"></span>
                                    </div>
                                    <div id="lblhora">
                                        <b><span> Hora: </span></b>
                                        <span id="timeReserva1"></span>
                                    </div>



                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn
                                        btn-outline-success"
                                        data-bs-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>







                </div>
            </form>

        </main>
        <script src="/Reserva_Canchas/js/reserva.js" type="text/javascript"></script>
        <footer></footer>
    </body>
</html>
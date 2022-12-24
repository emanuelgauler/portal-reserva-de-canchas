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
        <!-- <script src="http://code.jquery.com/jquery-latest.js"> -->
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
                <li class="nav-item"><a href="./misreservas" class="nav-link" style="color: green;">Fútbol</a></li>
                <li class="nav-item"><a href="./paddel" class="nav-link" style="color: green;">Padel</a></li>                
                  <li class="nav-item"><span class="nav-link active" aria-current="page"
                        style="background-color: green;">Mis Reservas</span></li>
                <li class="nav-item"><a href="./contacto.jsp" class="nav-link" style="color: green;">Contacto</a></li>
                                <li class="nav-item"><a href="./login.jsp" class="nav-link" style="color: green;">Iniciar Sesión</a></li>
            </ul>
        </header>
    </div>
        <main>

            <h1 class="text-center mt-5 fw-semibold">Confirmar Reserva</h1>
            <form class="row g-3 p-5 d-flex justify-content-center
                text-secondary">
                <div class="containerReserva
                    justify-content-center rounded-3">

                    <div class="row g-2 justify-content-center ">
                        <div class="alert alert-secondary text-center text-capitalize" 
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
                            id="btnConfirmar" onclick="reservarCancha()"
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
                                    <div class="text-capitalize" id="cancha" style="color: green;">
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
                                    <button type="button"  class="btn
                                        btn-outline-success" onclick="misReservas()"
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
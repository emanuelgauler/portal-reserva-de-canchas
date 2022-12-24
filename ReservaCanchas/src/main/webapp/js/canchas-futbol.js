
function reservarCancha(id){
	
let idCanchaFutbol= document.getElementById('fIdCancha_'+id).value;
let tipoCanchaFutbol= document.getElementById('fTipoCancha_'+id).getAttribute("data-valor");
let jugadoresFutbol= document.getElementById('fCantidadEquipo_'+id).getAttribute("data-valor");
let precioFutbol= document.getElementById('fPrecio_'+id).getAttribute("data-valor");
let typeFutbol= document.getElementById('fType_'+id).getAttribute("data-valor");
console.log(tipoCanchaFutbol);
console.log(idCanchaFutbol);
console.log(jugadoresFutbol);
console.log(precioFutbol);



	localStorage.setItem("canchaSeleccionada",idCanchaFutbol)
	localStorage.setItem("tipoCancha",tipoCanchaFutbol)
	localStorage.setItem("cantidadJugadores",jugadoresFutbol)
	localStorage.setItem("precio",precioFutbol)
	localStorage.setItem("type",typeFutbol)
	window.location.replace("./reserva.jsp")
	
	
}

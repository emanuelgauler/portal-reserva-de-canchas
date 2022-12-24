window.addEventListener('load', () => {
    setDateInputFormat();
    setInputEvent();
    retrieveLastData();    
});

const setInputEvent = () => {
    let reserva = document.getElementById("dtReserva");
    reserva.addEventListener('change', () => {
        const reserva1 = document.getElementById("dtReserva1");
        reserva1.innerText = reserva.value;
        
    });

    let reservaHora = document.getElementById("timeReserva");   
    reservaHora.addEventListener('click',() => {
        const reservaHora1 = document.getElementById("timeReserva1");
        reservaHora1.innerText = reservaHora.value;

    });
    
};

const getDate = () => new Date().toISOString().slice(0, 10);

const  setDateInputFormat = () => {
    let reserva = document.getElementById("dtReserva");
    reserva.min = getDate();
}


const retrieveLastData = () => {
   let seccion = localStorage.getItem("type"); 
    lblcancha.innerText = localStorage.getItem("tipoCancha");
    lblprecio.innerText = localStorage.getItem("precio");
   	lblcancha1.innerText = localStorage.getItem("tipoCancha");   
    lblprecio1.innerText = localStorage.getItem("precio");
    lbltipoCancha.innerText = localStorage.getItem("type");
    lbltipoCancha1.innerText = localStorage.getItem("type");  
   
    if(seccion === "padel")  
    {
        mostrarPadel();
    }
    if(seccion === "futbol")
    {
        mostrarFutbol();
    }
};

const mostrarPadel = () => {
    
    lbljugador.hidden = true;
    lbljugador1.hidden = true;    
    lblsuelo.innerText = localStorage.getItem("suelo");
    lblmedidas.innerText = localStorage.getItem("medidas");
    lblsuelo1.innerText = localStorage.getItem("suelo");
    lblmedidas1.innerText = localStorage.getItem("medidas");
}

const mostrarFutbol = () => {
   
    lbltipoSuelo.hidden = true;
    lblmedida.hidden = true;
    lbltipoSuelo1.hidden = true;
    lblmedida1.hidden = true;   
    lblcantidadEquipo.innerText = localStorage.getItem("cantidadJugadores");
    lblcantidadEquipo1.innerText = localStorage.getItem("cantidadJugadores");
    

}

const reservarCancha = () => {	
	console.log("envio cambios");

	const fecha = document.getElementById("dtReserva");
	const hora = document.getElementById("timeReserva");
	let params = {
  		"Fecha": fecha.value,
  		"Hora": hora.value,
  		"TotalReserva": localStorage.getItem("precio"),
  		"IdUsuario": 1,
  		"IdCancha": localStorage.getItem("canchaSeleccionada"),
	};

	let query = Object.keys(params)
             .map(k => encodeURIComponent(k) + '=' + encodeURIComponent(params[k]))
             .join('&');
	
	fetch( './reservas?'+ query,
	{
		method: 'POST'
	})
    .then( response => response.json() )
    .then( data => {
        // Do something with response.
    }).catch((e) => 
    {
		console.log("e");
	});
	
}

const misReservas = () => window.location.replace("./misreservas");

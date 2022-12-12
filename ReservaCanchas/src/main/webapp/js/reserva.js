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
    let data = JSON.parse(sessionStorage.getItem("canchaSeleccionada"));
    console.log(data);
    sessionStorage.clear("canchaSeleccionada");
    lblcancha.innerText = data.tipo_de_cancha;    
    lblprecio.innerText = data.precio;
    lblcancha1.innerText = data.tipo_de_cancha;    
    lblprecio1.innerText = data.precio;
    lbltipoCancha.innerText = data.type;
    lbltipoCancha1.innerText = data.type;
  
    
    
   
    if(data.type === "padel")  
    {
        mostrarPadel(data);
    }
    if(data.type === "futbol")
    {
        mostrarFutbol(data);
    }
};

const mostrarPadel = (data) => {
    
    lbljugador.hidden = true;
    lbljugador1.hidden = true;    
    lblsuelo.innerText = data.suelo;
    lblmedidas.innerText = data.medidas;
    lblsuelo1.innerText = data.suelo;
    lblmedidas1.innerText = data.medidas;
}

const mostrarFutbol = (data) => {
   
    lbltipoSuelo.hidden = true;
    lblmedida.hidden = true;
    lbltipoSuelo1.hidden = true;
    lblmedida1.hidden = true;   
    lblcantidadEquipo.innerText = data.cantidad_por_equipo;
    lblcantidadEquipo1.innerText = data.cantidad_por_equipo;
    console.table(data);

}

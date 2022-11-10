


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

const setDateInputFormat = () => {
    let reserva = document.getElementById("dtReserva");
    reserva.min = getDate();
}


const retrieveLastData = () => {
    let data = JSON.parse(sessionStorage.getItem("canchaSeleccionada"));
    sessionStorage.clear("canchaSeleccionada");
    console.log(data);
    lblcancha.innerText = data.tipo_de_cancha;
    lblcantidadEquipo.innerText = data.cantidad_por_equipo;
    lblprecio.innerText = data.precio;
    lblcancha1.innerText = data.tipo_de_cancha;
    lblcantidadEquipo1.innerText = data.cantidad_por_equipo;
    lblprecio1.innerText = data.precio;
    
    
};



const reservarCancha = (e) => {
   console.log("Ingresando acá" + e);
   //console.log(soccer_fields[e]);
   sessionStorage.setItem("canchaSeleccionada", JSON.stringify(paddle_fields[e]))
   //redirigir
   window.location.replace("./reserva.jsp")
};

 paddle_fields = [
   {
      "imgs": [
         { "path": "/Reserva_Canchas/images/PaddleCemento.jpg", "desc": "Piso Cemento" },
         { "path": "/Reserva_Canchas/images/PaddleCemento2.jpg", "desc": "Piso Cemento" }
      ],
      "tipo_de_cancha": "Cancha de Cemento",
      "suelo": "Cemento",
      "medidas": "20mts x 10mts",
      "precio": 3000,
      "type": "padel"
   },
   {
      "imgs": [
         { "path": "/Reserva_Canchas/images/PaddleCesped.jpg", "desc": "Piso Cesped" },
         { "path": "/Reserva_Canchas/images/PaddleCesped2.jpg", "desc": "Piso Cesped" }
      ],
      "tipo_de_cancha": "Cancha de Césped y Caucho",
      "suelo": "Cesped",
      "medidas": "20mts x 10mts",
      "precio": 5000,
      "type": "padel"
   }
,
   {
      "imgs": [
         { "path": "/Reserva_Canchas/images/PaddleArena.jpg", "desc": "Piso con Arena" },
         { "path": "/Reserva_Canchas/images/PaddleArena2.jpg", "desc": "Piso con Arena" }
      ],
      "tipo_de_cancha": "Cancha de Césped y Arena",
      "suelo": "Arena",
      "medidas": "20mts x 10mts",
      "precio": 5000,
      "type": "padel"
   }
];

function load_paddle_fields_from(paddle_fields) {

   function load_imgs_for(field) {
      return field.imgs.reduce((html, img, idx) => {
         html += `<div class="carousel-item ${idx == 0 ? 'active' : ''}">
         <img class="img-fluid" src="${img.path}" alt="${img.desc}">
         </div>`;
         return html;
      }, "");
   }

   paddle_grid.innerHTML = paddle_fields.reduce((html, field, idx) => {
      html += `<div class="col-4 card">
            <div id="football_img_slider_${idx}" class="carousel slide" data-bs-ride="carousel">
               <div class="carousel-inner" style="height: 12rem;">
                  ${load_imgs_for(field)}
               </div>
               <button class="carousel-control-prev" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
               </button>
               <button class="carousel-control-next" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
               </button>
            </div>
            <div class="card-body">
               <h3 class="card-title">${field.tipo_de_cancha}</h3>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">Tipo de cancha: ${field.suelo}</li>
                  <li class="list-group-item">Medidas de la cancha: ${field.medidas}</li>
                  <li class="list-group-item">Precio de la reserva: ${field.precio}</li>
               </ul>
               <div class="card-footer">
                  <a class="btn btn-primary" style="background-color: green; border-color: green;" onclick="reservarCancha('${idx}')">Reservar</a>
                </div>
            </div>
      </div>`;
      return html;
   }, "");

}
load_paddle_fields_from( paddle_fields );

/*function reservarCancha( id ) {
   
   sessionStorage.setItem("padelSeleccionado", JSON.stringify(paddle_fields[id]))
   //redirigir
   window.location.replace("/reservas/reserva.html")
}

load_paddle_fields_from( paddle_fields );

*/



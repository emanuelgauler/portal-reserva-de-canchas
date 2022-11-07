var soccer_fields = [
   {
      "imgs": [
         { "path": "ImagenesHome/futbol5_2.jpg", "desc": "Futbol 1" }
         , { "path": "/ImagenesHome/futbol5.jpg", "desc": "Futbol 2" }
      ],
      tipo_de_cancha: "Cesped Sintético",
      cantidad_por_equipo: 5,
      precio: 1200
   },
   {
      "imgs": [
         { "path": "ImagenesHome/futsal.jpg", "desc": "Futsal 1" }
         , { "path": "/ImagenesHome/futsal2.jpg", "desc": "Futsal 2" }
      ],
      tipo_de_cancha: "Piso",
      cantidad_por_equipo: 5,
      precio: 2000
   },
   {
      "imgs": [
         { "path": "ImagenesHome/futsal3.jpg", "desc": "Futsal 3" }
         , { "path": "/ImagenesHome/futsal4.jpg", "desc": "Futsal 4" }
      ],
      tipo_de_cancha: "Piso",
      cantidad_por_equipo: 7,
      precio: 2000
   }

];

function load_soccer_fields(soccer_fields) {
   function slider_for(court) {
      return court.imgs.reduce((html, img, idx) => {
         html += `<div class="carousel-item ${idx == 0 ? 'active' : ''}">
                            <img src="${img.path}" alt="${img.desc}">
                        </div>`;
         return html;
      }, "");
   }

   canchas.innerHTML = soccer_fields.reduce(function (html, court, idx) {
      html += `<div class="col-4 card px-1 mx-1" style="width: 21rem;">
                <div id="football_img_slider_${idx}" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner" style="height: 12rem;">
                        ${slider_for(court)}
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    </button>
                </div>
                <div class="card-body">
                    <h3 class="card-title">Nombre de la cancha</h3>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">${court.tipo_de_cancha}</li>
                        <li class="list-group-item">${court.cantidad_por_equipo}</li>
                        <li class="list-group-item">${court.precio}</li>
                    </ul>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary" style="background-color: green; border-color: green;">Reservar</a>
                    </div>
                </div>
            </div>`;
      return html;
   }, "");

}

load_soccer_fields(soccer_fields);
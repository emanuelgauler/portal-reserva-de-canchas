paddle_fields = [
   {
      "img_path": "ImagenesHome/PaddleCemento.jpg"
   }
];
            


function load_paddle_fields_from( paddle_fields ) {
      return paddle_fields.reduce( (field, idx) => {
      html += `<div class="col-4 card">
            <div id="football_img_slider_${idx}" class="carousel slide" data-bs-ride="carousel">
               <div class="carousel-inner" style="height: 12rem;">
                  <div class="carousel-item active">
                        <img class="img-fluid" src="${field.img_path}" alt="Paddle Cemento">
                  </div>
                  <div class="carousel-item">
                        <img src="./ImagenesHome/PaddleCemento2.jpg" alt="Paddle Cemento">
                  </div>
               </div>
               <button class="carousel-control-prev" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
               </button>
               <button class="carousel-control-next" type="button" data-bs-target="#football_img_slider_${idx}" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
               </button>
            </div>
            <div class="card-body">
               <h3 class="card-title">Cancha de Cemento</h3>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">Tipo de cancha: Rápida</li>
                  <li class="list-group-item">Medidas de la cancha:</li>
                  <li class="list-group-item">Precio de la reserva:</li>
               </ul>
               <div class="card-footer">
                  <a href="#" class="btn btn-primary" style="background-color: green; border-color: green;">Reservar</a>
               </div>
            </div>
      </div>`;
      return html;
      }, "" );

}

load_paddle_fields_from( paddle_fields );
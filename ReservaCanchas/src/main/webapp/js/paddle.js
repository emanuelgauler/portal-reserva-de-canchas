
function reservarCancha(id){
	
let idCanchaPaddel= document.getElementById('pIdCancha_'+id).value;
let tipoCanchaPaddel= document.getElementById('pTipoCancha_'+id).getAttribute("data-valor");
let sueloPaddel= document.getElementById('pSuelo_'+id).getAttribute("data-valor");
let medidasPaddel= document.getElementById('pMedidas_'+id).getAttribute("data-valor");
let precioPaddel= document.getElementById('pPrecio_'+id).getAttribute("data-valor");
let typePaddel= document.getElementById('pType_'+id).getAttribute("data-valor");
console.log(tipoCanchaPaddel);
console.log(idCanchaPaddel);
console.log(sueloPaddel);
console.log(medidasPaddel);
console.log(precioPaddel);


	localStorage.setItem("canchaSeleccionada",idCanchaPaddel)
	localStorage.setItem("suelo",sueloPaddel)
	localStorage.setItem("tipoCancha",tipoCanchaPaddel)
	localStorage.setItem("medidas",medidasPaddel)
	localStorage.setItem("precio",precioPaddel)
	localStorage.setItem("type",typePaddel)
	window.location.replace("./reserva.jsp")
	
	
}



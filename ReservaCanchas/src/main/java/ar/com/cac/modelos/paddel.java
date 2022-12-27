package ar.com.cac.modelos;

public class paddel {

	private int idCancha;
	private String tipoCancha;
	private Double precio;
	private String type;
	private String imagenes;
	private String suelo;
	private String medidas;
	
	public String getTipoCancha() {
		return tipoCancha;
	}

	public void setTipoCancha(String tipoCancha) {
		this.tipoCancha = tipoCancha;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImagenes() {
		return imagenes;
	}

	public void setImagenes(String imagenes) {
		this.imagenes = imagenes;
	}

	public String getSuelo() {
		return suelo;
	}

	public void setSuelo(String suelo) {
		this.suelo = suelo;
	}

	public String getMedidas() {
		return medidas;
	}

	public void setMedidas(String medidas) {
		this.medidas = medidas;
	}

	public void setIdCancha(int idCancha) {
		this.idCancha = idCancha;
	}

	public int getIdCancha() {
		return idCancha;
	}	
	
}

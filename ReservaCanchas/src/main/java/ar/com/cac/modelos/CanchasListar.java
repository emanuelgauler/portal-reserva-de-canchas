package ar.com.cac.modelos;

import java.util.List;

public class CanchasListar {
	private int idCancha;
	private List<Canchas> metadata;
	
	public int getIdCancha() {
		return idCancha;
	}
	public void setIdCancha(int idCancha) {
		this.idCancha = idCancha;
	}
	public List<Canchas> getMetadata() {
		return metadata;
	}
	public void setMetadata(List<Canchas> metadata) {
		this.metadata = metadata;
	}
	
}

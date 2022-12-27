package ar.com.cac.modelos;

import java.sql.Date;
import java.sql.Time;

public class misReservas {

	private int idUsuario;
	private String type;
	private String tipoCancha;
	private int cantidadPorEquipo;
	private String medidas;
	private Date fecha;
	private Time hora;
	private Double totalReserva;
	
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTipoCancha() {
		return tipoCancha;
	}
	public void setTipoCancha(String tipoCancha) {
		this.tipoCancha = tipoCancha;
	}
	public int getCantidadPorEquipo() {
		return cantidadPorEquipo;
	}
	public void setCantidadPorEquipo(int cantidadPorEquipo) {
		this.cantidadPorEquipo = cantidadPorEquipo;
	}
	public String getMedidas() {
		return medidas;
	}
	public void setMedidas(String medidas) {
		this.medidas = medidas;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public Time getHora() {
		return hora;
	}
	public void setHora(Time hora) {
		this.hora = hora;
	}
	public Double getTotalReserva() {
		return totalReserva;
	}
	public void setTotalReserva(Double totalReserva) {
		this.totalReserva = totalReserva;
	}
	
	
	
	
	
	
}

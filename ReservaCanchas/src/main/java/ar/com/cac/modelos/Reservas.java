package ar.com.cac.modelos;

import java.sql.Date;

public class Reservas {
	private int IdReserva;
	private Date Fecha;
	private String Hora;
	private Double TotalReserva;
	private Integer IdUsuario;
	public Reservas() {
		super();
	}	
	public Reservas(int idReserva, Date fecha, String hora, Double totalReserva, Integer idUsuario) {
		super();
		IdReserva = idReserva;
		Fecha = fecha;
		Hora = hora;
		TotalReserva = totalReserva;
		IdUsuario = idUsuario;
	}
	private Integer IdCancha;
	public int getIdReserva() {
		return IdReserva;
	}
	public void setIdReserva(int idReserva) {
		IdReserva = idReserva;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	public String getHora() {
		return Hora;
	}
	public void setHora(String hora) {
		Hora = hora;
	}
	public Double getTotalReserva() {
		return TotalReserva;
	}
	public void setTotalReserva(Double totalReserva) {
		TotalReserva = totalReserva;
	}
	public Integer getIdUsuario() {
		return IdUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		IdUsuario = idUsuario;
	}
	public Integer getIdCancha() {
		return IdCancha;
	}
	public void setIdCancha(Integer idCancha) {
		IdCancha = idCancha;
	}
}

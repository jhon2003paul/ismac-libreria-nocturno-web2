package com.distribuida.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "factura")
public class Factura {

	// SQL:   1:1  <=>  Java: @OneToOne
	// SQL:   1:N  <=>  Java: @ManyToOne  , @OneToMany
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_factura")
	private int idFactura;
	@Column(name = "num_factura")
	private String numFactura;
	@Column(name = "fecha")
	private Date fecha;
	@Column(name = "total_neto")
	private Double totalNeto;
	@Column(name = "iva")
	private Double iva;
	@Column(name = "total")
	private Double total;
	//private int idCliente; foreign key
	
	@JoinColumn(name = "id_cliente")
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	private Cliente cliente;
	
	public Factura() { }

	public Factura(int idFactura, String numFactura, Date fecha, Double totalNeto, Double iva, Double total,
			Cliente cliente) {	
		this.idFactura = idFactura;
		this.numFactura = numFactura;
		this.fecha = fecha;
		this.totalNeto = totalNeto;
		this.iva = iva;
		this.total = total;
		this.cliente = cliente;
	}

	public int getIdFactura() {
		return idFactura;
	}

	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}

	public String getNumFactura() {
		return numFactura;
	}

	public void setNumFactura(String numFactura) {
		this.numFactura = numFactura;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Double getTotalNeto() {
		return totalNeto;
	}

	public void setTotalNeto(Double totalNeto) {
		this.totalNeto = totalNeto;
	}

	public Double getIva() {
		return iva;
	}

	public void setIva(Double iva) {
		this.iva = iva;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Cliente getCliente() {
		return cliente;
	}

	// metodo inyector 
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	
	@Override
	public String toString() {
		return "Factura [idFactura=" + idFactura + ", numFactura=" + numFactura + ", fecha=" + fecha + ", totalNeto="
				+ totalNeto + ", iva=" + iva + ", total=" + total + ", cliente=" + cliente + "]";
	}
	
	
	
	
	
}

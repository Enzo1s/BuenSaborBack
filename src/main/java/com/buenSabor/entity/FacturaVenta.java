package com.buenSabor.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Id;

import com.buenSabor.enums.FormaPago;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Data
@Entity
public class FacturaVenta implements Serializable {

	private static final long serialVersionUID = 2319576343947923924L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private LocalDate fechaFacturacion;
	
	private Long numeroComprobante;
	
	private FormaPago formaPago;
	
	private BigDecimal subTotal;
	
	private BigDecimal descuento;
	
	private BigDecimal gastosEnvio;
	
	private BigDecimal totalVenta;
	
	@OneToOne
	private DatosMercadoPago datosMP;
	
	@OneToMany
	private List<FacturaVentaDetalle> facturaVentaDetalle;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
	
}

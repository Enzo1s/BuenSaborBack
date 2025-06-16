package com.buenSabor.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Id;

import com.buenSabor.enums.FormaPago;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class FacturaVenta extends ABM implements Serializable {

	private static final long serialVersionUID = 2319576343947923924L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private LocalDateTime fechaFacturacion;
	
	private Long numeroComprobante;
	
	private FormaPago formaPago;
	
	private BigDecimal subTotal;
	
	private BigDecimal descuento;
	
	private BigDecimal gastosEnvio;
	
	private BigDecimal totalVenta;
	
	@OneToOne
	private DatosMercadoPago datosMP;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	private List<FacturaVentaDetalle> facturaVentaDetalle;
	
	
}

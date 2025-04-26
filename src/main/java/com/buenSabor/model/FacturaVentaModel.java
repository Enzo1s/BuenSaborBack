package com.buenSabor.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import com.buenSabor.enums.FormaPago;

import lombok.Data;

@Data
public class FacturaVentaModel {
	
	private String id;
	
	private LocalDate fechaFacturacion;
	
	private Long numeroComprobante;
	
	private FormaPago formaPago;
	
	private BigDecimal subTotal;
	
	private BigDecimal descuento;
	
	private BigDecimal gastosEnvio;
	
	private BigDecimal totalVenta;
	
	private DatosMercadoPagoModel datosMP;
	
	private List<FacturaVentaDetalleModel> facturaVentaDetalle;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
	
}

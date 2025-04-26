package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class PromocionModel {
	
	private String id;
	
	private String denominacion;

	private LocalDate fechaDesde;
	
	private LocalDate fechaHasta;
	
	private double descuento;
	
	private PromocionDetalleModel promocionDetalle;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

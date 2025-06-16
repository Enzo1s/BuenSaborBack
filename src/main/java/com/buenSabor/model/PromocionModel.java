package com.buenSabor.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class PromocionModel {
	
	private String id;
	
	private String denominacion;

	private LocalDateTime fechaDesde;
	
	private LocalDateTime fechaHasta;
	
	private double descuento;
	
	private List<PromocionDetalleModel> promocionDetalle;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

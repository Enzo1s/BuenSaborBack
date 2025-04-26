package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class PromocionDetalleModel {
	
	private String  id;
	
	private int cantidad;
	
	private ArticuloManufacturadoModel articuloManufacturado;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

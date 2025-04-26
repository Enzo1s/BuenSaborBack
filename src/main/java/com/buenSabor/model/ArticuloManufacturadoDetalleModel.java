package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class ArticuloManufacturadoDetalleModel {
	
	private String id;
	
	private double cantidad;
	
	private ArticuloInsumoModel articuloInsumo;
	
	private LocalDate modificacion;
	
	private LocalDate alta;

	private LocalDate baja;
}

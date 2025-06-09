package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class ArticuloManufacturadoDetalleModel {
	
	private String id;
	
	private double cantidad;
	
	private ArticuloInsumoModel articuloInsumo;
	
	private LocalDateTime modificacion;
	
	private LocalDateTime alta;

	private LocalDateTime baja;
}

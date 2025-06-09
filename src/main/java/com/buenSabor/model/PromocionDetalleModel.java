package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PromocionDetalleModel {
	
	private String  id;
	
	private int cantidad;
	
	private ArticuloManufacturadoModel articuloManufacturado;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

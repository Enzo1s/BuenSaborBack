package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class FacturaVentaDetalleModel {
	
	private String id;

	private double cantidad;

	private double subTotal;

	private ArticuloManufacturadoModel articuloManufacturado;

	private ArticuloInsumoModel articuloInsumo;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

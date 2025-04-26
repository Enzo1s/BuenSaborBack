package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class PedidoVentaDetalleModel {
	
	private String id;
	
	private double cantidad;
	
	private double subTotal;
	
	private ArticuloManufacturadoModel articuloManufacturado;
	
	private ArticuloInsumoModel articuloInsumo;
	
	private PromocionModel promocion;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
	
}

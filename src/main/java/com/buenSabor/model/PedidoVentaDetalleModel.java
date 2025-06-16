package com.buenSabor.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class PedidoVentaDetalleModel {
	
	private String id;
	
	private double cantidad;
	
	private double subTotal;
	
	private ArticuloManufacturadoModel articuloManufacturado;
	
	private ArticuloInsumoModel articuloInsumo;
	
	private List<PromocionModel> promocion;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
	
}

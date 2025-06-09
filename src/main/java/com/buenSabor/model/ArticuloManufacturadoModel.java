package com.buenSabor.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class ArticuloManufacturadoModel {
	private String id;
	private String denominacion;
	private String descripcion;
	private double precioVenta;
	private double precioCosto;
	private Integer tiempoEstimado;
	
	
	private CategoriaArticuloManufacturadoModel categoriaArticuloManufacturado;
	
	private List<String> pathImagen;
	
	private List<ArticuloManufacturadoDetalleModel> articuloManufacturadoDetalle;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
	
}

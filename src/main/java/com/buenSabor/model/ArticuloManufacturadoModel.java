package com.buenSabor.model;

import java.time.LocalDate;
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
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
	
}

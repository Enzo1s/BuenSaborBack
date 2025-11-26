package com.buenSabor.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class ArticuloInsumoModel {
	private String id;
	
	private String denominacion;
	
	private Double precioCompra;

	private Double precioVenta;
	
	private boolean esParaElaborar;
	
	private String unidadMedida;
	
	private List<CategoriaArticuloModel> categoriaArticulo;
	
	private List<String> pathImagen;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

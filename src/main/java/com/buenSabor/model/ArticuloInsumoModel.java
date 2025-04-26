package com.buenSabor.model;

import java.time.LocalDate;
import java.util.List;

import lombok.Data;

@Data
public class ArticuloInsumoModel {
	private String id;
	
	private String denominacion;
	
	private double precioCompra;
	
	private double precioVenta;
	
	private boolean esParaElaborar;
	
	private String unidadMedida;
	
	private List<CategoriaArticuloModel> categoriaArticulo;
	
	private List<String> pathImagen;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

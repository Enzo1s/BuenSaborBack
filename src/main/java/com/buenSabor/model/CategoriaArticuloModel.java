package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class CategoriaArticuloModel {
	
	private String id;
	
	private String denominacion;
	
	private CategoriaArticuloModel categoria;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class CategoriaArticuloManufacturadoModel {
	
	private String id;
	
	private String denominacion;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

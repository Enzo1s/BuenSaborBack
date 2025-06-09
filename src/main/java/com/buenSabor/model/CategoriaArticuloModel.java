package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class CategoriaArticuloModel {
	
	private String id;
	
	private String denominacion;
	
	private CategoriaArticuloModel categoria;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

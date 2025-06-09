package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class CategoriaArticuloManufacturadoModel {
	
	private String id;
	
	private String denominacion;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

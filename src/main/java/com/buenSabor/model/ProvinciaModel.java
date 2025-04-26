package com.buenSabor.model;

import lombok.Data;

@Data
public class ProvinciaModel {
	
	private String id;
	
	private String nombre;
	
	private PaisModel pais;
	
}

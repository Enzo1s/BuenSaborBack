package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class LocalidadModel {
	
	private String id;
	private String nombre;
	
	private ProvinciaModel provincia;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;

}

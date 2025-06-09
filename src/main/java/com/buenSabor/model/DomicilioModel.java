package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class DomicilioModel {
	
	private String id;
	private String calle;
	private Integer numero;
	private Integer cp;
	
	private LocalidadModel localidad;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;
}

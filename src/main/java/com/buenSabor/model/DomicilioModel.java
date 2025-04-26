package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DomicilioModel {
	
	private String id;
	private String calle;
	private Integer numero;
	private Integer cp;
	
	private LocalidadModel localidad;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

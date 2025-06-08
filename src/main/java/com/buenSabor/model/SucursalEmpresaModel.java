package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SucursalEmpresaModel {
	
	private String id;
	private String nombre;
	private String horarioApertura;
	private String horarioCierre;
	
	private DomicilioModel domicilio;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

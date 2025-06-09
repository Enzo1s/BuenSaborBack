package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class SucursalEmpresaModel {
	
	private String id;
	private String nombre;
	private String horarioApertura;
	private String horarioCierre;
	
	private DomicilioModel domicilio;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;
}

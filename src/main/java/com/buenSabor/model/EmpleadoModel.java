package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class EmpleadoModel {
	
	private String id;
	
	private String nombre;
	
	private String apellido;

	private String telefono;

	private String email;
	
	private UsuarioModel usuario;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

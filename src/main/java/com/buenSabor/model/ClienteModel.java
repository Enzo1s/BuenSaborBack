package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class ClienteModel {
	
	private String id;
	
	private String nombre;

	private String apellido;
	
	private String telefono;
	
	private String email;
	
	private UsuarioModel usuario;
	
	private DomicilioModel domicilio;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;

}

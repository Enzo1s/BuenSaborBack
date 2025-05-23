package com.buenSabor.model;

import java.time.LocalDate;

import com.buenSabor.enums.Rol;

import lombok.Data;

@Data
public class UsuarioModel {
	
	private String id;
	
	private String auth0Id;
	
	private String username;
	
	private String password;
	
	private Rol rol;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;

}

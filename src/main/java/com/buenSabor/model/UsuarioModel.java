package com.buenSabor.model;

import java.time.LocalDateTime;

import com.buenSabor.entity.Empresa;
import com.buenSabor.enums.Rol;

import lombok.Data;

@Data
public class UsuarioModel {
	
	private String id;
	
	private String auth0Id;
	
	private String username;
	
	private String password;
	
	private Rol rol;
	
	private EmpresaModel empresa;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;

}

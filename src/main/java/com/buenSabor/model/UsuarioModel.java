package com.buenSabor.model;

import java.time.LocalDate;
import lombok.Data;

@Data
public class UsuarioModel {
	
	private String id;
	
	private String auth0Id;
	
	private String username;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;

}

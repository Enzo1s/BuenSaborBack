package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class Usuario implements Serializable {

	private static final long serialVersionUID = 480133828888674529L;

	@Id
	private String id;
	
	private String auth0Id;
	
	private String username;
	
	@ManyToOne
	private SucursalEmpresa sucursalEmpresa;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;

}

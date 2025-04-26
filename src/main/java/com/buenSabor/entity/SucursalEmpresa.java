package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Data
@Entity
public class SucursalEmpresa implements Serializable{

	private static final long serialVersionUID = -8496778768593592624L;

	@Id
	private String id;
	private String nombre;
	private String horarioApertura;
	private String horarioCIerre;
	
	@OneToOne
	private Domicilio domicilio;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

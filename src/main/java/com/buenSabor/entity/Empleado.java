package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class Empleado implements Serializable {

	private static final long serialVersionUID = 575745642530075138L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String nombre;
	
	private String apellido;

	private String telefono;

	private String email;
	
	@OneToOne
	private Usuario usuario;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

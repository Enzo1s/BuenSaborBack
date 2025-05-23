package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.Data;

@Data
@Entity
public class Pais implements Serializable {
	
	private static final long serialVersionUID = -6149464386207612714L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String nombre;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

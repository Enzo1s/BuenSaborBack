package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Provincia implements Serializable {

	private static final long serialVersionUID = 8469387955421214547L;
	
	@Id
	private String id;
	
	private String nombre;
	
	@ManyToOne
	private Pais pais;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

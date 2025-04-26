package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Data
@Entity
public class Cliente implements Serializable {

	private static final long serialVersionUID = 8406687985462131207L;
	
	@Id
	private String id;
	
	private String nombre;

	private String apellido;
	
	private String telefono;
	
	private String email;
	
	@OneToOne
	private Usuario usuario;
	
	@OneToOne
	private Domicilio domicilio;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;

}

package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Domicilio implements Serializable {

	private static final long serialVersionUID = -3690010076807792714L;
	
	@Id
	private String id;
	private String calle;
	private Integer numero;
	private Integer cp;
	
	@ManyToOne
	private Localidad localidad;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

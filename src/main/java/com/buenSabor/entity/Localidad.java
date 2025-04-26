package com.buenSabor.entity;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Localidad implements Serializable {

	private static final long serialVersionUID = 1771342703762024966L;
	
	@Id
	private String id;
	private String nombre;
	
	@ManyToOne
	private Provincia provincia;
	
    private Date modificacion;
    
    private Date alta;
    
    private Date baja;

}

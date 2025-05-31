package com.buenSabor.entity;

import java.io.Serializable;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToOne;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Provincia extends ABM implements Serializable {

	private static final long serialVersionUID = 8469387955421214547L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String nombre;
	
	@ManyToOne
	private Pais pais;

}

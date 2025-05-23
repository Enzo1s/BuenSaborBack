package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class CategoriaArticulo implements Serializable {

	private static final long serialVersionUID = -2648067625046204778L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String denominacion;
	
	@ManyToOne(optional = true)
	private CategoriaArticulo categoria;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

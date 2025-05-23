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
public class PromocionDetalle implements Serializable {

	private static final long serialVersionUID = -7894130956289868487L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String  id;
	
	private int cantidad;
	
	@ManyToOne
	private ArticuloManufacturado articuloManufacturado;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

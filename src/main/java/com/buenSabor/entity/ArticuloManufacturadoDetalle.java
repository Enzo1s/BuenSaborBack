package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.Data;

@Data
@Entity
public class ArticuloManufacturadoDetalle implements Serializable {

	private static final long serialVersionUID = 6479378008502481475L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private double cantidad;
	
	@ManyToOne
	private ArticuloInsumo articuloInsumo;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

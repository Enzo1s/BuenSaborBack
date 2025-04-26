package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class ArticuloManufacturadoDetalle implements Serializable {

	private static final long serialVersionUID = 6479378008502481475L;

	@Id
	private String id;
	
	private double cantidad;
	
	@OneToMany
	private List<ArticuloInsumo> articuloInsumo;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

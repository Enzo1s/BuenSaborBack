package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class FacturaVentaDetalle implements Serializable {

	private static final long serialVersionUID = -3465057399403860587L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;

	private double cantidad;

	private double subTotal;

	@OneToMany
	private List<ArticuloManufacturado> articuloManufacturado;

	@OneToMany
	private List<ArticuloInsumo> articuloInsumo;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

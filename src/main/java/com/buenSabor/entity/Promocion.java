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
public class Promocion implements Serializable {

	private static final long serialVersionUID = -4198850094515297632L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String denominacion;
	
	private LocalDate fechaDesde;
	
	private LocalDate fechaHasta;
	
	private double descuento;
	
	@OneToMany
	private List<PromocionDetalle> promocionDetalle;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

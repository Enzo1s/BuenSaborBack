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
public class SucursalInsumo implements Serializable {

	private static final long serialVersionUID = -6989505172602048532L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private double stockActual;
	private double stockMinimo;
	private double stockMaximo;
	
	@ManyToOne
	private SucursalEmpresa sucursalEmpresa;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;

}

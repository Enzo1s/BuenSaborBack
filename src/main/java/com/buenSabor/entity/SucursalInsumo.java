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
public class SucursalInsumo extends ABM implements Serializable {

	private static final long serialVersionUID = -6989505172602048532L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private double stockActual;
	private double stockMinimo;
	private double stockMaximo;
	
	@ManyToOne
	private SucursalEmpresa sucursalEmpresa;
	

}

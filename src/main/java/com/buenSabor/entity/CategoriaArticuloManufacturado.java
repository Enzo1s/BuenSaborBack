package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class CategoriaArticuloManufacturado implements Serializable {

	private static final long serialVersionUID = 311412246273227833L;
	
	@Id
	private String id;
	
	private String denominacion;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

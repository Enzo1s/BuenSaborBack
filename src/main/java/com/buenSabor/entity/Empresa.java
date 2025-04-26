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
public class Empresa implements Serializable {

	private static final long serialVersionUID = 7008633596362830502L;

	@Id
	private String id;
	private String nombre;
	private String razonSocial;
	private int cuil;
	@OneToMany
	private List<SucursalEmpresa> sucursalEmpresa;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

package com.buenSabor.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Empresa extends ABM implements Serializable {

	private static final long serialVersionUID = 7008633596362830502L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	private String nombre;
	private String razonSocial;
	private long cuil;
	@OneToMany
	private List<SucursalEmpresa> sucursalEmpresa;

}

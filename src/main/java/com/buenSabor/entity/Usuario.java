package com.buenSabor.entity;

import java.io.Serializable;

import com.buenSabor.enums.Rol;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Usuario extends ABM implements Serializable {

	private static final long serialVersionUID = 480133828888674529L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String auth0Id;
	
	@Column(unique = true)
	private String username;
	
	private String password;
	
	@ManyToOne
	private SucursalEmpresa sucursalEmpresa;
	
	@ManyToOne
	private Empresa empresa;
	
	@Enumerated(EnumType.STRING)
	private Rol rol;
	

}

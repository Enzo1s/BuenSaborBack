package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDate;

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

@Data
@Entity
public class Usuario implements Serializable {

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
	
	@Enumerated(EnumType.STRING)
	private Rol rol;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;

}

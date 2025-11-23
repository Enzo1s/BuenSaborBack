package com.buenSabor.entity;

import java.io.Serializable;

import com.buenSabor.enums.Cargo;

import jakarta.persistence.Id;
import jakarta.persistence.Enumerated;
import jakarta.persistence.EnumType;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Empleado extends ABM implements Serializable {

	private static final long serialVersionUID = 575745642530075138L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;

	private String nombre;

	private String apellido;

	private String telefono;

	private String email;

	@OneToOne
	private Usuario usuario;

	@Enumerated(EnumType.STRING)
	private Cargo cargo;

}

package com.buenSabor.entity;

import java.io.Serializable;

import jakarta.persistence.Id;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToOne;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Cliente extends ABM implements Serializable {

	private static final long serialVersionUID = 8406687985462131207L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String nombre;

	private String apellido;
	
	private String telefono;
	
	private String email;
	
	@OneToOne
	private Usuario usuario;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Domicilio domicilio;
	

}

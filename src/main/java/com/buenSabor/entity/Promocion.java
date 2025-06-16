package com.buenSabor.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Id;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class Promocion extends ABM implements Serializable {

	private static final long serialVersionUID = -4198850094515297632L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String denominacion;
	
	private LocalDateTime fechaDesde;
	
	private LocalDateTime fechaHasta;
	
	private double descuento;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List<PromocionDetalle> promocionDetalle;

}

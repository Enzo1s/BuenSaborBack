package com.buenSabor.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class PedidoVentaDetalle extends ABM implements Serializable{

	private static final long serialVersionUID = 6128672310656815363L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private double cantidad;
	
	private double subTotal;
	
	@ManyToOne
	private ArticuloManufacturado articuloManufacturado;
	
	@ManyToOne
	private ArticuloInsumo articuloInsumo;
	
	@OneToMany
	private List<Promocion> promocion;

	
}

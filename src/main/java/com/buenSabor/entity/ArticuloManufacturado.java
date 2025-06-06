package com.buenSabor.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.CascadeType;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class ArticuloManufacturado extends ABM implements Serializable {

	private static final long serialVersionUID = -7732716947659586773L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	private String denominacion;
	private String descripcion;
	private double precioVenta;
	private double precioCosto;
	private Integer tiempoEstimado;
	
	@ManyToOne
	private CategoriaArticuloManufacturado categoriaArticuloManufacturado;
	
	@ElementCollection
	private List<String> pathImagen;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List<ArticuloManufacturadoDetalle> articuloManufacturadoDetalle;
	
}

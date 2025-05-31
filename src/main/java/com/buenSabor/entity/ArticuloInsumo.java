package com.buenSabor.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.ElementCollection;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class ArticuloInsumo extends ABM implements Serializable {

	private static final long serialVersionUID = 8263374712581618838L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	
	private String denominacion;
	
	private double precioCompra;
	
	private double precioVenta;
	
	private boolean esParaElaborar;
	
	private String unidadMedida;
	
	@ManyToMany
	private List<CategoriaArticulo> categoriaArticulo;
	
	@ElementCollection
	private List<String> pathImagen;

}

package com.buenSabor.model;

import java.util.Date;

import lombok.Data;

@Data
public class LocalidadModel {
	
	private String id;
	private String nombre;
	
	private ProvinciaModel provincia;
	
    private Date modificacion;
    
    private Date alta;
    
    private Date baja;

}

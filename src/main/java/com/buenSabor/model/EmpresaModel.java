package com.buenSabor.model;

import java.time.LocalDate;
import java.util.List;

import lombok.Data;

@Data
public class EmpresaModel {
	
	private String id;
	private String nombre;
	private String razonSocial;
	private int cuil;

	private List<SucursalEmpresaModel> sucursalEmpresa;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

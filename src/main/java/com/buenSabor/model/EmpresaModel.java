package com.buenSabor.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class EmpresaModel {
	
	private String id;
	private String nombre;
	private String razonSocial;
	private int cuil;

	private List<SucursalEmpresaModel> sucursalEmpresa;
	
    private LocalDateTime modificacion;
    
    private LocalDateTime alta;
    
    private LocalDateTime baja;
}

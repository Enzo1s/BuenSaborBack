package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SucursalInsumoModel {
	
	private String id;
	
	private double stockActual;
	private double stockMinimo;
	private double stockMaximo;
	
	private SucursalEmpresaModel sucursalEmpresa;
	
	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;

}

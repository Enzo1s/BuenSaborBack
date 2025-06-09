package com.buenSabor.model;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class SucursalInsumoModel {
	
	private String id;
	
	private double stockActual;
	private double stockMinimo;
	private double stockMaximo;
	
	private ArticuloInsumoModel articuloInsumo;
	
	private SucursalEmpresaModel sucursalEmpresa;
	
	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;

}

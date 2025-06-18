package com.buenSabor.dto;

import java.math.BigDecimal;
import java.time.LocalDate;

import lombok.Data;

@Data
public class ReportePorFechaDTO {
	 private LocalDate fechaPedido;
	    private String instrumento;
	    private String marca;
	    private String modelo;
	    private Integer cantidad;
	    private BigDecimal precio;
	    private BigDecimal subtotal;
}

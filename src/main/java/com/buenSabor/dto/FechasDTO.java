package com.buenSabor.dto;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class FechasDTO {
	  @JsonFormat(pattern = "yyyy-MM-dd")
	    private LocalDate fechaDesde;

	    @JsonFormat(pattern = "yyyy-MM-dd")
	    private LocalDate fechaHasta;
}

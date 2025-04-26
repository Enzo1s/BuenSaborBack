package com.buenSabor.model;

import java.time.LocalDate;

import lombok.Data;

@Data
public class DatosMercadoPagoModel {
	
	private String id;
	private LocalDate dateCreated;
	private LocalDate dateApproved;
	private LocalDate dateLastUpdated;
	private String paymentTypeId;
	private String paymentMethodId;
	private String status;
	private String statusDetail;
	
    private LocalDate modificacion;
    
    private LocalDate alta;
    
    private LocalDate baja;
}

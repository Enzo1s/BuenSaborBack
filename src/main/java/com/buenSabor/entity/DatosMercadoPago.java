package com.buenSabor.entity;

import java.io.Serializable;

import java.time.LocalDate;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.Data;

@Data
@Entity
public class DatosMercadoPago implements Serializable{

	private static final long serialVersionUID = -8045116941495778953L;
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
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

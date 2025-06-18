package com.buenSabor.dto;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class MPForm {

	private String collectionId;

	private String collectionStatus;

	private String paymentId;

	private String status;

	private String externalReference;

	private String paymentType;

	private String merchantOrderId;

	private String preferenceId;

	private String siteId;

	private String processingMode;

	private String merchantAccountId;
	
	private String token;
	
	private Integer installments;
	
	private String issuer_id;
	
	private String payment_method_id;
	
	private BigDecimal transaction_amount;
	
	private Payer payer;
	
	private String description;
}

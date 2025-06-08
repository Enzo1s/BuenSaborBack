package com.buenSabor.dto;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class MPForm {

	private int installments;
	private String issuer_id;
	private Payer payer;
	private String payment_method_id;
	private String token;
	private BigDecimal transaction_amount;
	private String description;
}

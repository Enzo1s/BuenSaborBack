package com.buenSabor.dto;

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
}

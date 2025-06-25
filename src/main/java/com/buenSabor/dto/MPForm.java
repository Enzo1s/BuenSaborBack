package com.buenSabor.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class MPForm {

	@JsonProperty("collection_id")
	private String collectionId;

	@JsonProperty("collection_status")
	private String collectionStatus;

	@JsonProperty("payment_id")
	private String paymentId;

	private String status;

	@JsonProperty("external_reference")
	private String externalReference;

	@JsonProperty("payment_type")
	private String paymentType;

	@JsonProperty("merchant_order_id")
	private String merchantOrderId;

	@JsonProperty("preference_id")
	private String preferenceId;

	@JsonProperty("site_id")
	private String siteId;

	@JsonProperty("processing_mode")
	private String processingMode;

	@JsonProperty("merchant_account_id")
	private String merchantAccountId;
}

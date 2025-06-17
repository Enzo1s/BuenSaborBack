package com.buenSabor.model;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class DatosMercadoPagoModel {

	private String id;

	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;

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

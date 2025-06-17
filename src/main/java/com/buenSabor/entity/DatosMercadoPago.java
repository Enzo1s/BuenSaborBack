package com.buenSabor.entity;

import java.io.Serializable;
import jakarta.persistence.Id;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
@Entity
public class DatosMercadoPago extends ABM implements Serializable {

	private static final long serialVersionUID = -8045116941495778953L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;

	private String collectionId;

	private String collectionStatus;

	private String paymentId;

	private String status;

	@Column(nullable = true)
	private String externalReference;

	private String paymentType;

	private String merchantOrderId;

	private String preferenceId;

	private String siteId;

	private String processingMode;

	@Column(nullable = true)
	private String merchantAccountId;
}

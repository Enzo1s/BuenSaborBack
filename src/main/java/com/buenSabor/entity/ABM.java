package com.buenSabor.entity;

import java.time.LocalDateTime;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Data;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Data
public abstract class ABM {

	@CreatedDate
	private LocalDateTime alta;
		
	private LocalDateTime baja;
	
	@LastModifiedDate
	private LocalDateTime modificacion;
}

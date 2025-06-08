package com.buenSabor.dto;

import lombok.Data;

@Data
public class Payer {

	private String email;
	private Identification identification;
	private String first_name;
}

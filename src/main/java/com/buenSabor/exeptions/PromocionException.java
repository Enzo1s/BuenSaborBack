package com.buenSabor.exeptions;

public class PromocionException extends Exception {

	private static final long serialVersionUID = 3451971581734777610L;

	public PromocionException(String msn) {
        super(msn);
    }
}
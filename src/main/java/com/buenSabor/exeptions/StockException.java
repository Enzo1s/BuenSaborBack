package com.buenSabor.exeptions;

public class StockException extends Exception {

	private static final long serialVersionUID = 3451971581734777609L;

	public StockException(String msn) {
        super(msn);
    }
}

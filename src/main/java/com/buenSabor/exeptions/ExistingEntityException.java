package com.buenSabor.exeptions;

public class ExistingEntityException extends Exception {

    private static final long serialVersionUID = 7883636384872015753L;

    public ExistingEntityException(String msn) {
        super(msn);
    }
}

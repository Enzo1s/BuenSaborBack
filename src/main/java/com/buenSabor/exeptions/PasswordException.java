package com.buenSabor.exeptions;

public class PasswordException  extends Exception {

    private static final long serialVersionUID = 7883636384872015753L;

    public PasswordException(String msn) {
        super(msn);
    }
}

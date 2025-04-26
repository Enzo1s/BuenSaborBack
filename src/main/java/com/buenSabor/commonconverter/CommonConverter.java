package com.buenSabor.commonconverter;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.buenSabor.utils.ConverterUtil;


public abstract class CommonConverter<M extends Object, E extends Object> {
    public abstract E modeloReqToEntidad(M m);

    public abstract M entidadToModeloRes(E e);

    protected Log log;
    
	@Autowired
	public ConverterUtil ConverterUtil;

    protected CommonConverter() {
        this.log = LogFactory.getLog(getClass());
    }

}

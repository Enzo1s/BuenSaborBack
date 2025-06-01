package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Domicilio;
import com.buenSabor.model.DomicilioModel;

@Component
public class DomicilioConverter extends CommonConverter<DomicilioModel, Domicilio> {

	@Override
	public Domicilio modeloReqToEntidad(DomicilioModel m) {
		return ConverterUtil.map(m, Domicilio.class);
	}

	@Override
	public DomicilioModel entidadToModeloRes(Domicilio e) {
		return ConverterUtil.map(e, DomicilioModel.class);
	}

}

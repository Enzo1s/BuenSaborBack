package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Provincia;
import com.buenSabor.model.ProvinciaModel;

@Component
public class ProvinciaConverter extends CommonConverter<ProvinciaModel, Provincia> {

	@Override
	public Provincia modeloReqToEntidad(ProvinciaModel m) {
		return ConverterUtil.map(m, Provincia.class);
	}

	@Override
	public ProvinciaModel entidadToModeloRes(Provincia e) {
		return ConverterUtil.map(e, ProvinciaModel.class);
	}

}

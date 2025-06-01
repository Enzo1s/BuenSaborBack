package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Localidad;
import com.buenSabor.model.LocalidadModel;

@Component
public class LocalidadConverter extends CommonConverter<LocalidadModel, Localidad> {

	@Override
	public Localidad modeloReqToEntidad(LocalidadModel m) {
		return ConverterUtil.map(m, Localidad.class);
	}

	@Override
	public LocalidadModel entidadToModeloRes(Localidad e) {
		return ConverterUtil.map(e, LocalidadModel.class);
	}

}

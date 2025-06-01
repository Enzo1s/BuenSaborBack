package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Pais;
import com.buenSabor.model.PaisModel;

@Component
public class PaisConverter extends CommonConverter<PaisModel, Pais> {

	@Override
	public Pais modeloReqToEntidad(PaisModel m) {
		return ConverterUtil.map(m, Pais.class);
	}

	@Override
	public PaisModel entidadToModeloRes(Pais e) {
		return ConverterUtil.map(e, PaisModel.class);
	}

}

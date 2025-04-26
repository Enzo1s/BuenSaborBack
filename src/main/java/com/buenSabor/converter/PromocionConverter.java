package com.buenSabor.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Promocion;
import com.buenSabor.model.PromocionModel;

@Component
public class PromocionConverter extends CommonConverter<PromocionModel, Promocion>{
	

	@Override
	public Promocion modeloReqToEntidad(PromocionModel m) {
		return ConverterUtil.map(m, Promocion.class);
	}

	@Override
	public PromocionModel entidadToModeloRes(Promocion e) {
		return ConverterUtil.map(e, PromocionModel.class);
	}

}

package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.DatosMercadoPago;
import com.buenSabor.model.DatosMercadoPagoModel;

@Component
public class DatosMercadoPagoConverter extends CommonConverter<DatosMercadoPagoModel, DatosMercadoPago> {

	@Override
	public DatosMercadoPago modeloReqToEntidad(DatosMercadoPagoModel m) {
		return ConverterUtil.map(m, DatosMercadoPago.class);
	}

	@Override
	public DatosMercadoPagoModel entidadToModeloRes(DatosMercadoPago e) {
		return ConverterUtil.map(e, DatosMercadoPagoModel.class);
	}

}

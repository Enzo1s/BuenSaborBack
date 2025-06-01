package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.model.SucursalInsumoModel;

@Component
public class SucursalInsumoConverter extends CommonConverter<SucursalInsumoModel, SucursalInsumo> {

	@Override
	public SucursalInsumo modeloReqToEntidad(SucursalInsumoModel m) {
		return ConverterUtil.map(m, SucursalInsumo.class);
	}

	@Override
	public SucursalInsumoModel entidadToModeloRes(SucursalInsumo e) {
		return ConverterUtil.map(e, SucursalInsumoModel.class);
	}

}

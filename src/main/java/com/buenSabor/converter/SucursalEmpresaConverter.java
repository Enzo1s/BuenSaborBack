package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.SucursalEmpresa;
import com.buenSabor.model.SucursalEmpresaModel;

@Component
public class SucursalEmpresaConverter extends CommonConverter<SucursalEmpresaModel, SucursalEmpresa> {

	@Override
	public SucursalEmpresa modeloReqToEntidad(SucursalEmpresaModel m) {
		return ConverterUtil.map(m, SucursalEmpresa.class);
	}

	@Override
	public SucursalEmpresaModel entidadToModeloRes(SucursalEmpresa e) {
		return ConverterUtil.map(e, SucursalEmpresaModel.class);
	}

}

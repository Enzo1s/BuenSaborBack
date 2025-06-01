package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Empresa;
import com.buenSabor.model.EmpresaModel;

@Component
public class EmpresaConverter extends CommonConverter<EmpresaModel, Empresa> {

	@Override
	public Empresa modeloReqToEntidad(EmpresaModel m) {
		return ConverterUtil.map(m, Empresa.class);
	}

	@Override
	public EmpresaModel entidadToModeloRes(Empresa e) {
		return ConverterUtil.map(e, EmpresaModel.class);
	}

}

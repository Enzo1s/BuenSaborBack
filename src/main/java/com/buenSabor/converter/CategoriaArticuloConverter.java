package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.CategoriaArticulo;
import com.buenSabor.model.CategoriaArticuloModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class CategoriaArticuloConverter extends CommonConverter<CategoriaArticuloModel, CategoriaArticulo>{

	@Override
	public CategoriaArticulo modeloReqToEntidad(CategoriaArticuloModel m) {
		return ConverterUtil.map(m, CategoriaArticulo.class);
	}

	@Override
	public CategoriaArticuloModel entidadToModeloRes(CategoriaArticulo e) {
		return ConverterUtil.map(e, CategoriaArticuloModel.class);
	}

}

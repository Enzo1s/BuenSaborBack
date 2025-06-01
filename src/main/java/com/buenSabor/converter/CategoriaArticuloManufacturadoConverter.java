package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.CategoriaArticuloManufacturado;
import com.buenSabor.model.CategoriaArticuloManufacturadoModel;

@Component
public class CategoriaArticuloManufacturadoConverter extends CommonConverter<CategoriaArticuloManufacturadoModel, CategoriaArticuloManufacturado>{

	@Override
	public CategoriaArticuloManufacturado modeloReqToEntidad(CategoriaArticuloManufacturadoModel m) {
		return ConverterUtil.map(m, CategoriaArticuloManufacturado.class);
	}

	@Override
	public CategoriaArticuloManufacturadoModel entidadToModeloRes(CategoriaArticuloManufacturado e) {
		return ConverterUtil.map(e, CategoriaArticuloManufacturadoModel.class);
	}

}

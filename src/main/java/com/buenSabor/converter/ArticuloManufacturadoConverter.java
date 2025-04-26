package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.ArticuloManufacturado;
import com.buenSabor.model.ArticuloManufacturadoModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class ArticuloManufacturadoConverter extends CommonConverter<ArticuloManufacturadoModel, ArticuloManufacturado> {

	@Override
	public ArticuloManufacturado modeloReqToEntidad(ArticuloManufacturadoModel model) {
		return ConverterUtil.map(model, ArticuloManufacturado.class);
	}

	@Override
	public ArticuloManufacturadoModel entidadToModeloRes(ArticuloManufacturado entity) {
		return ConverterUtil.map(entity, ArticuloManufacturadoModel.class);
	}

}

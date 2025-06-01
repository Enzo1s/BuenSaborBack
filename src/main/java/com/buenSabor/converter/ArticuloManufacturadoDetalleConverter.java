package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.ArticuloManufacturadoDetalle;
import com.buenSabor.model.ArticuloManufacturadoDetalleModel;

@Component
public class ArticuloManufacturadoDetalleConverter extends CommonConverter<ArticuloManufacturadoDetalleModel, ArticuloManufacturadoDetalle>{

	@Override
	public ArticuloManufacturadoDetalle modeloReqToEntidad(ArticuloManufacturadoDetalleModel m) {
		return ConverterUtil.map(m, ArticuloManufacturadoDetalle.class);
	}

	@Override
	public ArticuloManufacturadoDetalleModel entidadToModeloRes(ArticuloManufacturadoDetalle e) {
		return ConverterUtil.map(e, ArticuloManufacturadoDetalleModel.class);
	}

}

package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.ArticuloInsumo;
import com.buenSabor.model.ArticuloInsumoModel;

@Component
public class ArticuloInsumoConverter extends CommonConverter<ArticuloInsumoModel, ArticuloInsumo>{

	@Override
	public ArticuloInsumo modeloReqToEntidad(ArticuloInsumoModel model) {
		return ConverterUtil.map(model, ArticuloInsumo.class);
	}

	@Override
	public ArticuloInsumoModel entidadToModeloRes(ArticuloInsumo entity) {
		return ConverterUtil.map(entity, ArticuloInsumoModel.class);
	}

}

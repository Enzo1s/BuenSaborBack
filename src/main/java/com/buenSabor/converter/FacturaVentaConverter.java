package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.FacturaVenta;
import com.buenSabor.model.FacturaVentaModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class FacturaVentaConverter extends CommonConverter<FacturaVentaModel, FacturaVenta> {

	@Override
	public FacturaVenta modeloReqToEntidad(FacturaVentaModel m) {
		return ConverterUtil.map(m, FacturaVenta.class);
	}

	@Override
	public FacturaVentaModel entidadToModeloRes(FacturaVenta e) {
		return ConverterUtil.map(e, FacturaVentaModel.class);
	}

}

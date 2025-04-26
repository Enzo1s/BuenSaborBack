package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.FacturaVentaDetalle;
import com.buenSabor.model.FacturaVentaDetalleModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class FacturaVentaDetalleConverter extends CommonConverter<FacturaVentaDetalleModel, FacturaVentaDetalle> {

	@Override
	public FacturaVentaDetalle modeloReqToEntidad(FacturaVentaDetalleModel m) {
		return ConverterUtil.map(m, FacturaVentaDetalle.class);
	}

	@Override
	public FacturaVentaDetalleModel entidadToModeloRes(FacturaVentaDetalle e) {
		return ConverterUtil.map(e, FacturaVentaDetalleModel.class);
	}

}

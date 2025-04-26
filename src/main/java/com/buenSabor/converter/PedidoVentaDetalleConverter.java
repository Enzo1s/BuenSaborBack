package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.PedidoVentaDetalle;
import com.buenSabor.model.PedidoVentaDetalleModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class PedidoVentaDetalleConverter extends CommonConverter<PedidoVentaDetalleModel, PedidoVentaDetalle> {

	@Override
	public PedidoVentaDetalle modeloReqToEntidad(PedidoVentaDetalleModel m) {
		return ConverterUtil.map(m, PedidoVentaDetalle.class);
	}

	@Override
	public PedidoVentaDetalleModel entidadToModeloRes(PedidoVentaDetalle e) {
		return ConverterUtil.map(e, PedidoVentaDetalleModel.class);
	}

}

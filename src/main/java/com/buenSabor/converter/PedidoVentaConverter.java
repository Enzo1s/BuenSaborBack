package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class PedidoVentaConverter extends CommonConverter<PedidoVentaModel, PedidoVenta>{

	@Override
	public PedidoVenta modeloReqToEntidad(PedidoVentaModel m) {
		return ConverterUtil.map(m, PedidoVenta.class);
	}

	@Override
	public PedidoVentaModel entidadToModeloRes(PedidoVenta e) {
		return ConverterUtil.map(e, PedidoVentaModel.class);
	}

}

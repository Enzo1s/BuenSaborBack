package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Cliente;
import com.buenSabor.model.ClienteModel;
import com.buenSabor.utils.ConverterUtil;

@Component
public class ClienteConverter extends CommonConverter<ClienteModel, Cliente> {

	@Override
	public Cliente modeloReqToEntidad(ClienteModel m) {
		return ConverterUtil.map(m, Cliente.class);
	}

	@Override
	public ClienteModel entidadToModeloRes(Cliente e) {
		return ConverterUtil.map(e, ClienteModel.class);
	}

}

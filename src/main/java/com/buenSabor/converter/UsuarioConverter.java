package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Usuario;
import com.buenSabor.model.UsuarioModel;

@Component
public class UsuarioConverter extends CommonConverter<UsuarioModel, Usuario> {

	@Override
	public Usuario modeloReqToEntidad(UsuarioModel m) {
		return ConverterUtil.map(m, Usuario.class);
	}

	@Override
	public UsuarioModel entidadToModeloRes(Usuario e) {
		UsuarioModel usuario = ConverterUtil.map(e, UsuarioModel.class);
		usuario.setPassword(null);
		return usuario;
	}

}

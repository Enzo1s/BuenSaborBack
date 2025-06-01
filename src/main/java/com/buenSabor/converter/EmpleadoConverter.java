package com.buenSabor.converter;

import org.springframework.stereotype.Component;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.entity.Empleado;
import com.buenSabor.model.EmpleadoModel;

@Component
public class EmpleadoConverter extends CommonConverter<EmpleadoModel, Empleado> {

	@Override
	public Empleado modeloReqToEntidad(EmpleadoModel m) {
		return ConverterUtil.map(m, Empleado.class);
	}

	@Override
	public EmpleadoModel entidadToModeloRes(Empleado e) {
		return ConverterUtil.map(e, EmpleadoModel.class);
	}

}

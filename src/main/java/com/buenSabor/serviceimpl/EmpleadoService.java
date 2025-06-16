package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empleado;
import com.buenSabor.model.EmpleadoModel;
import com.buenSabor.repository.EmpleadoRepository;


@Service
public class EmpleadoService extends CommonServiceImpl<Empleado, EmpleadoModel, 
CommonConverter<EmpleadoModel,Empleado>, CommonRepository<Empleado,String>>{

	@Autowired
	private EmpleadoRepository empleadoRepository;
	
	public EmpleadoModel findByUsuarioId(String id) {
		Empleado empleado = empleadoRepository.findByUsuarioId(id);
		if(empleado != null) 
			return converter.entidadToModeloRes(empleado);
		return null;
	}
}

package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empleado;
import com.buenSabor.model.EmpleadoModel;


@Service
public class EmpleadoService extends CommonServiceImpl<Empleado, EmpleadoModel, 
CommonConverter<EmpleadoModel,Empleado>, CommonRepository<Empleado,String>>{

}

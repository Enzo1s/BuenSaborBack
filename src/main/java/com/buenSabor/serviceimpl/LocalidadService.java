package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Localidad;
import com.buenSabor.model.LocalidadModel;

@Service
public class LocalidadService extends CommonServiceImpl<Localidad, LocalidadModel, 
CommonConverter<LocalidadModel,Localidad>, CommonRepository<Localidad,String>>{

}

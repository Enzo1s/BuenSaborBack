package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Provincia;
import com.buenSabor.model.ProvinciaModel;

@Service
public class ProvinciaService extends CommonServiceImpl<Provincia, ProvinciaModel, 
CommonConverter<ProvinciaModel,Provincia>, CommonRepository<Provincia,String>>{

}

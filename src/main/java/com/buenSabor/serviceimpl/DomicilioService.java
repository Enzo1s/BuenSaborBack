package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Domicilio;
import com.buenSabor.model.DomicilioModel;

@Service
public class DomicilioService extends CommonServiceImpl<Domicilio, DomicilioModel, 
CommonConverter<DomicilioModel,Domicilio>, CommonRepository<Domicilio,String>>{

}

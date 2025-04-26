package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.DatosMercadoPago;
import com.buenSabor.model.DatosMercadoPagoModel;

@Service
public class DatosMercadoPagoService extends CommonServiceImpl<DatosMercadoPago, DatosMercadoPagoModel, 
CommonConverter<DatosMercadoPagoModel,DatosMercadoPago>, CommonRepository<DatosMercadoPago,String>>{

}

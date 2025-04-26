package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;
import com.buenSabor.model.PromocionModel;

@Service
public class PromocionService extends CommonServiceImpl<Promocion, PromocionModel, 
CommonConverter<PromocionModel,Promocion>, CommonRepository<Promocion,String>>{

}

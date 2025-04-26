package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Pais;
import com.buenSabor.model.PaisModel;

@Service
public class PaisService extends CommonServiceImpl<Pais, PaisModel,
CommonConverter<PaisModel,Pais>, CommonRepository<Pais,String>>{

}

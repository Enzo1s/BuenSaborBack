package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloInsumo;
import com.buenSabor.model.ArticuloInsumoModel;

@Service
public class ArticuloInsumoService extends CommonServiceImpl<ArticuloInsumo, ArticuloInsumoModel, 
CommonConverter<ArticuloInsumoModel,ArticuloInsumo>, CommonRepository<ArticuloInsumo,String>>{

	
}

package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.CategoriaArticulo;
import com.buenSabor.model.CategoriaArticuloModel;

@Service
public class CategoriaArticuloService extends CommonServiceImpl<CategoriaArticulo, CategoriaArticuloModel, 
CommonConverter<CategoriaArticuloModel,CategoriaArticulo>, CommonRepository<CategoriaArticulo,String>>{

}

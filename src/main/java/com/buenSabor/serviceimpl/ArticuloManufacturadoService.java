package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloManufacturado;
import com.buenSabor.model.ArticuloManufacturadoModel;

@Service
public class ArticuloManufacturadoService extends CommonServiceImpl<ArticuloManufacturado, ArticuloManufacturadoModel, 
CommonConverter<ArticuloManufacturadoModel,ArticuloManufacturado>, CommonRepository<ArticuloManufacturado,String>>{

}

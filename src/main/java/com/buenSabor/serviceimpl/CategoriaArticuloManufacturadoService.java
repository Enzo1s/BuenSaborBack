package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.CategoriaArticuloManufacturado;
import com.buenSabor.model.CategoriaArticuloManufacturadoModel;

@Service
public class CategoriaArticuloManufacturadoService extends CommonServiceImpl<CategoriaArticuloManufacturado, CategoriaArticuloManufacturadoModel, 
CommonConverter<CategoriaArticuloManufacturadoModel,CategoriaArticuloManufacturado>, CommonRepository<CategoriaArticuloManufacturado,String>>{

}

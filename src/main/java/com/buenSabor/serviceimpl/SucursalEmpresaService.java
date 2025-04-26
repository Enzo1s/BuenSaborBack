package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.SucursalEmpresa;
import com.buenSabor.model.SucursalEmpresaModel;

@Service
public class SucursalEmpresaService extends CommonServiceImpl<SucursalEmpresa, SucursalEmpresaModel, 
CommonConverter<SucursalEmpresaModel,SucursalEmpresa>, CommonRepository<SucursalEmpresa,String>>{

}

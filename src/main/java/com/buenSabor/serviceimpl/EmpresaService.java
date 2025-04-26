package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empresa;
import com.buenSabor.model.EmpresaModel;

@Service
public class EmpresaService extends CommonServiceImpl<Empresa, EmpresaModel, 
CommonConverter<EmpresaModel,Empresa>, CommonRepository<Empresa,String>>{

}

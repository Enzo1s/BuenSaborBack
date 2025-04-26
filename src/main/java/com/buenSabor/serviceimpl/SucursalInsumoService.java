package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.model.SucursalInsumoModel;

@Service
public class SucursalInsumoService extends CommonServiceImpl<SucursalInsumo, SucursalInsumoModel, 
CommonConverter<SucursalInsumoModel,SucursalInsumo>, CommonRepository<SucursalInsumo,String>>{

}

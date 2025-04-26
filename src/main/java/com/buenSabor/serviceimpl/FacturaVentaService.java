package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.FacturaVenta;
import com.buenSabor.model.FacturaVentaModel;

@Service
public class FacturaVentaService extends CommonServiceImpl<FacturaVenta, FacturaVentaModel, 
CommonConverter<FacturaVentaModel,FacturaVenta>, CommonRepository<FacturaVenta,String>>{

}

package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.model.PedidoVentaModel;

@Service
public class PedidoVentaService extends CommonServiceImpl<PedidoVenta, PedidoVentaModel, 
CommonConverter<PedidoVentaModel,PedidoVenta>, CommonRepository<PedidoVenta,String>>{

}

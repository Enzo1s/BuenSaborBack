package com.buenSabor.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.PedidoVenta;	
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.repository.PedidoVentaRepository;

@Service
public class PedidoVentaService extends CommonServiceImpl<PedidoVenta, PedidoVentaModel, 
CommonConverter<PedidoVentaModel,PedidoVenta>, CommonRepository<PedidoVenta,String>>{

	@Autowired
	private PedidoVentaRepository pedidoVentaRepository;
	
	public List<PedidoVentaModel> findByEmpleadoById(String id) {
		List<PedidoVenta> entities = pedidoVentaRepository.findByEmpleadoId(id);
		if(entities.isEmpty()) {
			return new ArrayList<>();
		} else {
			return entities.stream().map(pv -> converter.entidadToModeloRes(pv)).toList();
		}
	}
}

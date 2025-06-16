package com.buenSabor.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Cliente;
import com.buenSabor.model.ClienteModel;
import com.buenSabor.repository.ClienteRepository;

@Service
public class ClienteService extends CommonServiceImpl<Cliente, ClienteModel, 
CommonConverter<ClienteModel,Cliente>, CommonRepository<Cliente,String>>{

//	@Autowired
//	private ClienteRepository clienteRepository;
//	
//	public List<ClienteModel> listadoPorSucursal(String id) {
//		List<Cliente> listado = clienteRepository.findByfindBySucursalEmpresaId(id);
//		if(listado != null && !listado.isEmpty())
//			return listado.stream().map(si -> converter.entidadToModeloRes(si)).toList();
//		return new ArrayList<>();
//	}
}

package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Cliente;
import com.buenSabor.model.ClienteModel;

@Service
public class ClienteService extends CommonServiceImpl<Cliente, ClienteModel, 
CommonConverter<ClienteModel,Cliente>, CommonRepository<Cliente,String>>{

}

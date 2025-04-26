package com.buenSabor.serviceimpl;

import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Usuario;
import com.buenSabor.model.UsuarioModel;

@Service
public class UsuarioService extends CommonServiceImpl<Usuario, UsuarioModel, 
CommonConverter<UsuarioModel,Usuario>, CommonRepository<Usuario,String>>{

}

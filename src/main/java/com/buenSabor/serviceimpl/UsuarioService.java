package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.auth0.jwt.exceptions.JWTCreationException;
import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.dto.LoginDTO;
import com.buenSabor.entity.Usuario;
import com.buenSabor.exeptions.ExistingEntityException;
import com.buenSabor.exeptions.PasswordException;
import com.buenSabor.exeptions.UserNotFoundException;
import com.buenSabor.jwt.JWTUtil;
import com.buenSabor.model.UsuarioModel;
import com.buenSabor.repository.UsuarioRepository;

import jakarta.transaction.Transactional;

@Service
public class UsuarioService extends CommonServiceImpl<Usuario, UsuarioModel, 
CommonConverter<UsuarioModel,Usuario>, CommonRepository<Usuario,String>>{

	@Autowired
	private JWTUtil jwtUtil;
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Override
	public UsuarioModel save(UsuarioModel model) {
		model.setPassword(new BCryptPasswordEncoder().encode(model.getPassword()));
		return super.save(model);
	}

	@Override
	public UsuarioModel update(UsuarioModel model) {
		model.setPassword(new BCryptPasswordEncoder().encode(model.getPassword()));
		return super.update(model);
	}

	@Transactional
	public String registrar(UsuarioModel usuario) throws ExistingEntityException, PasswordException, JWTCreationException, NullPointerException, UserNotFoundException {
		Usuario userDB = usuarioRepository.findByUsername(usuario.getUsername());
		if(userDB != null)
			throw new ExistingEntityException("Username existente");
		Usuario entidad = converter.modeloReqToEntidad(usuario);
		entidad.setPassword(new BCryptPasswordEncoder().encode(usuario.getPassword()));
		repository.save(entidad);
		LoginDTO loginDto = new LoginDTO(entidad.getUsername(), usuario.getPassword());
		return jwtUtil.generateToken(loginDto);
	
	}
	
	public UsuarioModel getByToken(String token) {
		Usuario usuario = jwtUtil.obtenerUsuario(token);
		return converter.entidadToModeloRes(usuario);
	}
}

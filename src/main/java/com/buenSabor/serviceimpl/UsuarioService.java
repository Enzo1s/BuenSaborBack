package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.dto.LoginDTO;
import com.buenSabor.entity.Usuario;
import com.buenSabor.jwt.JWTUtil;
import com.buenSabor.model.UsuarioModel;

import jakarta.transaction.Transactional;

@Service
public class UsuarioService extends CommonServiceImpl<Usuario, UsuarioModel, 
CommonConverter<UsuarioModel,Usuario>, CommonRepository<Usuario,String>>{

	@Autowired
	private JWTUtil jwtUtil;
	
	@Transactional
	public String registrar(UsuarioModel usuario) throws Exception {
		Usuario entidad = converter.modeloReqToEntidad(usuario);
		entidad.setPassword(new BCryptPasswordEncoder().encode(usuario.getPassword()));
		try {
			repository.save(entidad);
			LoginDTO loginDto = new LoginDTO(entidad.getUsername(), entidad.getPassword());
			return jwtUtil.generateToken(loginDto);
		}catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}
	
	public UsuarioModel getByToken(String token) {
		Usuario usuario = jwtUtil.obtenerUsuario(token);
		return converter.entidadToModeloRes(usuario);
	}
}

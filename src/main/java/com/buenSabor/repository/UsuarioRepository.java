package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Usuario;

@Repository
public interface UsuarioRepository extends CommonRepository<Usuario, String>{

	Usuario findByUsername(String username);
}

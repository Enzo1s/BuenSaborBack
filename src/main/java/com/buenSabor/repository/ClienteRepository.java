package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Cliente;

@Repository
public interface ClienteRepository extends CommonRepository<Cliente, String>{
	
//	List<Cliente> findByfindBySucursalEmpresaId(String id);

}

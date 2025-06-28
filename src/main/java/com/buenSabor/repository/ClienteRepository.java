package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Cliente;
import com.buenSabor.entity.Empleado;

@Repository
public interface ClienteRepository extends CommonRepository<Cliente, String>{
	
//	List<Cliente> findByfindBySucursalEmpresaId(String id);
    public Cliente findByUsuarioId(String id);

}

package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empleado;

@Repository
public interface EmpleadoRepository extends CommonRepository<Empleado, String>{

	public Empleado findByUsuarioId(String id);
	
}

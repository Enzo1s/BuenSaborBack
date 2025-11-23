package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empleado;
import com.buenSabor.enums.Cargo;

@Repository
public interface EmpleadoRepository extends CommonRepository<Empleado, String>{

	public Empleado findByUsuarioId(String id);

	public List<Empleado> findByCargo(Cargo cargo);

}

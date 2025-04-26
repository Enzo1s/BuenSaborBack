package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Empresa;

@Repository
public interface EmpresaRepository extends CommonRepository<Empresa, String>{

}

package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Cliente;

@Repository
public interface ClienteRepository extends CommonRepository<Cliente, String>{

}

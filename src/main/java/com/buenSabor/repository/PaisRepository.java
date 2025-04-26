package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Pais;

@Repository
public interface PaisRepository extends CommonRepository<Pais, String>{

}

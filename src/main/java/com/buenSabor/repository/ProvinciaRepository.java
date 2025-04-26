package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Provincia;

@Repository
public interface ProvinciaRepository extends CommonRepository<Provincia, String>{

}

package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.CategoriaArticulo;

@Repository
public interface CategoriaArticuloRepository extends CommonRepository<CategoriaArticulo, String>{

}

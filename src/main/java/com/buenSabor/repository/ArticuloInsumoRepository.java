package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloInsumo;

@Repository
public interface ArticuloInsumoRepository extends CommonRepository<ArticuloInsumo, String> {

}

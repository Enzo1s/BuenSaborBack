package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloManufacturado;

@Repository
public interface ArticuloManufacturadoRepository extends CommonRepository<ArticuloManufacturado, String>{

}

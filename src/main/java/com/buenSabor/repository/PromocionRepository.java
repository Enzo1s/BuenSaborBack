package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;

@Repository
public interface PromocionRepository extends CommonRepository<Promocion, String>{

}

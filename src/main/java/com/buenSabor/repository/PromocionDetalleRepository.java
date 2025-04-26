package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.PromocionDetalle;

@Repository
public interface PromocionDetalleRepository extends CommonRepository<PromocionDetalle, String> {

}

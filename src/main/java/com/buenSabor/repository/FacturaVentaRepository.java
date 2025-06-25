package com.buenSabor.repository;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.FacturaVenta;

@Repository
public interface FacturaVentaRepository extends CommonRepository<FacturaVenta, String>{
    Optional<FacturaVenta> findById(String id);
}

package com.buenSabor.repository;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.FacturaVentaDetalle;

@Repository
public interface FacturaVentaDetalleRepository extends CommonRepository<FacturaVentaDetalle, String>{

}

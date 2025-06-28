package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloManufacturado;

@Repository
public interface ArticuloManufacturadoRepository extends CommonRepository<ArticuloManufacturado, String>{
	
	 List<ArticuloManufacturado> findByArticuloManufacturadoDetalleArticuloInsumoId(String idInsumo);
	 
//	 @Query("SELECT am FROM ArticuloManufacturado am JOIN am.articuloManufacturadoDetalle amd WHERE amd.articuloInsumo.id = :idInsumo")
//	 List<ArticuloManufacturado> findByArticuloInsumoId(@Param("idInsumo") String idInsumo);

}

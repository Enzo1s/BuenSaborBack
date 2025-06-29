package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.SucursalInsumo;

@Repository
public interface SucursalInsumoRepository extends CommonRepository<SucursalInsumo, String> {
	
	public List<SucursalInsumo> findBySucursalEmpresaId(String id);
	
	public SucursalInsumo findBySucursalEmpresaIdAndArticuloInsumoId(String sucursalEmpresaId, String articuloInsumoId);

}

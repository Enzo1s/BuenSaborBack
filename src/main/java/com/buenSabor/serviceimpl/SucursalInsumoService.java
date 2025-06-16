package com.buenSabor.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.model.SucursalInsumoModel;
import com.buenSabor.repository.SucursalInsumoRepository;

@Service
public class SucursalInsumoService extends CommonServiceImpl<SucursalInsumo, SucursalInsumoModel, 
CommonConverter<SucursalInsumoModel,SucursalInsumo>, CommonRepository<SucursalInsumo,String>>{
	
	@Autowired
	private SucursalInsumoRepository sucursalInsumoRepository;

	public List<SucursalInsumoModel> searchByIdSucursal(String id) {
		List<SucursalInsumo> listado = sucursalInsumoRepository.findBySucursalEmpresaId(id);
		if(listado != null && !listado.isEmpty())
			return listado.stream().map(si -> converter.entidadToModeloRes(si)).toList();
		return new ArrayList<>();
	}
}

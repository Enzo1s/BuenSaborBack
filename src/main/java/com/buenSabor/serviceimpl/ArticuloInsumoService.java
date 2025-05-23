package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloInsumo;
import com.buenSabor.model.ArticuloInsumoModel;
import com.buenSabor.utils.GuardarArchivos;

import jakarta.transaction.Transactional;

@Service
public class ArticuloInsumoService extends CommonServiceImpl<ArticuloInsumo, ArticuloInsumoModel, 
CommonConverter<ArticuloInsumoModel,ArticuloInsumo>, CommonRepository<ArticuloInsumo,String>>{
	
	@Autowired
	private GuardarArchivos guardarArchivos;
	@Override
	@Transactional
	public ArticuloInsumoModel save(ArticuloInsumoModel modelo) {
		ArticuloInsumo entidad = converter.modeloReqToEntidad(modelo);
		if(modelo.getPathImagen() != null && !modelo.getPathImagen().isEmpty()) {
			entidad.setPathImagen(guardarArchivos.guardarImgenes(modelo.getPathImagen()));
		}
		
		entidad = repository.save(entidad);
		
		return converter.entidadToModeloRes(entidad);
	}
	
	public ResponseEntity<Resource> abrirArchivo(String archivo) {
		return guardarArchivos.leerArchivo(archivo);
	}
	
}

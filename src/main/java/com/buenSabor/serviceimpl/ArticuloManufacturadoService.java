package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloManufacturado;
import com.buenSabor.entity.ArticuloManufacturadoDetalle;
import com.buenSabor.model.ArticuloManufacturadoModel;
import com.buenSabor.utils.GuardarArchivos;

import jakarta.transaction.Transactional;

@Service
public class ArticuloManufacturadoService extends CommonServiceImpl<ArticuloManufacturado, ArticuloManufacturadoModel, 
CommonConverter<ArticuloManufacturadoModel,ArticuloManufacturado>, CommonRepository<ArticuloManufacturado,String>>{

	@Autowired
	private GuardarArchivos guardarArchivos;
	
	@Override
	@Transactional
	public ArticuloManufacturadoModel save(ArticuloManufacturadoModel modelo) {
		ArticuloManufacturado entidad = converter.modeloReqToEntidad(modelo);
		if(modelo.getPathImagen() != null && !modelo.getPathImagen().isEmpty()) {
			entidad.setPathImagen(guardarArchivos.guardarImgenes(modelo.getPathImagen()));
		}
//		for(ArticuloManufacturadoDetalle detalle: entidad.getArticuloManufacturadoDetalle()) {
//			if(detalle.getArticuloInsumo() != null && detalle.getArticuloInsumo().getId() != null && !detalle.getArticuloInsumo().getId().isEmpty() ) {
//				
//			}
//		}
		
		entidad = repository.save(entidad);
		
		return converter.entidadToModeloRes(entidad);
	}
	
	public ResponseEntity<Resource> abrirArchivo(String archivo) {
		return guardarArchivos.leerArchivo(archivo);
	}
}

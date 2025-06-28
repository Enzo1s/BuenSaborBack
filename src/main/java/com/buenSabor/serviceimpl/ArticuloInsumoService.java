package com.buenSabor.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ArticuloInsumo;
import com.buenSabor.model.ArticuloInsumoModel;
import com.buenSabor.repository.ArticuloManufacturadoRepository;
import com.buenSabor.utils.GuardarArchivos;
import com.buenSabor.entity.ArticuloManufacturado;

import jakarta.transaction.Transactional;

@Service
public class ArticuloInsumoService extends CommonServiceImpl<ArticuloInsumo, ArticuloInsumoModel, 
CommonConverter<ArticuloInsumoModel,ArticuloInsumo>, CommonRepository<ArticuloInsumo,String>>{
	
	@Autowired
	private ArticuloManufacturadoRepository amRepository;
	
	@Autowired
	private GuardarArchivos guardarArchivos;
	@Override
	@Transactional
	public ArticuloInsumoModel save(ArticuloInsumoModel modelo) {
		ArticuloInsumo entidad = converter.modeloReqToEntidad(modelo);
		if(modelo.getPathImagen() != null && !modelo.getPathImagen().isEmpty()) {
			entidad.setPathImagen(guardarArchivos.guardarImgenes(modelo.getPathImagen()));
		}
		if(modelo.getId() != null && !modelo.getId().isEmpty()) {
			List<ArticuloManufacturado> articulos = amRepository.findByArticuloManufacturadoDetalleArticuloInsumoId(modelo.getId());
			Optional<ArticuloInsumo> optionalDB = repository.findById(modelo.getId());
			if(optionalDB.isPresent()) {
				ArticuloInsumo articulo = optionalDB.get();
				double diferenciaPrecio = (entidad.getPrecioCompra() - articulo.getPrecioCompra()) / articulo.getPrecioCompra();
				if(articulos != null && !articulos.isEmpty()) {
					for(ArticuloManufacturado a: articulos) {
						a.setPrecioCosto(a.getPrecioCosto()* (1 + diferenciaPrecio));
						a.setPrecioVenta(a.getPrecioVenta() * (1+ diferenciaPrecio));
						amRepository.save(a);
					}
					
				}
				
			}
		}
		
		entidad = repository.save(entidad);
		
		return converter.entidadToModeloRes(entidad);
	}
	
	public ResponseEntity<Resource> abrirArchivo(String archivo) {
		return guardarArchivos.leerArchivo(archivo);
	}
	
	public void prueba(String id) {
		List<ArticuloManufacturado> articulos = amRepository.findByArticuloManufacturadoDetalleArticuloInsumoId(id);
		for(ArticuloManufacturado a: articulos)
		System.out.println(a);
	}
	
}

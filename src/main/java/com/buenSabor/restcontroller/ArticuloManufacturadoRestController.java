package com.buenSabor.restcontroller;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ArticuloManufacturadoModel;
import com.buenSabor.serviceimpl.ArticuloManufacturadoService;

@RestController
@RequestMapping(path = "/articulo-manufacturado")
public class ArticuloManufacturadoRestController extends CommonController<ArticuloManufacturadoModel, ArticuloManufacturadoService>{

	@GetMapping(value="/imagen")
    public ResponseEntity<Resource> verArchivo(@RequestParam String path) {
		try {
		return service.abrirArchivo(path);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}
}

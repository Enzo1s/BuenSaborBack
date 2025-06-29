package com.buenSabor.restcontroller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ArticuloInsumoModel;
import com.buenSabor.serviceimpl.ArticuloInsumoService;

@RestController
@RequestMapping(path = "/articulo-insumo")
public class ArticuloInsumoRestController extends CommonController<ArticuloInsumoModel, ArticuloInsumoService> {

	@GetMapping(value="/imagen")
    public ResponseEntity<Resource> verArchivo(@RequestParam String path) {
		try {
		return service.abrirArchivo(path);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}
	
	@GetMapping("/verificar-stock")
	public ResponseEntity<?> verificarStock(@RequestParam String idInsumo, @RequestParam String idSucursal) {
		Map<String, Double> response = new HashMap<>();
		response.put("stock", service.verificarStock(idInsumo, idSucursal));
		return ResponseEntity.status(HttpStatus.ACCEPTED).body(response);
	}
	
	@GetMapping("/prueba")
	public ResponseEntity<?> prueba(@RequestParam String id) {
		service.prueba(id);
		return ResponseEntity.status(HttpStatus.OK).build();
	}
}

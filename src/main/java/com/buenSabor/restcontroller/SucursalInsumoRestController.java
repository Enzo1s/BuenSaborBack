package com.buenSabor.restcontroller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.SucursalInsumoModel;
import com.buenSabor.serviceimpl.SucursalInsumoService;

@RestController
@RequestMapping(path = "/sucursal-insumo")
public class SucursalInsumoRestController extends CommonController<SucursalInsumoModel, SucursalInsumoService>{

	@GetMapping("/search")
	public ResponseEntity<?> search(@RequestParam String idSucursal) {
		return ResponseEntity.ok(service.searchByIdSucursal(idSucursal));
	}
}

package com.buenSabor.restcontroller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ClienteModel;
import com.buenSabor.serviceimpl.ClienteService;

@RestController
@RequestMapping(path = "/cliente")
public class ClienteRestController extends CommonController<ClienteModel, ClienteService>{

//	@GetMapping("/sucursal")
//	public ResponseEntity<?> listadoPorSucursal(@RequestParam String id) {
//		return ResponseEntity.ok().body(service.listadoPorSucursal(id));
//	}

@GetMapping("/usuario")
	public ResponseEntity<?> findByUsuarioId(@RequestParam String id) {
		ClienteModel empleado = service.findByUsuarioId(id);
		if(empleado != null) {
			return ResponseEntity.ok(empleado);
		}
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(empleado);
		
	}
}

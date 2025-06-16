package com.buenSabor.restcontroller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.EmpleadoModel;
import com.buenSabor.serviceimpl.EmpleadoService;

@RestController
@RequestMapping(path = "/empleado")
public class EmpleadoRestController extends CommonController<EmpleadoModel, EmpleadoService>{

	@GetMapping("/usuario")
	public ResponseEntity<?> findByUsuarioId(@RequestParam String id) {
		EmpleadoModel empleado = service.findByUsuarioId(id);
		if(empleado != null) {
			return ResponseEntity.ok(empleado);
		}
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(empleado);
	}
}

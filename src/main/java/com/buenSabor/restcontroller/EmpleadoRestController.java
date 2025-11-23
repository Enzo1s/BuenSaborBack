package com.buenSabor.restcontroller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.enums.Cargo;
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

	@GetMapping("/cargo")
	public ResponseEntity<?> getEmpleadosByCargo(@RequestParam(required = false) Cargo cargo) {
		if (cargo != null) {
			List<EmpleadoModel> empleados = service.findByCargo(cargo);
			return ResponseEntity.ok(empleados);
		} else {
			return ResponseEntity.ok(service.findAll());
		}
	}
}

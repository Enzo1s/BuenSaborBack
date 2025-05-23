package com.buenSabor.restcontroller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.UsuarioModel;
import com.buenSabor.serviceimpl.UsuarioService;

@RestController
@RequestMapping(path = "/usuario")
public class UsuarioRestController  extends CommonController<UsuarioModel, UsuarioService>{

	@GetMapping("/token")
	public ResponseEntity<UsuarioModel> getByToken(@RequestParam String token) {
		return ResponseEntity.ok(service.getByToken(token));
	}
}

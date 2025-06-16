package com.buenSabor.restcontroller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.serviceimpl.PedidoVentaService;

@RestController
@RequestMapping(path = "/pedido-venta")
public class PedidoVentaRestController extends CommonController<PedidoVentaModel, PedidoVentaService>{
	
	@GetMapping("/empleado")
	public ResponseEntity<?> findByIdEmpleado(@RequestParam String id) {
		return ResponseEntity.ok(service.findByEmpleadoById(id));
	}

}

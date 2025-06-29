package com.buenSabor.restcontroller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.enums.Estado;
import com.buenSabor.exeptions.StockException;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.serviceimpl.PedidoVentaService;

@RestController
@RequestMapping(path = "/pedido-venta")
public class PedidoVentaRestController extends CommonController<PedidoVentaModel, PedidoVentaService>{
	
	@GetMapping("/empleado")
	public ResponseEntity<?> findByIdEmpleado(@RequestParam String id) {
		return ResponseEntity.ok(service.findByEmpleadoById(id));
	}

	@PutMapping
	public ResponseEntity<?> updateStatus(@RequestParam String id, @RequestParam Estado status) {
		PedidoVentaModel pedido = service.updateStatus(id, status);
		if(pedido == null) {
			Map<String, String> response = new HashMap<>();
			response.put("error", "No se encontró el pedido");
			return ResponseEntity.badRequest().body(response);
		}
		return ResponseEntity.ok(pedido);
	}
	
	@PostMapping("/create-stock")
	public ResponseEntity<?> createWithStock(@RequestBody PedidoVentaModel model) {
		try {
			PedidoVentaModel pedido = service.saveWithStock(model);
			return ResponseEntity.status(HttpStatus.CREATED).body(pedido);
		} catch (StockException e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
		}
	}
	
	
}

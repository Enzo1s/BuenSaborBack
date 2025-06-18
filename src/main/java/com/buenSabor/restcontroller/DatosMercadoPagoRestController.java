package com.buenSabor.restcontroller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.dto.MPForm;
import com.buenSabor.model.DatosMercadoPagoModel;
import com.buenSabor.serviceimpl.DatosMercadoPagoService;
import com.mercadopago.exceptions.MPApiException;
import com.mercadopago.exceptions.MPException;

@RestController
@RequestMapping(path = "/datos-mercadopago")
public class DatosMercadoPagoRestController extends CommonController<DatosMercadoPagoModel, DatosMercadoPagoService>{

	
	@PostMapping("/create-preference")
	public ResponseEntity<?> createPreference(@RequestParam String idPedidoVentas) {
		Map<String, String> response = new HashMap<String, String>();
		try {
			String idPreference = service.createPreference(idPedidoVentas);
			if(idPreference != null && !idPreference.isEmpty()) {
				response.put("idPreference", idPreference);
				return ResponseEntity.status(HttpStatus.CREATED).body(response);
			}
			response.put("error", "No se encontró pedido venta");
			return ResponseEntity.status(HttpStatus.OK).body(response);
			
		} catch (MPException | MPApiException e) {
			e.printStackTrace();
			response.put("error", e.getMessage());
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
		}
	}
	
	 @PostMapping("/process_payment")
	 public ResponseEntity<?> processPayment(@RequestBody MPForm mpForm) {
	 	Map<String, String> response = new HashMap<>();
	 	try {
	 		return ResponseEntity.ok(service.processBuy(mpForm));
	 	} catch (MPException e) {
	 		e.printStackTrace();
	 		response.put("error", e.getMessage());
	 		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	 	} catch (MPApiException e) {
	 		e.printStackTrace();
	 		response.put("error", e.getMessage());
	 		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	 	}
	 }
}

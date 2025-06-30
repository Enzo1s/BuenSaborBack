package com.buenSabor.restcontroller;

import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.dto.FechasDTO;
import com.buenSabor.serviceimpl.ReportesService;
import com.mercadopago.net.HttpStatus;

@RestController
@RequestMapping("/reportes")
@CrossOrigin(origins = "http://localhost:5173", allowCredentials = "true")

public class ReportesController 
{
	@Autowired
	private ReportesService reportesService;
	 
	@PostMapping("/excel")
	public ResponseEntity<?> generarExcel(@RequestBody FechasDTO fechas) {
		try {
			byte[] excelBytes = reportesService.generarReporteExcel(fechas.getFechaDesde(), fechas.getFechaHasta());

			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yy");
			String nombreArchivo = "Pedidos " + fechas.getFechaDesde().format(formatter) + " a "
					+ fechas.getFechaHasta().format(formatter) + ".xlsx";

			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.parseMediaType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"));
			headers.setContentDispositionFormData("attachment", nombreArchivo);
			headers.add("Access-Control-Expose-Headers", "Content-Disposition");

			return new ResponseEntity<>(excelBytes, headers, HttpStatus.OK);

		} catch (Exception e) {
			System.err.println(e);
			return ResponseEntity.badRequest().body(e.getMessage());
		}
	}
	
	@GetMapping("/pdf")
	public ResponseEntity<?> generarPDF(@RequestParam String id) {
		try {
			byte[] pdfBytes = reportesService.generarPDF(id);

			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_PDF);
			headers.setContentDispositionFormData("attachment", "reporte_pedido_" + id + ".pdf");
			headers.add("Access-Control-Expose-Headers", "Content-Disposition");

			return new ResponseEntity<>(pdfBytes, headers, HttpStatus.OK);
		} catch (Exception e) {
			return ResponseEntity
					.badRequest()
					.body("No se pudo generar el PDF: " + e.getMessage());
		}
	}

}

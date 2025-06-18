package com.buenSabor.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.dto.FechasDTO;
import com.buenSabor.serviceimpl.ReportesService;

@RestController
@RequestMapping("/api/reportes")
public class ReportesController {

	 @Autowired
	    private ReportesService reportesService;
	 
	 @PostMapping("/excel")
	    public ResponseEntity<?> generarExcel(@RequestBody FechasDTO fechas) {
	        try {
	            byte[] excelBytes = reportesService.generarReporteExcel(
	                    fechas.getFechaDesde(), fechas.getFechaHasta());

	            return ResponseEntity.ok()
	                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=ReportePedidos.xlsx")
	                    .contentType(MediaType
	                            .parseMediaType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"))
	                    .body(excelBytes);

	        } catch (Exception e) {
	            return ResponseEntity.badRequest().body(e.getMessage());
	        }
	    }

	    @GetMapping("/pdf/{id}")
	    public ResponseEntity<?> generarPDFInstrumento(@PathVariable String id) 
	    {
	        try {
	            byte[] pdfBytes = reportesService.generarInstrumentoPDF(id);

	            return ResponseEntity.ok()
	                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=ReporteInstrumento_" + id + ".pdf")
	                    .contentType(MediaType.APPLICATION_PDF)
	                    .body(pdfBytes);
	        } catch (Exception e) {
	            return ResponseEntity.badRequest().body("No se pudo generar el PDF: " + e.getMessage());
	        }
	    }
}

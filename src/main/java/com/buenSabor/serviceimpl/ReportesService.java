package com.buenSabor.serviceimpl;

import java.io.ByteArrayOutputStream;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.dto.ReportePorFechaDTO;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.PedidoVentaDetalle;
import com.buenSabor.repository.PedidoVentaRepository;
import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;

import org.springframework.transaction.annotation.Transactional;

@Service
public class ReportesService {

	@Autowired
	private PedidoVentaRepository pedidoVentaRepository;

	@Transactional
	public byte[] generarReporteExcel(LocalDate fechaDesde, LocalDate fechaHasta) throws Exception {
		List<PedidoVenta> datos = pedidoVentaRepository.listarPorRangoFecha(fechaDesde, fechaHasta);

		if (datos == null || datos.isEmpty()) {
			throw new Exception("No hay datos para las fechas seleccionadas.");
		}

		try (Workbook workbook = new XSSFWorkbook()) {
			Sheet sheet = workbook.createSheet("Pedidos");

			CellStyle headerStyle = workbook.createCellStyle();
			org.apache.poi.ss.usermodel.Font font = workbook.createFont();
			font.setBold(true);
			headerStyle.setFont(font);

			// Cabecera
			Row header = sheet.createRow(0);
			String[] columnas = { "Fecha Pedido", "ArticuloInsumo", "ArticuloManufacturado", "Cantidad", "Precio Venta",
					"Subtotal" };

			for (int i = 0; i < columnas.length; i++) {
				Cell cell = header.createCell(i);
				cell.setCellValue(columnas[i]);
				cell.setCellStyle(headerStyle);
			}

			int rowIdx = 1;
			for (PedidoVenta r : datos) {
				Row row = sheet.createRow(rowIdx++);

				row.createCell(0).setCellValue(r.getFechaPedido().toString());
				for (PedidoVentaDetalle p : r.getPedidoVentaDetalle()) {
					Row row2 = sheet.createRow(rowIdx++);
					row2.createCell(1)
							.setCellValue(p.getArticuloInsumo() != null ? p.getArticuloInsumo().getDenominacion() : "");
					row2.createCell(2).setCellValue(
							p.getArticuloManufacturado() != null ? p.getArticuloManufacturado().getDenominacion() : "");
					row2.createCell(3).setCellValue(p.getCantidad());
					row2.createCell(4)
							.setCellValue(p.getArticuloInsumo() != null ? p.getArticuloInsumo().getPrecioVenta()
									: p.getArticuloManufacturado().getPrecioVenta());
				}
				row.createCell(5).setCellValue(r.getSubtotal().doubleValue());
			}

			for (int i = 0; i < columnas.length; i++) {
				sheet.autoSizeColumn(i);
			}

			ByteArrayOutputStream out = new ByteArrayOutputStream();
			workbook.write(out);
			return out.toByteArray();
		}
	}

	@Transactional(readOnly = true)
	public byte[] generarInstrumentoPDF(String id) throws Exception {
		Optional<PedidoVenta> obj = pedidoVentaRepository.findById(id);

		if (obj == null) {
			throw new Exception("Instrumento no encontrado con ID: " + id);
		}

		PedidoVenta pedido = obj.get();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		Document document = new Document();

		PdfWriter writer = PdfWriter.getInstance(document, out);
		document.open();

		// Fuentes
		Font titleFont = new Font(Font.HELVETICA, 18, Font.BOLD);
		Font headerFont = new Font(Font.HELVETICA, 14, Font.BOLD);
		Font bodyFont = new Font(Font.HELVETICA, 12);
		Font priceFont = new Font(Font.HELVETICA, 16,
				Font.BOLD);
		Font boldFont = new Font(Font.HELVETICA, 12,
				Font.BOLD);
		Font grayFont = new Font(Font.HELVETICA, 12,
				Font.NORMAL, java.awt.Color.GRAY);

		// Título principal
		Paragraph title = new Paragraph("Detalles del Pedido", titleFont);
		title.setAlignment(Element.ALIGN_CENTER);
		document.add(title);
		document.add(Chunk.NEWLINE);

		// Nombre del instrumento
		Paragraph instrumentName = new Paragraph(pedido.getFechaPedido().toString(), headerFont);
		instrumentName.setAlignment(Element.ALIGN_CENTER);
		document.add(instrumentName);
		document.add(Chunk.NEWLINE);

	

		// Precio
		Paragraph price = new Paragraph("$ " + pedido.getTotal(), priceFont);
		price.setAlignment(Element.ALIGN_CENTER);
		document.add(price);
		document.add(Chunk.NEWLINE);

		// Línea separadora
		document.add(new Paragraph("_____________________________________________"));
		document.add(Chunk.NEWLINE);

		if(pedido.getCliente() != null) {
		Paragraph cliente = new Paragraph();
		cliente.add(new Chunk("Cliente: ", boldFont));
		cliente.add(new Chunk(pedido.getCliente().getNombre() + pedido.getCliente().getApellido(), bodyFont));
		document.add(cliente);		
		}

		// Modelo
		Paragraph empleado = new Paragraph();
		empleado.add(new Chunk("Empleado: ", boldFont));
		empleado.add(new Chunk(pedido.getEmpleado().getNombre() + pedido.getEmpleado().getApellido(), bodyFont));
		document.add(empleado);
		
		Paragraph formaPago = new Paragraph();
		formaPago.add(new Chunk("Forma de pago: ", boldFont));
		formaPago.add(new Chunk(pedido.getFormaPago().toString() , bodyFont));
		document.add(formaPago);
		
		Paragraph Subtotal = new Paragraph();
		Subtotal.add(new Chunk("Subtotal: ", boldFont));
		Subtotal.add(new Chunk(pedido.getSubtotal().toString() , bodyFont));
		document.add(Subtotal);
		
		Paragraph detalle = new Paragraph();
		for(PedidoVentaDetalle p: pedido.getPedidoVentaDetalle()) {
			detalle.add(new Chunk(p.getArticuloInsumo() != null ? p.getArticuloInsumo().getDenominacion()
					: p.getArticuloManufacturado().getDenominacion(), boldFont));
			detalle.add(new Chunk(""+ (p.getArticuloInsumo() != null ? p.getArticuloInsumo().getPrecioVenta()
					: p.getArticuloManufacturado().getPrecioVenta()) , bodyFont));
			detalle.add(new Chunk(p.getCantidad() + "", boldFont));
			document.add(detalle);
		}


		document.close();
		return out.toByteArray();
	}
}

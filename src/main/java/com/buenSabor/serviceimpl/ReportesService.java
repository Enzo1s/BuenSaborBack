package com.buenSabor.serviceimpl;

import java.io.ByteArrayOutputStream;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;
import java.awt.Color;
import java.time.format.DateTimeFormatter;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.PedidoVentaDetalle;
import com.buenSabor.repository.PedidoVentaRepository;
import com.itextpdf.text.BaseColor;
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;



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
	public byte[] generarPDF(String id) throws Exception {	
		Optional<PedidoVenta> obj = pedidoVentaRepository.findById(id);

		if (obj.isEmpty()) {
			throw new Exception("Pedido no encontrado con ID: " + id);
		}

		PedidoVenta pedido = obj.get();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		Document document = new Document();

		PdfWriter.getInstance(document, out);
		document.open();

		Font titleFont = new Font(Font.HELVETICA, 18, Font.BOLD, Color.BLACK);
		Font bodyFont = new Font(Font.HELVETICA, 12, Font.NORMAL, Color.BLACK);
		Font boldFont = new Font(Font.HELVETICA, 12, Font.BOLD, Color.BLACK);
		Font priceFont = new Font(Font.HELVETICA, 14, Font.BOLD, new Color(0, 102, 204));

		Paragraph title = new Paragraph("Detalle del Pedido", titleFont);
		title.setAlignment(Element.ALIGN_CENTER);
		document.add(title);
		document.add(Chunk.NEWLINE);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yy HH:mm:ss");
		String fechaFormateada = pedido.getFechaPedido().format(formatter);
		Paragraph fecha = new Paragraph("Fecha del pedido: " + fechaFormateada, bodyFont);
		document.add(fecha);

		if (pedido.getCliente() != null) {
			Paragraph cliente = new Paragraph("Cliente: " +
				pedido.getCliente().getNombre() + " " + pedido.getCliente().getApellido(), bodyFont);
			document.add(cliente);
		}

		if (pedido.getEmpleado() != null) {
			Paragraph empleado = new Paragraph("Empleado: " +
				pedido.getEmpleado().getNombre() + " " + pedido.getEmpleado().getApellido(), bodyFont);
			document.add(empleado);
		}

		document.add(new Paragraph("Forma de pago: " + pedido.getFormaPago(), bodyFont));

		if (pedido.getTipoEnvio() != null) {
			document.add(new Paragraph("Tipo de envío: " + pedido.getTipoEnvio(), bodyFont));
		}

		document.add(Chunk.NEWLINE);

		PdfPTable table = new PdfPTable(4);
		table.setWidthPercentage(100);
		table.setSpacingBefore(10f);
		table.setSpacingAfter(10f);

		String[] headers = { "Artículo", "Cantidad", "Precio unitario", "Subtotal" };
		for (String headerTitle : headers) {
			PdfPCell header = new PdfPCell(new Phrase(headerTitle, boldFont));
			header.setBackgroundColor(Color.LIGHT_GRAY);
			header.setBorderWidth(2);
			table.addCell(header);
		}

		for (PedidoVentaDetalle p : pedido.getPedidoVentaDetalle()) {
			String nombre = (p.getArticuloInsumo() != null)
					? p.getArticuloInsumo().getDenominacion()
					: p.getArticuloManufacturado().getDenominacion();
			double precio = (p.getArticuloInsumo() != null)
					? p.getArticuloInsumo().getPrecioVenta()
					: p.getArticuloManufacturado().getPrecioVenta();

			table.addCell(new Phrase(nombre, bodyFont));
			table.addCell(new Phrase(String.valueOf((int) p.getCantidad()), bodyFont));
			table.addCell(new Phrase("$" + formatearMoneda(precio), bodyFont));
			table.addCell(new Phrase("$" + formatearMoneda(precio * p.getCantidad()), bodyFont));
		}

		document.add(table);

		document.add(new Paragraph("Subtotal: $" + formatearMoneda(pedido.getSubtotal()), bodyFont));
		document.add(new Paragraph("Descuento: $" + formatearMoneda(pedido.getDescuento()), bodyFont));
		document.add(new Paragraph("Gastos de envío: $" + formatearMoneda(pedido.getGastosEnvio()), bodyFont));
		document.add(new Paragraph("TOTAL: $" + formatearMoneda(pedido.getTotal()), priceFont));

		document.close();
		return out.toByteArray();
	}

	private String formatearMoneda(BigDecimal valor) {
		return formatearMoneda(valor.doubleValue());
	}

	private String formatearMoneda(double valor) {
		DecimalFormatSymbols simbolos = new DecimalFormatSymbols();
		simbolos.setDecimalSeparator(',');
		simbolos.setGroupingSeparator('.');

		DecimalFormat formato = new DecimalFormat("#,##0.00", simbolos);
		return formato.format(valor);
	}

}

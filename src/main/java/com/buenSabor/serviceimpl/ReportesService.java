package com.buenSabor.serviceimpl;

import java.io.ByteArrayOutputStream;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;
import java.awt.Color;
import java.time.format.DateTimeFormatter;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
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

		LocalDateTime fechaInicio = fechaDesde.atStartOfDay();
		LocalDateTime fechaFin = fechaHasta.atTime(LocalTime.MAX);

		List<PedidoVenta> datos = pedidoVentaRepository.listarPorRangoFecha(fechaInicio, fechaFin);

		if (datos == null || datos.isEmpty()) {
			throw new Exception("No hay datos para las fechas seleccionadas.");
		}

		try (Workbook workbook = new XSSFWorkbook()) {
			DateTimeFormatter fechaPedidoFormatter = DateTimeFormatter.ofPattern("dd/MM/yy HH:mm:ss");
			DateTimeFormatter nombreHojaFormatter = DateTimeFormatter.ofPattern("dd-MM-yy");

			String nombreHoja = "Pedidos " + fechaDesde.format(nombreHojaFormatter) + " - "
					+ fechaHasta.format(nombreHojaFormatter);
			Sheet sheet = workbook.createSheet(nombreHoja);

			// Estilo header
			CellStyle headerStyle = workbook.createCellStyle();
			org.apache.poi.ss.usermodel.Font font = workbook.createFont();
			font.setBold(true);
			headerStyle.setFont(font);
			headerStyle.setFillForegroundColor(org.apache.poi.ss.usermodel.IndexedColors.GREY_25_PERCENT.getIndex());
			
			headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			headerStyle.setAlignment(org.apache.poi.ss.usermodel.HorizontalAlignment.CENTER);

			// Estilo numérico para moneda
			CellStyle currencyStyle = workbook.createCellStyle();
			org.apache.poi.ss.usermodel.DataFormat format = workbook.createDataFormat();
			currencyStyle.setDataFormat(format.getFormat("#,##0.00"));

			// Header columnas
			Row header = sheet.createRow(0);
			String[] columnas = {
					"Fecha Pedido",
					"Cliente",
					"Empleado",
					"Artículo Insumo",
					"Artículo Manufacturado",
					"Cantidad",
					"Precio Venta",
					"Subtotal Pedido"
			};

			for (int i = 0; i < columnas.length; i++) {
				Cell cell = header.createCell(i);
				cell.setCellValue(columnas[i]);
				cell.setCellStyle(headerStyle);
			}

			int rowIdx = 1;
			for (PedidoVenta pedido : datos) {
				String fechaPedidoStr = pedido.getFechaPedido() != null
						? pedido.getFechaPedido().format(fechaPedidoFormatter)
						: "";
				String clienteStr = (pedido.getCliente() != null)
						? pedido.getCliente().getNombre() + " " + pedido.getCliente().getApellido()
						: "";
				String empleadoStr = (pedido.getEmpleado() != null)
						? pedido.getEmpleado().getNombre() + " " + pedido.getEmpleado().getApellido()
						: "";

				// Si el pedido no tiene detalles, pongo una sola fila con datos basicos
				if (pedido.getPedidoVentaDetalle() == null || pedido.getPedidoVentaDetalle().isEmpty()) {
					Row row = sheet.createRow(rowIdx++);
					row.createCell(0).setCellValue(fechaPedidoStr);
					row.createCell(1).setCellValue(clienteStr);
					row.createCell(2).setCellValue(empleadoStr);
					row.createCell(7)
							.setCellValue(pedido.getSubtotal() != null ? pedido.getSubtotal().doubleValue() : 0.0);
					row.getCell(7).setCellStyle(currencyStyle);
					continue;
				}

				boolean primeraFilaPedido = true;
				for (PedidoVentaDetalle detalle : pedido.getPedidoVentaDetalle()) {
					Row row = sheet.createRow(rowIdx++);
					if (primeraFilaPedido) {
						row.createCell(0).setCellValue(fechaPedidoStr);
						row.createCell(1).setCellValue(clienteStr);
						row.createCell(2).setCellValue(empleadoStr);
						row.createCell(7)
								.setCellValue(pedido.getSubtotal() != null ? pedido.getSubtotal().doubleValue() : 0.0);
						row.getCell(7).setCellStyle(currencyStyle);
						primeraFilaPedido = false;
					}
					// Artículos y cantidades
					row.createCell(3).setCellValue(
							detalle.getArticuloInsumo() != null ? detalle.getArticuloInsumo().getDenominacion() : "");
					row.createCell(4)
							.setCellValue(detalle.getArticuloManufacturado() != null
									? detalle.getArticuloManufacturado().getDenominacion()
									: "");
					row.createCell(5).setCellValue(detalle.getCantidad());

					double precio = detalle.getArticuloInsumo() != null
							? detalle.getArticuloInsumo().getPrecioVenta()
							: (detalle.getArticuloManufacturado() != null
									? detalle.getArticuloManufacturado().getPrecioVenta()
									: 0.0);

					Cell precioCell = row.createCell(6);
					precioCell.setCellValue(precio);
					precioCell.setCellStyle(currencyStyle);
				}
			}

			// Auto-ajustar columnas
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

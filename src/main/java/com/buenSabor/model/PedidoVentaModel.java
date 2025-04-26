package com.buenSabor.model;

import java.math.BigDecimal;
import java.time.LocalDate;

import com.buenSabor.enums.Estado;
import com.buenSabor.enums.FormaPago;
import com.buenSabor.enums.TipoEnvio;

import lombok.Data;

@Data
public class PedidoVentaModel {
	
	private String id;

	private LocalDate horaEstimadaFinalizacion;

	private BigDecimal subtotal;

	private BigDecimal descuento;

	private BigDecimal gastosEnvio;

	private BigDecimal total;

	private BigDecimal totalCosto;

	private Estado estado;

	private TipoEnvio tipoEnvpio;

	private FormaPago formaPago;
	
	private EmpleadoModel empleado;
	
	private SucursalEmpresaModel sucursal;
	
	private ClienteModel cliente;
	
	private FacturaVentaModel factura;
	
	private PedidoVentaDetalleModel pedidoVentaDetalle;

	private LocalDate fechaPedido;

	private LocalDate modificacion;

	private LocalDate alta;

	private LocalDate baja;
}

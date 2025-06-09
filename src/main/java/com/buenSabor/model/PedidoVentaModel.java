package com.buenSabor.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import com.buenSabor.enums.Estado;
import com.buenSabor.enums.FormaPago;
import com.buenSabor.enums.TipoEnvio;

import lombok.Data;

@Data
public class PedidoVentaModel {
	
	private String id;

	private LocalDateTime horaEstimadaFinalizacion;

	private BigDecimal subtotal;

	private BigDecimal descuento;

	private BigDecimal gastosEnvio;

	private BigDecimal total;

	private BigDecimal totalCosto;

	private Estado estado;

	private TipoEnvio tipoEnvio;

	private FormaPago formaPago;
	
	private EmpleadoModel empleado;
	
	private SucursalEmpresaModel sucursal;
	
	private ClienteModel cliente;
	
	private FacturaVentaModel factura;
	
	private List<PedidoVentaDetalleModel> pedidoVentaDetalle;

	private LocalDateTime fechaPedido;

	private LocalDateTime modificacion;

	private LocalDateTime alta;

	private LocalDateTime baja;
}

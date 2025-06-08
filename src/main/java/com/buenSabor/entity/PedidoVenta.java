package com.buenSabor.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Id;

import com.buenSabor.enums.Estado;
import com.buenSabor.enums.FormaPago;
import com.buenSabor.enums.TipoEnvio;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Entity
public class PedidoVenta extends ABM implements Serializable {

	private static final long serialVersionUID = -4491802905747841818L;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;

	private LocalDate horaEstimadaFinalizacion;

	private BigDecimal subtotal;

	private BigDecimal descuento;

	private BigDecimal gastosEnvio;

	private BigDecimal total;

	private BigDecimal totalCosto;

	private Estado estado;

	private TipoEnvio tipoEnvio;

	private FormaPago formaPago;
	
	@ManyToOne
	private Empleado empleado;
	
	@ManyToOne
	private SucursalEmpresa sucursal;
	
	@ManyToOne
	private Cliente cliente;
	
	@ManyToOne
	private FacturaVenta factura;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	private List<PedidoVentaDetalle> pedidoVentaDetalle;

	private LocalDate fechaPedido;

}

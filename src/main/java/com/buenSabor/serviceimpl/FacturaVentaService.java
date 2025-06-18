package com.buenSabor.serviceimpl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.converter.FacturaVentaDetalleConverter;
import com.buenSabor.entity.FacturaVenta;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.model.ArticuloManufacturadoDetalleModel;
import com.buenSabor.model.FacturaVentaDetalleModel;
import com.buenSabor.model.FacturaVentaModel;
import com.buenSabor.model.PedidoVentaDetalleModel;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.repository.SucursalInsumoRepository;

import org.springframework.transaction.annotation.Transactional;

@Service
public class FacturaVentaService extends CommonServiceImpl<FacturaVenta, FacturaVentaModel, 
CommonConverter<FacturaVentaModel,FacturaVenta>, CommonRepository<FacturaVenta,String>>{
	
	@Autowired
	private SucursalInsumoRepository sucursalInsumoRepository;
	
	@Autowired
	private FacturaVentaDetalleConverter facturaVentaDetalleConverter;

	@Transactional
	public void nuevaFactura(PedidoVentaModel model) {
		FacturaVenta factura = new FacturaVenta();
		factura.setDescuento(model.getDescuento());
		List<FacturaVentaDetalleModel> detalles = new ArrayList<>();
		for(PedidoVentaDetalleModel pedidoDetalle : model.getPedidoVentaDetalle()) {
			FacturaVentaDetalleModel detalle = new FacturaVentaDetalleModel();
			detalle.setArticuloInsumo(pedidoDetalle.getArticuloInsumo());
			detalle.setArticuloManufacturado(pedidoDetalle.getArticuloManufacturado());
			detalle.setCantidad(pedidoDetalle.getCantidad());
			detalle.setSubTotal(pedidoDetalle.getSubTotal());
			detalles.add(detalle);
			List<SucursalInsumo> sucursalesInsumo = sucursalInsumoRepository.findBySucursalEmpresaId(model.getSucursal().getId());
			if(pedidoDetalle.getArticuloInsumo() != null) {
				for(SucursalInsumo sucursal: sucursalesInsumo) {
					if(pedidoDetalle.getArticuloInsumo().getId().equals(sucursal.getArticuloInsumo().getId())) {
						sucursal.setStockActual(sucursal.getStockActual() - pedidoDetalle.getCantidad() );
						sucursalInsumoRepository.save(sucursal);							
					}
				}
			}
			if(pedidoDetalle.getArticuloManufacturado() != null) {
				for(ArticuloManufacturadoDetalleModel manufacturado: pedidoDetalle.getArticuloManufacturado().getArticuloManufacturadoDetalle()) {
					for(SucursalInsumo sucursal: sucursalesInsumo) {
						if(manufacturado.getArticuloInsumo().getId().equals(sucursal.getArticuloInsumo().getId())) {
							sucursal.setStockActual(sucursal.getStockActual() - (manufacturado.getCantidad() * pedidoDetalle.getCantidad()));
							sucursalInsumoRepository.save(sucursal);							
						}
					}
				}
			}
		}
		factura.setFacturaVentaDetalle(detalles.stream().map(detalle -> facturaVentaDetalleConverter.modeloReqToEntidad(detalle)).toList());
		
		factura.setFechaFacturacion(LocalDateTime.now());
		factura.setFormaPago(model.getFormaPago());
		factura.setGastosEnvio(model.getGastosEnvio());
		factura.setNumeroComprobante((long) LocalDateTime.now().getSecond());
		factura.setSubTotal(model.getSubtotal());
		factura.setTotalVenta(model.getTotal());
		repository.save(factura);
	}
}

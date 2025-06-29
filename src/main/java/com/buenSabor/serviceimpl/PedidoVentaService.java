package com.buenSabor.serviceimpl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.converter.FacturaVentaConverter;
import com.buenSabor.converter.FacturaVentaDetalleConverter;
import com.buenSabor.entity.FacturaVenta;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.enums.Estado;
import com.buenSabor.enums.FormaPago;
import com.buenSabor.exeptions.StockException;
import com.buenSabor.model.ArticuloManufacturadoDetalleModel;
import com.buenSabor.model.FacturaVentaDetalleModel;
import com.buenSabor.model.PedidoVentaDetalleModel;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.repository.FacturaVentaRepository;
import com.buenSabor.repository.PedidoVentaRepository;
import com.buenSabor.repository.SucursalInsumoRepository;

import jakarta.transaction.Transactional;

@Service
public class PedidoVentaService extends CommonServiceImpl<PedidoVenta, PedidoVentaModel, 
CommonConverter<PedidoVentaModel,PedidoVenta>, CommonRepository<PedidoVenta,String>>{

	@Autowired
	private PedidoVentaRepository pedidoVentaRepository;
	
	@Autowired
	private FacturaVentaRepository facturaVentaRepository;
	
	@Autowired
	private SucursalInsumoRepository sucursalInsumoRepository;
	
	@Autowired
	private FacturaVentaDetalleConverter facturaVentaDetalleConverter;
	
	@Autowired
	private FacturaVentaConverter facturaVentaConverter;
	
	
	public List<PedidoVentaModel> findByEmpleadoById(String id) {
		List<PedidoVenta> entities = pedidoVentaRepository.findByEmpleadoId(id);
		if(entities.isEmpty()) {
			return new ArrayList<>();
		} else {
			return entities.stream().map(pv -> converter.entidadToModeloRes(pv)).toList();
		}
	}
	
	public PedidoVentaModel updateStatus(String id, Estado estado) {
		Optional<PedidoVenta> entidad = repository.findById(id);
		if(entidad.isPresent()) {
			PedidoVenta pedido = entidad.get();
			pedido.setEstado(estado);
			return converter.entidadToModeloRes(repository.save(pedido));
		}
		return null;
	}

	//TODO Falta asignar id de factura.
	@Override
	@Transactional
	public PedidoVentaModel save(PedidoVentaModel model) 
	{
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
		
		if (model.getCliente() != null) model.setCliente(model.getCliente());
		else if (model.getEmpleado() != null) model.setEmpleado(model.getEmpleado());

		factura.setFacturaVentaDetalle(detalles.stream().map(detalle -> facturaVentaDetalleConverter.modeloReqToEntidad(detalle)).toList());
		
		factura.setFechaFacturacion(LocalDateTime.now());
		factura.setFormaPago(model.getFormaPago());
		factura.setGastosEnvio(model.getGastosEnvio());
		factura.setNumeroComprobante((long) LocalDateTime.now().getSecond());
		factura.setSubTotal(model.getSubtotal());
		factura.setTotalVenta(model.getTotal());
		
		facturaVentaRepository.save(factura);
		return super.save(model);
	}
	
	@Transactional
	public PedidoVentaModel saveWithStock(PedidoVentaModel model) throws StockException {
		
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
							if(sucursal.getStockActual() < 0)
								throw new StockException("Stock insuficiente de " + sucursal.getArticuloInsumo().getDenominacion());
							sucursalInsumoRepository.save(sucursal);							
						}
					}
				}
				if(pedidoDetalle.getArticuloManufacturado() != null) {
					for(ArticuloManufacturadoDetalleModel manufacturado: pedidoDetalle.getArticuloManufacturado().getArticuloManufacturadoDetalle()) {
						for(SucursalInsumo sucursal: sucursalesInsumo) {
							if(manufacturado.getArticuloInsumo().getId().equals(sucursal.getArticuloInsumo().getId())) {
								sucursal.setStockActual(sucursal.getStockActual() - (manufacturado.getCantidad() * pedidoDetalle.getCantidad()));
								if(sucursal.getStockActual() < 0)
									throw new StockException("Stock insuficiente de " + sucursal.getArticuloInsumo().getDenominacion());
								sucursalInsumoRepository.save(sucursal);							
							}
						}
					}
				}
				if(pedidoDetalle.getArticuloInsumo() == null && pedidoDetalle.getArticuloManufacturado() == null) {
					throw new StockException("La sucursal no cuenta con sotck");
				}
			}
			if (model.getCliente() != null) 
			{
				System.out.println("Cliente: " + model.getCliente().getId());
				model.setCliente(model.getCliente());
			} else if (model.getEmpleado() != null) 
			{
				System.out.println("Empleado: " + model.getEmpleado().getId());
				model.setEmpleado(model.getEmpleado());
			}
			else System.out.println("No hay datos de cliente o empleado");

			factura.setFacturaVentaDetalle(detalles.stream().map(detalle -> facturaVentaDetalleConverter.modeloReqToEntidad(detalle)).toList());
			
			factura.setFechaFacturacion(LocalDateTime.now());
			factura.setFormaPago(model.getFormaPago());
			factura.setGastosEnvio(model.getGastosEnvio());
			factura.setNumeroComprobante((long) LocalDateTime.now().getSecond());
			factura.setSubTotal(model.getSubtotal());
			factura.setTotalVenta(model.getTotal());
			
			factura = facturaVentaRepository.save(factura);
			model.setFactura(facturaVentaConverter.entidadToModeloRes(factura));
		
		return super.save(model);
	}
	
	public List<PedidoVentaModel> findBySucursalById(String id) {
		List<PedidoVenta> entities = pedidoVentaRepository.findBySucursalId(id);
		if(entities.isEmpty()) {
			return new ArrayList<>();
		} else {
			return entities.stream().map(pv -> converter.entidadToModeloRes(pv)).toList();
		}
	}
}

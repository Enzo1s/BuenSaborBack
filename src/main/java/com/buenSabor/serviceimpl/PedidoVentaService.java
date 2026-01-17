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
import com.buenSabor.entity.Empleado;
import com.buenSabor.entity.FacturaVenta;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.SucursalInsumo;
import com.buenSabor.enums.Cargo;
import com.buenSabor.enums.Estado;
import com.buenSabor.enums.FormaPago;
import com.buenSabor.enums.TipoEnvio;
import com.buenSabor.exeptions.StockException;
import com.buenSabor.model.ArticuloManufacturadoDetalleModel;
import com.buenSabor.model.FacturaVentaDetalleModel;
import com.buenSabor.model.PedidoVentaDetalleModel;
import com.buenSabor.model.PedidoVentaModel;
import com.buenSabor.model.UsuarioModel;
import com.buenSabor.converter.EmpleadoConverter;
import com.buenSabor.repository.EmpleadoRepository;
import com.buenSabor.repository.FacturaVentaRepository;
import com.buenSabor.repository.PedidoVentaRepository;
import com.buenSabor.repository.SucursalInsumoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.buenSabor.entity.Usuario;
import com.buenSabor.jwt.JWTUtil;
import com.buenSabor.repository.EmpleadoRepository;

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
	private EmpleadoRepository empleadoRepository;

	@Autowired
	private FacturaVentaDetalleConverter facturaVentaDetalleConverter;

	@Autowired
	private FacturaVentaConverter facturaVentaConverter;

	@Autowired
	private JWTUtil jwtUtil;

	@Autowired
	private EmpleadoConverter empleadoConverter;

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

			Estado estadoAnterior = pedido.getEstado();

			// Asignar automáticamente al personal adecuado si el estado cambia a ENTREGADO
			// y era diferente de ENTREGADO anteriormente
			if(estado == Estado.ENTREGADO && estadoAnterior != Estado.ENTREGADO) {
				// Buscar un empleado disponible según el tipo de envío
				if(pedido.getTipoEnvio() != null && pedido.getTipoEnvio() == TipoEnvio.DELIVERY) {
					// Asignar a delivery si el tipo de envío es DELIVERY
					List<Empleado> deliveries = empleadoRepository.findByCargo(Cargo.DELIVERY);
					if(!deliveries.isEmpty()) {
						pedido.setEmpleado(deliveries.get(0)); // Asigna al primer delivery disponible
					}
				} else {
					// Asignar a cajero para otros tipos de envío (TAKE_AWAY, etc.)
					// ya que en estos casos el pedido terminado se relaciona con el cajero
					List<Empleado> cajeros = empleadoRepository.findByCargo(Cargo.CAJERO);
					if(!cajeros.isEmpty()) {
						pedido.setEmpleado(cajeros.get(0)); // Asigna al primer cajero disponible
					}
				}
			}

			pedido.setEstado(estado);
			return converter.entidadToModeloRes(repository.save(pedido));
		}
		return null;
	}
	
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

		model.setEmpleado(null);

		Empleado empleadoAsignado = determinarEmpleadoPorContenidoOrden(model);
		if (empleadoAsignado != null) {
			model.setEmpleado(empleadoConverter.entidadToModeloRes(empleadoAsignado));
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

		FacturaVenta facturaGuardada = facturaVentaRepository.save(factura);
		model.setFactura(facturaVentaConverter.entidadToModeloRes(facturaGuardada));

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

			model.setEmpleado(null);

			Empleado empleadoAsignado = determinarEmpleadoPorContenidoOrden(model);
			if (empleadoAsignado != null) {
				model.setEmpleado(empleadoConverter.entidadToModeloRes(empleadoAsignado));
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

			FacturaVenta facturaGuardada = facturaVentaRepository.save(factura);
			model.setFactura(facturaVentaConverter.entidadToModeloRes(facturaGuardada));


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

	private boolean contieneArticulosManufacturados(PedidoVentaModel model) {
        return model.getPedidoVentaDetalle().stream()
            .anyMatch(detalle -> detalle.getArticuloManufacturado() != null);
    }

    private Empleado determinarEmpleadoPorContenidoOrden(PedidoVentaModel model) {
        Empleado empleadoAutenticado = obtenerEmpleadoAutenticado();

        if (empleadoAutenticado != null) {
            if (contieneArticulosManufacturados(model)) {
                if (empleadoAutenticado.getCargo() == Cargo.COCINERO) {
                    return empleadoAutenticado;
                }
            } else {
                if (empleadoAutenticado.getCargo() == Cargo.CAJERO) {
                    return empleadoAutenticado;
                }
            }
        }

        if (contieneArticulosManufacturados(model)) {
            List<Empleado> cocineros = empleadoRepository.findByCargo(Cargo.COCINERO);
            if (!cocineros.isEmpty()) {
                return cocineros.get(0);
            }
        } else {
            List<Empleado> cajeros = empleadoRepository.findByCargo(Cargo.CAJERO);
            if (!cajeros.isEmpty()) {
                return cajeros.get(0);
            }
        }

        return null;
    }

    private Empleado obtenerEmpleadoAutenticado() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated() && !authentication.getName().equals("anonymousUser")) {
            String username = authentication.getName();

            Usuario usuarioAutenticado = jwtUtil.obtenerUsuario(username);

            if (usuarioAutenticado != null) {
                Empleado empleado = empleadoRepository.findByUsuarioId(usuarioAutenticado.getId());
                return empleado;
            }
        }

        return null;
    }
}

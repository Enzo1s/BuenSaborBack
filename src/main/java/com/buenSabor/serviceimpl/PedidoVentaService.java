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

		// Clear any employee assignment from the frontend and apply our auto-assignment logic
		model.setEmpleado(null); // Clear any employee sent from the frontend

		// Assign the appropriate employee based on order content
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

			// Clear any employee assignment from the frontend and apply our auto-assignment logic
			model.setEmpleado(null); // Clear any employee sent from the frontend

			// Assign the appropriate employee based on order content
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
        // Obtener el empleado autenticado actualmente
        Empleado empleadoAutenticado = obtenerEmpleadoAutenticado();

        // Si hay un empleado autenticado y su cargo es el adecuado para el pedido, se lo asignamos
        if (empleadoAutenticado != null) {
            if (contieneArticulosManufacturados(model)) {
                // Si el pedido contiene artículos manufacturados, verificar que el empleado sea cocinero
                if (empleadoAutenticado.getCargo() == Cargo.COCINERO) {
                    return empleadoAutenticado;
                }
            } else {
                // Si solo contiene insumos, verificar que el empleado sea cajero
                if (empleadoAutenticado.getCargo() == Cargo.CAJERO) {
                    return empleadoAutenticado;
                }
            }
        }

        // Si el empleado no tiene el cargo adecuado o no hay empleado autenticado
        // (por ejemplo, si es un cliente, admin o delivery), asignar al primer
        // empleado disponible del tipo correcto
        if (contieneArticulosManufacturados(model)) {
            // Buscar un cocinero disponible
            List<Empleado> cocineros = empleadoRepository.findByCargo(Cargo.COCINERO);
            if (!cocineros.isEmpty()) {
                return cocineros.get(0); // Retorna el primer cocinero disponible
            }
        } else {
            // Si solo contiene insumos, buscar un cajero
            List<Empleado> cajeros = empleadoRepository.findByCargo(Cargo.CAJERO);
            if (!cajeros.isEmpty()) {
                return cajeros.get(0); // Retorna el primer cajero disponible
            }
        }

        return null; // No hay empleados disponibles del tipo adecuado
    }

    private Empleado obtenerEmpleadoAutenticado() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated() && !authentication.getName().equals("anonymousUser")) {
            String username = authentication.getName();

            // Obtener el usuario desde la base de datos
            Usuario usuarioAutenticado = jwtUtil.obtenerUsuario(username);

            if (usuarioAutenticado != null) {
                // Buscar el empleado asociado con este usuario
                Empleado empleado = empleadoRepository.findByUsuarioId(usuarioAutenticado.getId());
                return empleado; // Retorna el empleado directamente o null si no existe
            }
        }

        return null; // No hay empleado autenticado
    }
}

package com.buenSabor.serviceimpl;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Value;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.converter.PedidoVentaConverter;
import com.buenSabor.dto.MPForm;
import com.buenSabor.entity.DatosMercadoPago;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.PedidoVentaDetalle;
import com.buenSabor.model.DatosMercadoPagoModel;
import com.buenSabor.repository.PedidoVentaRepository;
import com.mercadopago.client.preference.PreferenceBackUrlsRequest;
import com.mercadopago.client.preference.PreferenceClient;
import com.mercadopago.client.preference.PreferenceItemRequest;
import com.mercadopago.client.preference.PreferenceRequest;
import com.mercadopago.exceptions.MPApiException;
import com.mercadopago.exceptions.MPException;
import com.mercadopago.resources.preference.Preference;

import jakarta.annotation.PostConstruct;
import jakarta.transaction.Transactional;

@Service
public class DatosMercadoPagoService extends
		CommonServiceImpl<DatosMercadoPago, DatosMercadoPagoModel, CommonConverter<DatosMercadoPagoModel, DatosMercadoPago>, CommonRepository<DatosMercadoPago, String>> {

	@Autowired
	private PedidoVentaRepository pedidoVentaRepository;
	
	@Autowired
	private FacturaVentaService facturaVentaService;
	
	@Autowired
	private PedidoVentaConverter pedidoVentaConverter;
	
	@Value("${mercadopago.urlReturn}")
	private String url;

	@PostConstruct
	public void init() {
		url = url.replaceAll("/+$", "") + "/pedido-venta/pago";
	}

	public String getUrl() {
		return url;
	}

	@Transactional
	public String createPreference(String idPedidoVenta) throws MPException, MPApiException
	{
		Optional<PedidoVenta> pedidoVenta = pedidoVentaRepository.findById(idPedidoVenta);
		if (pedidoVenta.isPresent()) {
			// Check if there's a discount applied to the pedido
			PedidoVenta pedido = pedidoVenta.get();

			List<PreferenceItemRequest> items = new ArrayList<>();

			// If there's a discount and total is available, create a single item with the discounted total
			// Otherwise, create items individually as before
			if (pedido.getDescuento() != null && pedido.getDescuento().compareTo(BigDecimal.ZERO) > 0
				&& pedido.getTotal() != null) {
				// Create a single item representing the entire order with discount applied
				PreferenceItemRequest orderItem = PreferenceItemRequest.builder()
						.id(pedido.getId())
						.title("Pedido Total con Descuento Aplicado")
						.categoryId("Pedido")
						.quantity(1)
						.currencyId("ARS")
						.unitPrice(pedido.getTotal()) // getTotal() already returns a BigDecimal
						.build();
				items.add(orderItem);
			} else if (pedido.getTotal() != null) {
				// If there's no discount but total is available, use the total
				PreferenceItemRequest orderItem = PreferenceItemRequest.builder()
						.id(pedido.getId())
						.title("Pedido Total")
						.categoryId("Pedido")
						.quantity(1)
						.currencyId("ARS")
						.unitPrice(pedido.getTotal()) // getTotal() already returns a BigDecimal
						.build();
				items.add(orderItem);
			} else {
				// Original approach - individual items at their original prices (fallback)
				for (PedidoVentaDetalle detalle : pedido.getPedidoVentaDetalle()) {
					// Check if the detalle has articuloInsumo or articuloManufacturado first
					// and ensure precios are not null before creating items
					if (detalle.getArticuloInsumo() != null && detalle.getArticuloInsumo().getPrecioVenta() != null) {
						PreferenceItemRequest itemRequest = PreferenceItemRequest.builder()
								.id(detalle.getArticuloInsumo().getId())
								.title(detalle.getArticuloInsumo().getDenominacion())
								.categoryId("Insumo")
								.quantity((int) detalle.getCantidad())
								.currencyId("ARS")
								.unitPrice(BigDecimal.valueOf(detalle.getArticuloInsumo().getPrecioVenta()))
								.build();
						items.add(itemRequest);
					} else if (detalle.getArticuloManufacturado() != null && detalle.getArticuloManufacturado().getPrecioVenta() != null) {
						PreferenceItemRequest itemRequest = PreferenceItemRequest.builder()
								.id(detalle.getArticuloManufacturado().getId())
								.title(detalle.getArticuloManufacturado().getDenominacion())
								.categoryId("Manufacturado")
								.quantity((int) detalle.getCantidad())
								.currencyId("ARS")
								.unitPrice(BigDecimal.valueOf(detalle.getArticuloManufacturado().getPrecioVenta()))
								.build();
						items.add(itemRequest);
					}
				}
			}

			PreferenceBackUrlsRequest backUrls = PreferenceBackUrlsRequest.builder().
																		   success(getUrl()).
																		   pending(getUrl()).
																		   failure(getUrl()).
																		   build();

			PreferenceRequest preferenceRequest = PreferenceRequest.builder().
																	items(items).
																	backUrls(backUrls).
																	autoReturn("all").
																	externalReference(idPedidoVenta).
																	build();

			try
			{
				PreferenceClient client = new PreferenceClient();
				Preference preference = client.create(preferenceRequest);
				return preference.getId();

			} catch (MPApiException e)
			{
				System.out.println("Error status: " + e.getApiResponse().getStatusCode());
				System.out.println("Error content: " + e.getApiResponse().getContent());
				e.printStackTrace();
			}
			facturaVentaService.nuevaFactura(pedidoVentaConverter.entidadToModeloRes(pedido));
		}
		return null;
	}

	@Transactional
	public DatosMercadoPagoModel processBuy(MPForm request) throws MPException, MPApiException
	{
		DatosMercadoPago datosMP = new DatosMercadoPago();

		datosMP.setCollectionId(request.getCollectionId());
		datosMP.setCollectionStatus(request.getCollectionStatus());
		datosMP.setPaymentId(request.getPaymentId());
		datosMP.setStatus(request.getStatus());
		datosMP.setExternalReference(request.getExternalReference());
		datosMP.setPaymentType(request.getPaymentType());
		datosMP.setMerchantOrderId(request.getMerchantOrderId());
		datosMP.setPreferenceId(request.getPreferenceId());
		datosMP.setSiteId(request.getSiteId());
		datosMP.setProcessingMode(request.getProcessingMode());
		datosMP.setMerchantAccountId(request.getMerchantAccountId());
		datosMP.setDateCreated(LocalDate.now());

		if("approved".equals(request.getStatus())) datosMP.setDateApproved(LocalDate.now());

		DatosMercadoPago datosMPSaved = repository.save(datosMP);

		facturaVentaService.asignarDatosMercadoPagoAFactura(request.getExternalReference(), datosMPSaved);
		
		return converter.entidadToModeloRes(datosMPSaved);
	}

}

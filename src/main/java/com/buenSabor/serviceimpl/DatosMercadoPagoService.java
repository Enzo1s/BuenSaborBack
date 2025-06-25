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
		url = url.replaceAll("/+$", "") + "/pedido-venta/Pago";
	}

	public String getUrl() {
		return url;
	}

	@Transactional
	public String createPreference(String idPedidoVenta) throws MPException, MPApiException 
	{
		Optional<PedidoVenta> pedidoVenta = pedidoVentaRepository.findById(idPedidoVenta);
		if (pedidoVenta.isPresent()) {
			List<PreferenceItemRequest> items = new ArrayList<>();
			for (PedidoVentaDetalle detalle : pedidoVenta.get().getPedidoVentaDetalle()) {
				PreferenceItemRequest itemRequest = PreferenceItemRequest.builder().id(detalle.getId())
						.title(detalle.getArticuloInsumo() != null ? detalle.getArticuloInsumo().getDenominacion()
								: detalle.getArticuloManufacturado().getDenominacion())

						.categoryId(detalle.getArticuloInsumo() != null ? "Insumo" : "Manufacturado")
						.quantity((int) detalle.getCantidad()).currencyId("ARS")
						.unitPrice(new BigDecimal(
								detalle.getArticuloInsumo() != null ? detalle.getArticuloInsumo().getPrecioVenta()
										: detalle.getArticuloManufacturado().getPrecioVenta()))
						.build();
				items.add(itemRequest);
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
			facturaVentaService.nuevaFactura(pedidoVentaConverter.entidadToModeloRes(pedidoVenta.get()));
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

		if(request.getStatus() == "approved") datosMP.setDateApproved(LocalDate.now());

		DatosMercadoPago datosMPSaved = repository.save(datosMP);

		facturaVentaService.asignarDatosMercadoPagoAFactura(request.getExternalReference(), datosMPSaved);
		
		return converter.entidadToModeloRes(datosMPSaved);
	}

}

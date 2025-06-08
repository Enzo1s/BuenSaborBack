package com.buenSabor.serviceimpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.dto.MPForm;
import com.buenSabor.entity.DatosMercadoPago;
import com.buenSabor.entity.PedidoVenta;
import com.buenSabor.entity.PedidoVentaDetalle;
import com.buenSabor.model.DatosMercadoPagoModel;
import com.buenSabor.repository.PedidoVentaRepository;
import com.mercadopago.client.common.IdentificationRequest;
import com.mercadopago.client.payment.PaymentClient;
import com.mercadopago.client.payment.PaymentCreateRequest;
import com.mercadopago.client.payment.PaymentPayerRequest;
import com.mercadopago.client.preference.PreferenceBackUrlsRequest;
import com.mercadopago.client.preference.PreferenceClient;
import com.mercadopago.client.preference.PreferenceItemRequest;
import com.mercadopago.client.preference.PreferenceRequest;
import com.mercadopago.core.MPRequestOptions;
import com.mercadopago.exceptions.MPApiException;
import com.mercadopago.exceptions.MPException;
import com.mercadopago.resources.payment.Payment;
import com.mercadopago.resources.preference.Preference;

import jakarta.transaction.Transactional;

@Service
public class DatosMercadoPagoService extends
		CommonServiceImpl<DatosMercadoPago, DatosMercadoPagoModel, CommonConverter<DatosMercadoPagoModel, DatosMercadoPago>, CommonRepository<DatosMercadoPago, String>> {

	@Autowired
	public PedidoVentaRepository pedidoVentaRepository;

	@Transactional
	public String createPreference(String idPedidoVenta) throws MPException, MPApiException {
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
			PreferenceBackUrlsRequest backUrls = PreferenceBackUrlsRequest.builder().success("http://localhost:5173/")
					.pending("http://localhost:5173/").failure("http://localhost:5173/").build();
			PreferenceRequest preferenceRequest = PreferenceRequest.builder().items(items).backUrls(backUrls).build();
			PreferenceClient client = new PreferenceClient();
			Preference preference = client.create(preferenceRequest);
			return preference.getId();
		}
		return null;
	}

	public DatosMercadoPagoModel processBuy(MPForm request) throws MPException, MPApiException {
		Map<String, String> customHeaders = new HashMap<>();

		customHeaders.put("x-idempotency-key", request.getToken());
		MPRequestOptions requestOptions = MPRequestOptions.builder()
				.customHeaders(customHeaders)
				.build();
 
		PaymentClient client = new PaymentClient();

		PaymentCreateRequest paymentCreateRequest =
				PaymentCreateRequest.builder()
				.token(request.getToken())
				.installments(request.getInstallments())
				.transactionAmount(request.getTransaction_amount())
//MercadoPagoConfig.setAccessToken("YOUR_ACCESS_TOKEN");


       .description(request.getDescription())
       .paymentMethodId(request.getPayment_method_id())
       .payer(
           PaymentPayerRequest.builder()
               .email(request.getPayer().getEmail())
//               .firstName(request.getPayer().getFirst_name())
               .identification(
                   IdentificationRequest.builder()
                       .type(request.getPayer().getIdentification().getType())
                       .number(request.getPayer().getIdentification().getNumber())
                       .build())
               .build())
       .build();

		Payment response = client.create(paymentCreateRequest, requestOptions);
		DatosMercadoPago datosMP = new DatosMercadoPago();
		datosMP.setDateApproved(response.getDateApproved().toLocalDate());
		datosMP.setDateCreated(response.getDateCreated().toLocalDate());
		datosMP.setDateLastUpdated(response.getDateLastUpdated().toLocalDate());
		datosMP.setPaymentMethodId(response.getPaymentMethodId());
		datosMP.setPaymentTypeId(response.getPaymentTypeId());
		datosMP.setStatus(response.getStatus());
		datosMP.setStatusDetail(response.getStatusDetail());
		return converter.entidadToModeloRes(repository.save(datosMP));
	}
}

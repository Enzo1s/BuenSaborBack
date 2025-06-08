package com.buenSabor.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

import com.mercadopago.MercadoPagoConfig;

import jakarta.annotation.PostConstruct;

@Configuration
public class MercadoPagoConfiguration {
	
	@Value("${mercadopago.access.token}")
    private String accessToken;

    @PostConstruct
    public void initMercadoPago() {
        MercadoPagoConfig.setAccessToken(accessToken);
        System.out.println("Mercado Pago SDK inicializado con access token.");
    }

}

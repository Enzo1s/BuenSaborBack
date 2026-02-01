package com.buenSabor.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class CorsConfig {

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        
        // Allow specific origins during development
        config.addAllowedOrigin("http://localhost:5173"); // Vite default port
        config.addAllowedOrigin("http://localhost:3000"); // React default port
        config.addAllowedOrigin("http://127.0.0.1:5173");
        config.addAllowedOrigin("http://127.0.0.1:3000");
        
        // Allow credentials to be sent with requests
        config.setAllowCredentials(true);
        
        // Allow common HTTP methods
        config.addAllowedMethod("*"); // This includes GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS
        
        // Allow common headers
        config.addAllowedHeader("*");
        
        // Expose headers that browsers are allowed to access
        config.addExposedHeader("Authorization");
        config.addExposedHeader("Content-Type");
        
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }
}
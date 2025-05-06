package com.buenSabor.jwt;

import org.jose4j.jws.AlgorithmIdentifiers;
import org.jose4j.jws.JsonWebSignature;
import org.jose4j.jwt.JwtClaims;
import org.jose4j.jwt.MalformedClaimException;
import org.jose4j.jwt.NumericDate;
import org.jose4j.jwt.consumer.InvalidJwtException;
import org.jose4j.jwt.consumer.JwtConsumer;
import org.jose4j.jwt.consumer.JwtConsumerBuilder;
import org.jose4j.keys.HmacKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import java.util.Map;

@Component
public class JWTUtil {

	private static final Logger logger = LoggerFactory.getLogger(JWTUtil.class);

    @Value("${jwt.secret}")
    private String secret;

    @Value("${jwt.expiration}")
    private long expiration; // en milisegundos

    public String generateToken(String subject, Map<String, Object> claims) {
        try {
            SecretKey secretKey = new HmacKey(secret.getBytes("UTF-8"));

            JwtClaims jwtClaims = new JwtClaims();
            jwtClaims.setSubject(subject);
            jwtClaims.setIssuedAtToNow();
            jwtClaims.setExpirationTime( NumericDate.fromSeconds(expiration));
            claims.forEach(jwtClaims::setClaim);

            JsonWebSignature jws = new JsonWebSignature();
            jws.setPayload(jwtClaims.toJson());
            jws.setAlgorithmHeaderValue(AlgorithmIdentifiers.HMAC_SHA256);
            jws.setKey(secretKey);

            return jws.getCompactSerialization();
        } catch (Exception e) {
            logger.error("Error al generar el token JWT: {}", e.getMessage());
            return null;
        }
    }

    public boolean validateToken(String token) {
        try {
            SecretKey secretKey = new HmacKey(secret.getBytes("UTF-8"));

            JwtConsumer jwtConsumer = new JwtConsumerBuilder()
                    .setRequireExpirationTime()
                    .setAllowedClockSkewInSeconds(30)
                    .setExpectedIssuer(null) 
                    .setVerificationKey(secretKey)
                    .build();

            jwtConsumer.processToClaims(token);
            return true;
        } catch (InvalidJwtException e) {
            logger.error("Token JWT inválido: {}", e.getMessage());
            return false;
        } catch (Exception e) {
            logger.error("Error al validar el token JWT: {}", e.getMessage());
            return false;
        }
    }

    public String getSubjectFromToken(String token) {
        try {
            SecretKey secretKey = new HmacKey(secret.getBytes("UTF-8"));

            JwtConsumer jwtConsumer = new JwtConsumerBuilder()
                    .setVerificationKey(secretKey)
                    .build();

            JwtClaims jwtClaims = jwtConsumer.processToClaims(token);
            return jwtClaims.getSubject();
        } catch (InvalidJwtException | MalformedClaimException e) {
            logger.error("Error al obtener el subject del token JWT: {}", e.getMessage());
            return null;
        } catch (Exception e) {
            logger.error("Error al procesar el token JWT: {}", e.getMessage());
            return null;
        }
    }

    public <T> T getClaimFromToken(String token, String claimName, Class<T> claimType) {
        try {
            SecretKey secretKey = new HmacKey(secret.getBytes("UTF-8"));

            JwtConsumer jwtConsumer = new JwtConsumerBuilder()
                    .setVerificationKey(secretKey)
                    .build();

            JwtClaims jwtClaims = jwtConsumer.processToClaims(token);
            return jwtClaims.getClaimValue(claimName, claimType);
        } catch (InvalidJwtException | MalformedClaimException e) {
            logger.error("Error al obtener la reclamación '{}' del token JWT: {}", claimName, e.getMessage());
            return null;
        } catch (Exception e) {
            logger.error("Error al procesar el token JWT: {}", e.getMessage());
            return null;
        }
    }
	
}

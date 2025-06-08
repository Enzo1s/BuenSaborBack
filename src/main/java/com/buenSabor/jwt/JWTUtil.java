package com.buenSabor.jwt;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.JWTVerifier;
import com.buenSabor.dto.LoginDTO;
import com.buenSabor.entity.Usuario;
import com.buenSabor.repository.UsuarioRepository;

import java.time.Instant;
import java.util.Date;

@Component
public class JWTUtil {

	private static final Logger logger = LoggerFactory.getLogger(JWTUtil.class);

    private static String secret = "secreto";
    
    private static final Algorithm ALG = Algorithm.HMAC256(secret);
	private static final String ISS = "BuenSabor";
	
	private final Log log = LogFactory.getLog(JWTUtil.class);
    
    @Autowired
    private UsuarioRepository usuarioRepository;

    public String generateToken(LoginDTO model) throws Exception {
    	Usuario usuario = usuarioRepository.findByUsername(model.username());
    	
        try {
        	checkPass(usuario, model.password());
        	return JWT.create()
        			.withIssuer(ISS)
        			.withIssuedAt(new Date())
					.withExpiresAt(Instant.now().plusSeconds(36000))
					.withClaim("username", usuario.getUsername())
					.withClaim("sucursal", usuario.getSucursalEmpresa() != null ? usuario.getSucursalEmpresa().getNombre():"")
					.sign(ALG);

        } catch (JWTCreationException e) {
			log.error(e);
		} catch (NullPointerException e) {
			log.info("Usuario <" + model.username() + "> no encontrado");
			return "Credenciales inválidas";
        }
		return null;
    }

    private void checkPass(Usuario usuario, String password) throws Exception {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if (!encoder.matches(password, usuario.getPassword())) {
			throw new Exception("Contraseña incorrecta");
		}
	}
    
    public boolean validateToken(String token) {
        try {
            JWTVerifier verifier = JWT.require(ALG).withIssuer(ISS).build();
            verifier.verify(token);
            return true;
        } catch (IllegalArgumentException e) {
            logger.error("Token JWT inválido: {}", e.getMessage());
            return false;
        } catch (Exception e) {
            logger.error("Error al validar el token JWT: {}", e.getMessage());
            return false;
        }
    }
    
    public String obtenerUsername(String token) throws JWTDecodeException {
    	if(token.contains("Bearer"))
    		token = token.replaceAll("Bearer ", "");
    	token = token.replace("\"", "");
    	return JWT.decode(token).getClaim("username").asString();
    }
    
    public Usuario obtenerUsuario(String token) throws JWTDecodeException {
    	if(token.contains("Bearer")) 
    		token = token.replaceAll("Bearer", "");
    	return usuarioRepository.findByUsername(obtenerUsername(token));
    }

}

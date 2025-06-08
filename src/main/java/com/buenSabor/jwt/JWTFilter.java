package com.buenSabor.jwt;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.auth0.jwt.exceptions.TokenExpiredException;
import com.buenSabor.entity.Usuario;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class JWTFilter extends OncePerRequestFilter {

    @Autowired
    private JWTUtil jwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        try {
            String jwt = getJwtFromRequest(request);

            if (jwt != null && jwtUtil.validateToken(jwt)) {
                Usuario usuario = jwtUtil.obtenerUsuario(jwt);
                if(usuario != null) {
                	List<GrantedAuthority> authorities = new ArrayList<>();
                	authorities.add(new SimpleGrantedAuthority(usuario.getRol().toString()));
                	UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(usuario.getUsername(), null,
							authorities);
                	SecurityContextHolder.getContext().setAuthentication(auth);
                }
            }
            filterChain.doFilter(request, response);
        } catch (TokenExpiredException e) {
        	ObjectMapper mapper = new ObjectMapper();

	        HttpServletResponse responseError = response;
	        Map<String, Object> responseDetails = new HashMap<>();
	        responseDetails.put("error", "TokenExpiredException");
	        responseDetails.put("status", HttpStatus.UNAUTHORIZED);

	        responseError.setStatus(HttpStatus.UNAUTHORIZED.value());
	        responseError.setContentType(MediaType.APPLICATION_JSON_VALUE);

	        mapper.writeValue(responseError.getWriter(), responseDetails);
        }

    }

    private String getJwtFromRequest(HttpServletRequest request) {
        String bearerToken = request.getHeader("Authorization");
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7);
        }
        return null;
    }
}

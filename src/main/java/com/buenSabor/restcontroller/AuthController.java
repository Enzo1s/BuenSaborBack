package com.buenSabor.restcontroller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.auth0.jwt.exceptions.JWTCreationException;
import com.buenSabor.dto.LoginDTO;
import com.buenSabor.exeptions.ExistingEntityException;
import com.buenSabor.exeptions.PasswordException;
import com.buenSabor.jwt.JWTUtil;
import com.buenSabor.model.UsuarioModel;
import com.buenSabor.serviceimpl.UsuarioService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/auth")
public class AuthController {
	
	@Autowired
	private UsuarioService usuarioService;

    @Autowired
    private JWTUtil jwtUtil;

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@RequestBody LoginDTO usuario) {
    	try {
			String token = jwtUtil.generateToken(usuario);
			return ResponseEntity.ok(token);
		} catch (Exception e) {		
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
		}
    }
    
    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody UsuarioModel usuario) {
    	Map<String, String> response = new HashMap<>();
			try {
				return ResponseEntity.status(HttpStatus.CREATED).body(usuarioService.registrar(usuario));
			} catch (JWTCreationException e) {				
				e.printStackTrace();
				response.put("error", e.getMessage());
			} catch (NullPointerException e) {
				e.printStackTrace();
				response.put("error", e.getMessage());
			} catch (ExistingEntityException e) {
				e.printStackTrace();
				response.put("error", e.getMessage());
			} catch (PasswordException e) {
				e.printStackTrace();
				response.put("error", e.getMessage());
			}
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	
    }
    
}
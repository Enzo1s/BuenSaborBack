package com.buenSabor.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.dto.LoginDTO;
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
    	try {
			String token = usuarioService.registrar(usuario);
			return ResponseEntity.status(HttpStatus.CREATED).body(token);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.badRequest().build();
		}
    }
    
}
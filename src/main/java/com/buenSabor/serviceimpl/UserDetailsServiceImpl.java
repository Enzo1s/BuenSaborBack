package com.buenSabor.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    // @Autowired
    // private UsuarioRepository usuarioRepository; // Reemplaza con tu repositorio de usuarios

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // Aquí debes buscar al usuario en tu base de datos utilizando el 'username'
        // Ejemplo básico (¡REEMPLAZA ESTO con tu lógica real!):
        if ("testuser".equals(username)) {
            // En una aplicación real, cargarías la contraseña hasheada y los roles del usuario
            return new User("testuser", "$2a$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", new ArrayList<>());
        } else if ("admin".equals(username)) {
            // Ejemplo con roles
            return new User("admin", "$2a$10$yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy", java.util.List.of(new org.springframework.security.core.authority.SimpleGrantedAuthority("ROLE_ADMIN")));
        } else {
            throw new UsernameNotFoundException("Usuario no encontrado: " + username);
        }
    }
}
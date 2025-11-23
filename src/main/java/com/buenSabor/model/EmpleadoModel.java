package com.buenSabor.model;

import java.time.LocalDateTime;

import com.buenSabor.enums.Cargo;

import lombok.Data;

@Data
public class EmpleadoModel {

	private String id;

	private String nombre;

	private String apellido;

	private String telefono;

	private String email;

	private UsuarioModel usuario;

    private LocalDateTime modificacion;

    private LocalDateTime alta;

    private LocalDateTime baja;

    private Cargo cargo;
}

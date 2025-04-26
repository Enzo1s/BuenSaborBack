package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.UsuarioModel;
import com.buenSabor.serviceimpl.UsuarioService;

@RestController
@RequestMapping(path = "/usuario")
public class UsuarioRestController  extends CommonController<UsuarioModel, UsuarioService>{

}

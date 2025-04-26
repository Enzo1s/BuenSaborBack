package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.EmpleadoModel;
import com.buenSabor.serviceimpl.EmpleadoService;

@RestController
@RequestMapping(path = "/empleado")
public class EmpleadoRestController extends CommonController<EmpleadoModel, EmpleadoService>{

}

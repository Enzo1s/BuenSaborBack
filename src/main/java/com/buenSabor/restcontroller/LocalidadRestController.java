package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.LocalidadModel;
import com.buenSabor.serviceimpl.LocalidadService;

@RestController
@RequestMapping(path = "/localidad")
public class LocalidadRestController extends CommonController<LocalidadModel, LocalidadService>{

}

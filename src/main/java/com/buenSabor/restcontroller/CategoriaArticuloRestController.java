package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.CategoriaArticuloModel;
import com.buenSabor.serviceimpl.CategoriaArticuloService;

@RestController
@RequestMapping(path = "/categoria-articulo")
public class CategoriaArticuloRestController extends CommonController<CategoriaArticuloModel, CategoriaArticuloService>{

}

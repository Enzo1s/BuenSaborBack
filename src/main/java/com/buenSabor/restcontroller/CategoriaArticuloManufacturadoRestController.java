package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.CategoriaArticuloManufacturadoModel;
import com.buenSabor.serviceimpl.CategoriaArticuloManufacturadoService;

@RestController
@RequestMapping(path = "/categoria-articulo-manufacturado")
public class CategoriaArticuloManufacturadoRestController extends CommonController<CategoriaArticuloManufacturadoModel, CategoriaArticuloManufacturadoService>{

}

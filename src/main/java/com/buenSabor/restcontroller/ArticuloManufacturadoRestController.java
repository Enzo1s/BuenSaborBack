package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ArticuloManufacturadoModel;
import com.buenSabor.serviceimpl.ArticuloManufacturadoService;

@RestController
@RequestMapping(path = "/articulo-manufacturado")
public class ArticuloManufacturadoRestController extends CommonController<ArticuloManufacturadoModel, ArticuloManufacturadoService>{

}

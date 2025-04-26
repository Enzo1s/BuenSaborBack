package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ArticuloInsumoModel;
import com.buenSabor.serviceimpl.ArticuloInsumoService;

@RestController
@RequestMapping(path = "/articulo-insumo")
public class ArticuloInsumoRestController extends CommonController<ArticuloInsumoModel, ArticuloInsumoService> {

}

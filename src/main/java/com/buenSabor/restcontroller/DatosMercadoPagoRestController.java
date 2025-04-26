package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.DatosMercadoPagoModel;
import com.buenSabor.serviceimpl.DatosMercadoPagoService;

@RestController
@RequestMapping(path = "datos-mercadopago")
public class DatosMercadoPagoRestController extends CommonController<DatosMercadoPagoModel, DatosMercadoPagoService>{

}

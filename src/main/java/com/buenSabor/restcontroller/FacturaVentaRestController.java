package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.FacturaVentaModel;
import com.buenSabor.serviceimpl.FacturaVentaService;

@RestController
@RequestMapping(path = "/factura-venta")
public class FacturaVentaRestController extends CommonController<FacturaVentaModel, FacturaVentaService>{

}

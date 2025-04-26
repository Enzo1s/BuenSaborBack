package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.SucursalEmpresaModel;
import com.buenSabor.serviceimpl.SucursalEmpresaService;

@RestController
@RequestMapping(path = "/sucursal-empresa")
public class SucursalEmpresaRestController extends CommonController<SucursalEmpresaModel, SucursalEmpresaService> {

}

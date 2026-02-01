package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.SucursalEmpresaModel;
import com.buenSabor.serviceimpl.SucursalEmpresaService;

@RestController
@CrossOrigin(origins = {"http://localhost:5173", "http://localhost:3000"})
@RequestMapping(path = "/sucursal-empresa")
public class SucursalEmpresaRestController extends CommonController<SucursalEmpresaModel, SucursalEmpresaService> {

}

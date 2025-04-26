package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.SucursalInsumoModel;
import com.buenSabor.serviceimpl.SucursalInsumoService;

@RestController
@RequestMapping(path = "/sucursal-insumo")
public class SucursalInsumoRestController extends CommonController<SucursalInsumoModel, SucursalInsumoService>{

}

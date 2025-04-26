package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.EmpresaModel;
import com.buenSabor.serviceimpl.EmpresaService;

@RestController
@RequestMapping(path = "/empresa")
public class EmpresaRestController extends CommonController<EmpresaModel, EmpresaService>{

}

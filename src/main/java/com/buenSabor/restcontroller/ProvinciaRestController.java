package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ProvinciaModel;
import com.buenSabor.serviceimpl.ProvinciaService;

@RestController
@RequestMapping(path = "/provincia")
public class ProvinciaRestController extends CommonController<ProvinciaModel, ProvinciaService>{

}

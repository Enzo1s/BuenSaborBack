package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.PaisModel;
import com.buenSabor.serviceimpl.PaisService;

@RestController
@RequestMapping(path = "/pais")
public class PaisRestController extends CommonController<PaisModel, PaisService>{

}

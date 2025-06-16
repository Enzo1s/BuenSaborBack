package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.PromocionModel;
import com.buenSabor.serviceimpl.PromocionService;

@RestController
@RequestMapping(path = "/promocion")
public class PromocionRestController extends CommonController<PromocionModel, PromocionService>{
	

}

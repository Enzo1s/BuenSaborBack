package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.DomicilioModel;
import com.buenSabor.serviceimpl.DomicilioService;

@RestController
@RequestMapping(path = "/domicilio")
public class DomicilioRestController extends CommonController<DomicilioModel, DomicilioService>{

}

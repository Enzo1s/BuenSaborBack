package com.buenSabor.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.ClienteModel;
import com.buenSabor.serviceimpl.ClienteService;

@RestController
@RequestMapping(path = "/cliente")
public class ClienteRestController extends CommonController<ClienteModel, ClienteService>{

}

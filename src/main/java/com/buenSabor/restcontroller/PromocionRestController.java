package com.buenSabor.restcontroller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buenSabor.Commoncontroller.CommonController;
import com.buenSabor.model.PromocionModel;
import com.buenSabor.serviceimpl.PromocionService;

@RestController
@RequestMapping(path = "/promocion")
public class PromocionRestController extends CommonController<PromocionModel, PromocionService>{

    @GetMapping("/activas")
    public ResponseEntity<List<PromocionModel>> getActivePromociones() {
        List<PromocionModel> activePromociones = service.findActivePromotions();
        return ResponseEntity.ok(activePromociones);
    }
}

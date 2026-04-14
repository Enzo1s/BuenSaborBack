package com.buenSabor.restcontroller;

import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @GetMapping(value="/imagen")
    public ResponseEntity<Resource> verArchivo(@RequestParam String path) {
        try {
            return service.abrirArchivo(path);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}

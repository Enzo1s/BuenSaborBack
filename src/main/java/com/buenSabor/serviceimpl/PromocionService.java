package com.buenSabor.serviceimpl;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;
import com.buenSabor.exeptions.PromocionException;
import com.buenSabor.model.PromocionModel;
import com.buenSabor.repository.PromocionRepository;
import com.buenSabor.utils.GuardarArchivos;

@Service
public class PromocionService extends CommonServiceImpl<Promocion, PromocionModel,
CommonConverter<PromocionModel,Promocion>, CommonRepository<Promocion,String>>{

    @Autowired
    private PromocionRepository promocionRepository;

    @Autowired
    private GuardarArchivos guardarArchivos;

    @Override
    @Transactional
    public PromocionModel save(PromocionModel model) {
        try {
            validatePromotion(model);
        } catch (PromocionException e) {
            throw new RuntimeException(e.getMessage());
        }

        Promocion entidad = converter.modeloReqToEntidad(model);
        if(model.getPathImagen() != null && !model.getPathImagen().isEmpty()) {
            entidad.setPathImagen(guardarArchivos.guardarImgenes(model.getPathImagen()));
        }
        entidad = repository.save(entidad);
        return converter.entidadToModeloRes(entidad);
    }

    @Override
    @Transactional
    public PromocionModel update(PromocionModel model) {
        try {
            validatePromotion(model);
        } catch (PromocionException e) {
            throw new RuntimeException(e.getMessage());
        }

        Promocion entidad = converter.modeloReqToEntidad(model);
        if(model.getPathImagen() != null && !model.getPathImagen().isEmpty()) {
            entidad.setPathImagen(guardarArchivos.guardarImgenes(model.getPathImagen()));
        }
        entidad = repository.save(entidad);
        return converter.entidadToModeloRes(entidad);
    }

    @Override
    @Transactional(readOnly = true)
    public PromocionModel findById(String id) {
        Optional<Promocion> obj = promocionRepository.findByIdWithPathImagen(id);
        if (obj.isPresent())
            return converter.entidadToModeloRes(obj.get());
        return null;
    }

    @Transactional(readOnly = true)
    public List<PromocionModel> findActivePromotions() {
        LocalDateTime now = LocalDateTime.now();
        List<Promocion> activePromotions = promocionRepository.findActivePromociones(now);
        return activePromotions.stream()
                .map(promocion -> converter.entidadToModeloRes(promocion))
                .collect(Collectors.toList());
    }

    public ResponseEntity<Resource> abrirArchivo(String archivo) {
        return guardarArchivos.leerArchivo(archivo);
    }

    private void validatePromotion(PromocionModel model) throws PromocionException {
        if (model.getPromocionDetalle() == null || model.getPromocionDetalle().size() < 2) {
            throw new PromocionException("Una promoción debe contener al menos 2 artículos");
        }
    }
}

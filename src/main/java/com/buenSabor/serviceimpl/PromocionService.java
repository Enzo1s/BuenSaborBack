package com.buenSabor.serviceimpl;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonservice.CommonServiceImpl;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;
import com.buenSabor.exeptions.PromocionException;
import com.buenSabor.model.PromocionModel;
import com.buenSabor.repository.PromocionRepository;

@Service
public class PromocionService extends CommonServiceImpl<Promocion, PromocionModel,
CommonConverter<PromocionModel,Promocion>, CommonRepository<Promocion,String>>{

    @Autowired
    private PromocionRepository promocionRepository;

    @Override
    @Transactional
    public PromocionModel save(PromocionModel model) {
        try {
            validatePromotion(model);
        } catch (PromocionException e) {
            throw new RuntimeException(e.getMessage());
        }
        return super.save(model);
    }

    @Override
    @Transactional
    public PromocionModel update(PromocionModel model) {
        try {
            validatePromotion(model);
        } catch (PromocionException e) {
            throw new RuntimeException(e.getMessage());
        }
        return super.update(model);
    }

    @Transactional(readOnly = true)
    public List<PromocionModel> findActivePromotions() {
        LocalDateTime now = LocalDateTime.now();
        List<Promocion> activePromotions = promocionRepository.findActivePromociones(now);
        return activePromotions.stream()
                .map(promocion -> converter.entidadToModeloRes(promocion))
                .collect(Collectors.toList());
    }

    private void validatePromotion(PromocionModel model) throws PromocionException {
        if (model.getPromocionDetalle() == null || model.getPromocionDetalle().size() < 2) {
            throw new PromocionException("Una promoción debe contener al menos 2 artículos");
        }
    }
}

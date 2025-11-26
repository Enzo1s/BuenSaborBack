package com.buenSabor.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;

@Repository
public interface PromocionRepository extends CommonRepository<Promocion, String>{

    @Query("SELECT p FROM Promocion p WHERE p.fechaDesde <= :currentDate AND p.fechaHasta >= :currentDate")
    List<Promocion> findActivePromociones(@Param("currentDate") LocalDateTime currentDate);
}

package com.buenSabor.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.Promocion;

@Repository
public interface PromocionRepository extends CommonRepository<Promocion, String>{

    @Query("SELECT DISTINCT p FROM Promocion p LEFT JOIN FETCH p.pathImagen WHERE p.id = :id")
    Optional<Promocion> findByIdWithPathImagen(@Param("id") String id);

    @Query("SELECT DISTINCT p FROM Promocion p LEFT JOIN FETCH p.pathImagen WHERE p.fechaDesde <= :currentDate AND p.fechaHasta>=:currentDate")                                                            ││17
    List<Promocion> findActivePromociones(@Param("currentDate") LocalDateTime currentDate);
}

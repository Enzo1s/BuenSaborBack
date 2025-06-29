package com.buenSabor.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.PedidoVenta;

@Repository
public interface PedidoVentaRepository extends CommonRepository<PedidoVenta, String>{

	List<PedidoVenta> findByEmpleadoId(String id);
	
	List<PedidoVenta> findBySucursalId(String id);
	
	@Query("SELECT p FROM PedidoVenta p WHERE "
    		+ "	  p.fechaPedido >= :inicio AND p.fechaPedido <= :fin")
	List<PedidoVenta> listarPorRangoFecha(@Param("inicio") LocalDate inicio, @Param("fin") LocalDate fin);
}

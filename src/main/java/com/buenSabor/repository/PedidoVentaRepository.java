package com.buenSabor.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.PedidoVenta;

@Repository
public interface PedidoVentaRepository extends CommonRepository<PedidoVenta, String>{

	List	<PedidoVenta> findByEmpleadoId(String id);
}

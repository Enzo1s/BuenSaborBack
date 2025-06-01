package com.buenSabor.commonservice;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonsrepository.CommonRepository;
import com.buenSabor.entity.ABM;

public class CommonServiceImpl<E extends ABM, M, P extends CommonConverter<M, E>, R extends CommonRepository<E , String>>
		implements CommonService<M> {

	@Autowired
	protected R repository;

	@Autowired
	protected P converter;

	@Override
	@Transactional(readOnly = true)
	public Iterable<M> findAll() {
		Iterable<E> objs = repository.findAll();
		return StreamSupport.stream(objs.spliterator(), false).map(o -> converter.entidadToModeloRes(o))
				.toList();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<M> findAll(Pageable pageable) {
		Page<E> objs = repository.findAll(pageable);
		return new PageImpl<>(
				objs.getContent().stream().map(o -> converter.entidadToModeloRes(o)).toList(),
				pageable, objs.getTotalElements());
	}

	@Override
	@Transactional(readOnly = true)
	public M findById(String id) {
		Optional<E> obj = repository.findById(id);
		if (obj.isPresent())
			return converter.entidadToModeloRes(obj.get());
		return null;
	}

	@Override
	@Transactional
	public M save(M model) {
		E entity = converter.modeloReqToEntidad(model);
		E obj = repository.save(entity);
		return converter.entidadToModeloRes(obj);
	}
	
	@Override
	@Transactional
	public M update(M model) {
		E entity = converter.modeloReqToEntidad(model);
		entity.setModificacion(LocalDateTime.now());
		E obj = repository.save(entity);
		return converter.entidadToModeloRes(obj);
	}

	@Override
	@Transactional
	public void deleteById(String id) {
		Optional<E> entity = repository.findById(id);
		if(entity.isPresent()) {
			System.out.print("ELIMINADO");
			E obj = entity.get();
			obj.setBaja(LocalDateTime.now());
			obj = repository.save(obj);
			System.out.print(obj);
		}
	}

}

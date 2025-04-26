package com.buenSabor.commonservice;

import java.util.Optional;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import com.buenSabor.commonconverter.CommonConverter;
import com.buenSabor.commonsrepository.CommonRepository;

public class CommonServiceImpl<E, M, P extends CommonConverter<M, E>, R extends CommonRepository<E, String>>
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
	public Page<M> findAll(Pageable pageable) {
		Page<E> objs = repository.findAll(pageable);
		return new PageImpl<>(
				objs.getContent().stream().map(o -> converter.entidadToModeloRes(o)).toList(),
				pageable, objs.getTotalElements());
	}

	@Override
	public M findById(String id) {
		Optional<E> obj = repository.findById(id);
		if (obj.isPresent())
			return converter.entidadToModeloRes(obj.get());
		return null;
	}

	@Override
	public M save(M model) {
		E entity = converter.modeloReqToEntidad(model);
		E obj = repository.save(entity);
		return converter.entidadToModeloRes(obj);
	}

	@Override
	public void deleteById(String id) {
		repository.deleteById(id);

	}

}

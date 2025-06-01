package com.buenSabor.commonservice;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CommonService<M> {

	public Iterable<M> findAll();
	
	public Page<M> findAll(Pageable pageable);
	
	public M findById(String id);
	
	public M save (M model);
	
	public M update (M model);
	
	public void deleteById (String id);
}

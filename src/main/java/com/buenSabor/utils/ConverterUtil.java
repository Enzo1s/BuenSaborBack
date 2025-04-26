package com.buenSabor.utils;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ConverterUtil {

	private final ModelMapper modelMapper;

	public ConverterUtil() {
		this.modelMapper = new ModelMapper();
	}

	public <E, M> List<M> convertToModel(List<E> entity, Class<M> model) {
		return entity.stream().map(e -> modelMapper.map(e, model)).toList();
	}

	public <D> D map(Object source, Class<D> destinationType) {
		if (source == null) {
			return null;
		}

		return modelMapper.map(source, destinationType);
	}

}

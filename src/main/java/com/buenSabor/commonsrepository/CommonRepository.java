package com.buenSabor.commonsrepository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface CommonRepository<E, R> extends JpaRepository<E, R> {

	public Optional<E> findById(R id);
}

package com.buenSabor.Commoncontroller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.buenSabor.commonservice.CommonService;

public class CommonController<M, S extends CommonService<M>> {
	
	@Autowired
	protected S service;
	
	@GetMapping
	public ResponseEntity<?> list() {
		return ResponseEntity.ok().body(service.findAll());
	}
	
	@GetMapping("/paginated")
	public ResponseEntity<?> list(Pageable pageable) {
		return ResponseEntity.ok().body(service.findAll(pageable));
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> get(@PathVariable String id){
		M o = service.findById(id);
		if(o == null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(o);
	}

	@PostMapping("/create")
	public ResponseEntity<?> create( @RequestBody M model) {
		M entityDb = service.save(model);
		return ResponseEntity.status(HttpStatus.CREATED).body(entityDb);
	}
	
	@PutMapping("/update")
	public ResponseEntity<?> update( @RequestBody M model) {
		M entityDb = service.save(model);
		return ResponseEntity.status(HttpStatus.OK).body(entityDb);
	}

	@PutMapping("/{id}")
	public ResponseEntity<?> updateById(@PathVariable String id, @RequestBody M model) {
		M existingEntity = service.findById(id);
		if(existingEntity == null) {
			return ResponseEntity.notFound().build();
		}
		M entityDb = service.save(model);
		return ResponseEntity.ok(entityDb);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<?> delete(@PathVariable String id) {
		service.deleteById(id);
		return ResponseEntity.noContent().build();
	}
	
	protected ResponseEntity<?> validar(BindingResult result) {
		Map<String, Object> errores = new HashMap<>();
		result.getFieldErrors().forEach(err -> {
			errores.put(err.getField(), "El campo " + err.getField() + " " + err.getDefaultMessage());
		});
		return ResponseEntity.badRequest().body(errores);
	}
}

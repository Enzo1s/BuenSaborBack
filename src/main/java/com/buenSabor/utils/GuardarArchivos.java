package com.buenSabor.utils;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class GuardarArchivos {
	

	@Value("${ruta.guardado.imagenes}")
    private String rutaGuardadoImagenes;

	public  List<String> guardarImgenes(List<String> imagenes) {
		Path directorioGuardado = Paths.get(rutaGuardadoImagenes);
        if (!Files.exists(directorioGuardado)) {
            try {
                Files.createDirectories(directorioGuardado);
            } catch (IOException e) {
                System.out.println(e.getMessage());
            }
        }
        List<String> rutas = new ArrayList<String>();
        for (String base64Imagen : imagenes) {
            try {
                String[] parts = base64Imagen.split(",");
                if (parts.length < 2) {
                    System.err.println("Formato base64 inválido para una de las imágenes.");
                    continue; 
                }
                String base64Data = parts[1];

                byte[] imageData = Base64.getDecoder().decode(base64Data);
                String nombreArchivo = UUID.randomUUID().toString() + ".png"; 
                Path rutaArchivo = directorioGuardado.resolve(nombreArchivo);
                Files.write(rutaArchivo, imageData);
                rutas.add(rutaArchivo.toUri().getPath());

            } catch (IllegalArgumentException e) {
                System.err.println("Error al decodificar base64 para una imagen: " + e.getMessage());
            } catch (IOException e) {
                System.err.println("Error al guardar una imagen en el sistema: " + e.getMessage());
            }
        }
        return rutas;
	}
	
	public ResponseEntity<Resource> leerArchivo(String rutaArchivo) {
	        Path pathArchivo = Paths.get(rutaArchivo);
	        Resource recurso = new FileSystemResource(pathArchivo);

	        if (recurso.exists()) {
	            HttpHeaders headers = new HttpHeaders();
	            headers.setContentDispositionFormData("attachment", recurso.getFilename());
	            String contentType;
				try {
					contentType = Files.probeContentType(pathArchivo);
					headers.setContentType(MediaType.parseMediaType(contentType));
				} catch (IOException e) {
					ResponseEntity.notFound().build();
				}

	            return ResponseEntity.ok()
	                    .headers(headers)
	                    .body(recurso);
	        } else {
	            return ResponseEntity.notFound().build();
	        }
	}
}

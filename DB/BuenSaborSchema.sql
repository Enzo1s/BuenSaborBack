CREATE DATABASE IF NOT EXISTS BuenSaborPrueba;
USE BuenSaborPrueba;

-- =========================================================================
-- MÓDULO 3: GEOGRÁFICO Y CORPORATIVO (Se crea primero por dependencias)
-- =========================================================================

CREATE TABLE `pais` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `provincia` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm4s599988w0v1q1nw6dyo5t2m` (`pais_id`),
  CONSTRAINT `FKm4s599988w0v1q1nw6dyo5t2m` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `localidad` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK37mbpxuicwnbo878s9djjgr39` (`provincia_id`),
  CONSTRAINT `FK37mbpxuicwnbo878s9djjgr39` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `domicilio` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `calle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `localidad_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8t63gx4v022qapv45vdwld71j` (`localidad_id`),
  CONSTRAINT `FK8t63gx4v022qapv45vdwld71j` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `empresa` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cuil` bigint NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `sucursal_empresa` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `horario_apertura` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `horario_cierre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `domicilio_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKd2lcv3a5fgyfoakug5k6u8f0n` (`domicilio_id`),
  CONSTRAINT `FK4mw6sspnqjhqbm6yjoip9fpj7` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `empresa_sucursal_empresa` (
  `empresa_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sucursal_empresa_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK7y7y2r34fyte32p0m02t3b32y` (`sucursal_empresa_id`),
  KEY `FKgrxti0w79222qym8hq0m8xgnh` (`empresa_id`),
  CONSTRAINT `FKgrxti0w79222qym8hq0m8xgnh` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKou8clo5uodkovlvp0kf5mngni` FOREIGN KEY (`sucursal_empresa_id`) REFERENCES `sucursal_empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- =========================================================================
-- MÓDULO 2: USUARIOS Y SEGURIDAD
-- =========================================================================

CREATE TABLE `usuario` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `auth0id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rol` enum('ADMIN','CLIENTE','EMPLEADO') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empresa_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sucursal_empresa_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK863n1y3x0jalatoir4325ehal` (`username`),
  KEY `FK87ckfs30l64gnivnfk7ywp8l6` (`empresa_id`),
  KEY `FK72hhiiw1tusptjdmjsca029fj` (`sucursal_empresa_id`),
  CONSTRAINT `FK72hhiiw1tusptjdmjsca029fj` FOREIGN KEY (`sucursal_empresa_id`) REFERENCES `sucursal_empresa` (`id`),
  CONSTRAINT `FK87ckfs30l64gnivnfk7ywp8l6` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `cliente` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `domicilio_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `usuario_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK7ob9xg3niaibhhmj5iw311ygb` (`domicilio_id`),
  UNIQUE KEY `UKid7jmosqg8hkqiqw4vf50xipm` (`usuario_id`),
  CONSTRAINT `FKc3u631ocxdrtm3ccpme0kjlmu` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKhnfwgi8xk38mge49a8twpxtxv` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `empleado` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cargo` enum('CAJERO','COCINERO','DELIVERY') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `usuario_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6ff36el6hfqwrtnvk0y9jd6sh` (`usuario_id`),
  CONSTRAINT `FKcvqmeghkabb4tt6472pabt2a4` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- =========================================================================
-- MÓDULO 1: CATÁLOGO Y PRODUCTOS
-- =========================================================================

CREATE TABLE `categoria_articulo` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `categoria_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt74xvmfep8aup9v9m2u15v3tv` (`categoria_id`),
  CONSTRAINT `FKt74xvmfep8aup9v9m2u15v3tv` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_articulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_insumo` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `es_para_elaborar` bit(1) NOT NULL,
  `precio_compra` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `unidad_medida` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_insumo_categoria_articulo` (
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `categoria_articulo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK6io5bby5o4rdflsheoa5at7aw` (`categoria_articulo_id`),
  KEY `FKganiyk614e7mxu4hpbdl9rn9g` (`articulo_insumo_id`),
  CONSTRAINT `FK6io5bby5o4rdflsheoa5at7aw` FOREIGN KEY (`categoria_articulo_id`) REFERENCES `categoria_articulo` (`id`),
  CONSTRAINT `FKganiyk614e7mxu4hpbdl9rn9g` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_insumo_path_imagen` (
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path_imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `FKnj53624tbswcdbwuovhx067q7` (`articulo_insumo_id`),
  CONSTRAINT `FKnj53624tbswcdbwuovhx067q7` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `sucursal_insumo` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `stock_actual` double NOT NULL,
  `stock_maximo` double NOT NULL,
  `stock_minimo` double NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sucursal_empresa_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg8eelnoqdtq82r9weraa3d1r7` (`articulo_insumo_id`),
  KEY `FK56cvqau6a4wh2pfmyhk054g6` (`sucursal_empresa_id`),
  CONSTRAINT `FK56cvqau6a4wh2pfmyhk054g6` FOREIGN KEY (`sucursal_empresa_id`) REFERENCES `sucursal_empresa` (`id`),
  CONSTRAINT `FKg8eelnoqdtq82r9weraa3d1r7` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `categoria_articulo_manufacturado` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_manufacturado` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio_costo` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `tiempo_estimado` int DEFAULT NULL,
  `categoria_articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo3rpbke0rt36so4mn5hm3ff76` (`categoria_articulo_manufacturado_id`),
  CONSTRAINT `FKo3rpbke0rt36so4mn5hm3ff76` FOREIGN KEY (`categoria_articulo_manufacturado_id`) REFERENCES `categoria_articulo_manufacturado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_manufacturado_path_imagen` (
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path_imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `FKcrc67w2o53grwy6m90ueg83q6` (`articulo_manufacturado_id`),
  CONSTRAINT `FKcrc67w2o53grwy6m90ueg83q6` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_manufacturado_detalle` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKee8sad16ogk7in2nlh0vc3y9b` (`articulo_insumo_id`),
  CONSTRAINT `FKee8sad16ogk7in2nlh0vc3y9b` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `articulo_manufacturado_articulo_manufacturado_detalle` (
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_manufacturado_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UKdxo786rso3747iv76lgh6tli5` (`articulo_manufacturado_detalle_id`),
  KEY `FK61fc30j5c4i71vi5gti2j2ru0` (`articulo_manufacturado_id`),
  CONSTRAINT `FK61fc30j5c4i71vi5gti2j2ru0` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  CONSTRAINT `FKlfpy1xlxn6v13p328etifjhwg` FOREIGN KEY (`articulo_manufacturado_detalle_id`) REFERENCES `articulo_manufacturado_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `promocion` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descuento` double NOT NULL,
  `fecha_desde` datetime(6) DEFAULT NULL,
  `fecha_hasta` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `promocion_detalle` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cantidad` int NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt2qtgwk1dxs0l3nr5d59futtb` (`articulo_insumo_id`),
  KEY `FK75d6oalo7u7q1u7f7ca31bcha` (`articulo_manufacturado_id`),
  CONSTRAINT `FK75d6oalo7u7q1u7f7ca31bcha` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  CONSTRAINT `FKt2qtgwk1dxs0l3nr5d59futtb` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `promocion_promocion_detalle` (
  `promocion_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `promocion_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK6uspkqtg54sg7n182fsu3bqek` (`promocion_detalle_id`),
  KEY `FKb8bycn4ukkwumthv51lq4h2dr` (`promocion_id`),
  CONSTRAINT `FKb8bycn4ukkwumthv51lq4h2dr` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`),
  CONSTRAINT `FKdartjme6f5y4qa9desfh07u7t` FOREIGN KEY (`promocion_detalle_id`) REFERENCES `promocion_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `promocion_path_imagen` (
  `promocion_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path_imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `FKpromocion_path_imagen` (`promocion_id`),
  CONSTRAINT `FKpromocion_path_imagen` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- =========================================================================
-- MÓDULO 4: OPERACIONES Y VENTAS
-- =========================================================================

CREATE TABLE `datos_mercado_pago` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `collection_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `collection_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_approved` date DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `date_last_updated` date DEFAULT NULL,
  `external_reference` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merchant_account_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merchant_order_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_type_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `preference_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `processing_mode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `site_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_detail` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `factura_venta` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `descuento` decimal(38,2) DEFAULT NULL,
  `fecha_facturacion` datetime(6) DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `gastos_envio` decimal(38,2) DEFAULT NULL,
  `numero_comprobante` bigint DEFAULT NULL,
  `sub_total` decimal(38,2) DEFAULT NULL,
  `total_venta` decimal(38,2) DEFAULT NULL,
  `datosmp_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKt0as5nn2iapyciuxc3is38yn2` (`datosmp_id`),
  CONSTRAINT `FKm8av65i8rdwww635adnparw86` FOREIGN KEY (`datosmp_id`) REFERENCES `datos_mercado_pago` (`id`),
  CONSTRAINT `factura_venta_chk_1` CHECK ((`forma_pago` between 0 and 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `factura_venta_detalle` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `sub_total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `factura_venta_detalle_articulo_insumo` (
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK4rqs04webr85ebp9eplkthxlh` (`articulo_insumo_id`),
  KEY `FK9ag4ioag5fq7tmmlmhhjknojg` (`factura_venta_detalle_id`),
  CONSTRAINT `FK9ag4ioag5fq7tmmlmhhjknojg` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `factura_venta_detalle_articulo_manufacturado` (
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK253n10nbemtpmwv313kil7shf` (`articulo_manufacturado_id`),
  KEY `FKeioo0cmy0q13w38bugkk0x8xy` (`factura_venta_detalle_id`),
  CONSTRAINT `FKeioo0cmy0q13w38bugkk0x8xy` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `factura_venta_factura_venta_detalle` (
  `factura_venta_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UKhkqnod0ni9b57qn57gbnkmhwy` (`factura_venta_detalle_id`),
  KEY `FKdjbfj7fdx3bbccbq60mjycr3f` (`factura_venta_id`),
  CONSTRAINT `FK120fhwrpgotuxkxjx9o5gv7wq` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`),
  CONSTRAINT `FKdjbfj7fdx3bbccbq60mjycr3f` FOREIGN KEY (`factura_venta_id`) REFERENCES `factura_venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pedido_venta` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `descuento` decimal(38,2) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_pedido` datetime(6) DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `gastos_envio` decimal(38,2) DEFAULT NULL,
  `hora_estimada_finalizacion` datetime(6) DEFAULT NULL,
  `subtotal` decimal(38,2) DEFAULT NULL,
  `tipo_envio` tinyint DEFAULT NULL,
  `total` decimal(38,2) DEFAULT NULL,
  `total_costo` decimal(38,2) DEFAULT NULL,
  `cliente_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empleado_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `factura_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sucursal_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ams0layckptj1abpgewmcbdp` (`cliente_id`),
  KEY `FKmxo4afr9ry3fmnc3aqaxl8ri` (`empleado_id`),
  KEY `FK7ifvmhgge1nq3xaxmb85cc3do` (`factura_id`),
  KEY `FKcfiwkkx4po8mwedo9byj1dyq8` (`sucursal_id`),
  CONSTRAINT `FK7ams0layckptj1abpgewmcbdp` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK7ifvmhgge1nq3xaxmb85cc3do` FOREIGN KEY (`factura_id`) REFERENCES `factura_venta` (`id`),
  CONSTRAINT `FKcfiwkkx4po8mwedo9byj1dyq8` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal_empresa` (`id`),
  CONSTRAINT `FKmxo4afr9ry3fmnc3aqaxl8ri` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `pedido_venta_chk_1` CHECK ((`estado` between 0 and 4)),
  CONSTRAINT `pedido_venta_chk_2` CHECK ((`forma_pago` between 0 and 1)),
  CONSTRAINT `pedido_venta_chk_3` CHECK ((`tipo_envio` between 0 and 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pedido_venta_detalle` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `sub_total` double NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsxk9k7vfb4fjtq4rjwki79xvp` (`articulo_insumo_id`),
  KEY `FKbalv45yk7nmusnc56hy44cbn9` (`articulo_manufacturado_id`),
  CONSTRAINT `FKbalv45yk7nmusnc56hy44cbn9` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  CONSTRAINT `FKsxk9k7vfb4fjtq4rjwki79xvp` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pedido_venta_detalle_promocion` (
  `pedido_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `promocion_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FKklqjp2s08no82fxb42udvdwjb` (`promocion_id`),
  KEY `FKsr8otvesdreyqyxr6b9f2ma6w` (`pedido_venta_detalle_id`),
  CONSTRAINT `FKklqjp2s08no82fxb42udvdwjb` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`),
  CONSTRAINT `FKsr8otvesdreyqyxr6b9f2ma6w` FOREIGN KEY (`pedido_venta_detalle_id`) REFERENCES `pedido_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pedido_venta_pedido_venta_detalle` (
  `pedido_venta_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pedido_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK7mhya25e8t45hosjds5t084iu` (`pedido_venta_detalle_id`),
  KEY `FKjbktj6sjvur9icgdqec2bypt6` (`pedido_venta_id`),
  CONSTRAINT `FKbpwsn3pqbeeomhjy74sin17md` FOREIGN KEY (`pedido_venta_detalle_id`) REFERENCES `pedido_venta_detalle` (`id`),
  CONSTRAINT `FKjbktj6sjvur9icgdqec2bypt6` FOREIGN KEY (`pedido_venta_id`) REFERENCES `pedido_venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
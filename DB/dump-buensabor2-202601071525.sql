-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: buensabor2
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo_insumo`
--

DROP TABLE IF EXISTS `articulo_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_insumo`
--

LOCK TABLES `articulo_insumo` WRITE;
/*!40000 ALTER TABLE `articulo_insumo` DISABLE KEYS */;
INSERT INTO `articulo_insumo` VALUES ('02999885-0e79-4ab4-b6e7-59ef3f1f792a','2026-01-02 17:43:29.816781',NULL,'2026-01-02 17:43:29.816781','medallon hamburguesa',_binary '',500,0,'unidad'),('02acefbc-e004-4fb8-b97a-e4b1f4f94e0e','2026-01-02 17:48:12.270825',NULL,'2026-01-02 17:48:12.270825','huevos',_binary '',200,0,'unidad'),('03524b2d-105c-4b86-8b19-0bd879188933','2026-01-02 18:00:36.828680',NULL,'2026-01-02 18:00:36.828680','Salchichas veganas',_binary '',1000,0,'unidad'),('1111515d-7d41-4fa9-a1d4-0ae44da1505f','2026-01-07 12:59:47.651237',NULL,'2026-01-07 12:59:47.651237','Coca cola lata',_binary '\0',600,1200,'unidad'),('19961048-95ba-4631-8218-de79e34db17d','2026-01-02 18:05:44.647473',NULL,'2026-01-02 18:05:44.647473','Pimiento',_binary '',4000,0,'kg'),('210e058c-59b2-476b-b950-2e3de6ed0009','2026-01-02 18:12:51.900913',NULL,'2026-01-02 18:12:51.900913','',_binary '',200,0,'g'),('2198bd94-24be-4040-8907-8cd01ca655fd','2026-01-02 17:45:50.179275',NULL,'2026-01-02 17:45:50.179275','bifes',_binary '',16000,0,'Kg'),('293cb691-08d8-4e52-9639-ee8e17fab017','2026-01-02 17:57:03.782049',NULL,'2026-01-02 17:57:03.782049','cebolla',_binary '',500,0,'kg'),('31afad53-22a3-40c4-953c-666779cce9d1','2026-01-02 17:08:50.182954',NULL,'2026-01-02 17:08:50.182954','pan lomo',_binary '',120,0,'unidad'),('3697f7b2-6d34-45ff-81c4-6c7426f3dd4c','2026-01-02 18:09:45.158807',NULL,'2026-01-02 18:09:45.158807','pan hamburguesa sintacc',_binary '',2100,0,'unidad'),('3bfe3686-03f3-4930-a5b1-52c94d953fb3','2026-01-02 17:07:47.208065',NULL,'2026-01-02 17:07:47.208065','pan hamburguesa',_binary '',100,0,'unidad'),('3c1b265a-170b-426e-9f8e-7787211a2d5a','2026-01-02 17:53:12.130058',NULL,'2026-01-02 17:53:12.130058','Harina maiz',_binary '',2000,0,'kg'),('3cbe2fe4-4e0d-4d05-b971-b13571499e8b','2026-01-03 10:03:04.035967',NULL,'2026-01-03 10:03:04.035967','Fanta 2,5l',_binary '\0',1500,2500,'unidad'),('3f609da8-07ca-4901-8786-99fb25addd57','2026-01-02 17:57:26.379573',NULL,'2026-01-02 17:57:26.379573','Tomates cherry',_binary '',3000,0,'kg'),('4026f5fb-cad8-4fac-a440-1c1d70478e22','2026-01-03 10:04:00.625459',NULL,'2026-01-03 10:04:00.625459','Coca Cola 1,5l',_binary '\0',1200,2600,'unidad'),('44dd666d-8e23-43ca-8367-81a0988041ab','2026-01-02 17:59:24.878023',NULL,'2026-01-02 17:59:24.878023','Jamon crudo',_binary '',13000,0,'kg'),('4cb8e22c-4942-4f35-ae46-712575f408e4','2026-01-07 13:08:34.332769',NULL,'2026-01-07 13:08:34.332769','Seven up lata ',_binary '\0',600,1200,'unidad'),('5aaec918-93b4-4309-b814-bcea1d4e352f','2026-01-02 17:09:07.540623',NULL,'2026-01-02 17:09:07.540623','Pan panchos',_binary '',80,0,'unidad'),('5d288218-1670-4390-9fb8-d75c8ce547af','2026-01-03 11:04:15.116043',NULL,'2026-01-03 11:04:15.116043','Fanta 500ml',_binary '\0',800,1200,'unidad'),('5d89f092-c184-43bb-875c-9cc8daf9c02c','2026-01-02 18:11:56.918780',NULL,'2026-01-02 18:11:56.918780','pan lomo sintacc',_binary '',2100,0,'unidad'),('61ceb294-fe0c-44c7-86e2-d2071d456d3b','2026-01-03 10:31:57.080461',NULL,'2026-01-03 10:31:57.080461','Coca Cola 500ml',_binary '\0',1000,1800,'unidad'),('61e26691-7b45-426f-82ed-25319fc5ef03','2026-01-02 18:02:17.700070',NULL,'2026-01-02 18:02:17.700070','mayonesa aceituna',_binary '',2400,0,'kg'),('6adfa272-bb97-4813-927a-8752721eadf1','2026-01-07 13:07:15.853746',NULL,'2026-01-07 13:07:15.853746','seve up 1,5l',_binary '\0',1200,1800,'unidad'),('6b034b28-f937-4b91-9ec4-51f710aef02d','2026-01-02 18:07:21.471472',NULL,'2026-01-02 18:07:21.471472','Salame',_binary '',12000,0,'Kg'),('6ff4d074-6486-4a10-9f56-ced2df3c281e','2026-01-02 17:54:09.055384',NULL,'2026-01-02 17:54:09.055384','aceitunas',_binary '',2000,0,'kg'),('70e53ad9-f143-4114-a549-d2a9f6b8cd1b','2026-01-07 13:23:46.477980',NULL,'2026-01-07 13:23:46.477980','pre-pizza',_binary '',200,0,'unidad'),('71b0bba9-3bd2-4758-8cfc-a6ba5aa6af26','2026-01-02 18:11:13.093062',NULL,'2026-01-02 18:11:13.093062','cebolla morada',_binary '',1000,0,'kg'),('73a8fe6b-2c90-40f0-9ba2-fe7f259f66af','2026-01-03 10:08:22.354170',NULL,'2026-01-03 10:08:22.354170','Mirinda 500ml',_binary '\0',800,1200,'unidad'),('76e07d77-e03b-47e6-9829-ec8c19047dfd','2026-01-07 13:02:54.960752',NULL,'2026-01-07 13:02:54.960752','Mirinda Manzana 2,5l',_binary '\0',1200,2000,'unidad'),('7713cb59-43a4-4d7d-ab0c-fbb9f2fb11f9','2026-01-02 18:13:26.813970',NULL,'2026-01-02 18:13:26.813970','Jamon cocido',_binary '',10000,0,'kg'),('89b7e2a5-97cb-473c-9ec6-cdfb3d88b8b6','2026-01-03 09:54:47.313921',NULL,'2026-01-03 09:54:47.313921','Seven un 500ml',_binary '\0',700,1200,'unidad'),('8a84fdf9-a74c-4d99-abd8-af755507547a','2026-01-02 17:58:59.959471',NULL,'2026-01-02 17:58:59.959471','Queso barra',_binary '',5000,0,'kg'),('8a8b01f9-782b-4e99-a1a7-acea2a3bc7c2','2026-01-02 18:01:39.974604',NULL,'2026-01-02 18:01:39.974604','mayonesa ligth',_binary '',2600,0,'kg'),('96b1f5a4-f5e5-4386-af89-250a734f2bb9','2026-01-02 18:08:11.606624',NULL,'2026-01-02 18:08:11.606624','Salsa golf',_binary '',2300,0,'kg'),('97367d5c-38e5-4149-bfdf-2d9a6b22c266','2026-01-02 18:03:03.960263',NULL,'2026-01-02 18:03:03.960263','Paty vegana',_binary '',1500,0,'unidad'),('97c2d118-eecc-445c-87b5-5e0ca8b930ab','2026-01-02 18:07:52.224478',NULL,'2026-01-02 18:07:52.224478','Ajo',_binary '',100,0,'uni'),('9b0c0691-12fc-439f-88f7-14af1502202a','2026-01-02 17:54:39.067945',NULL,'2026-01-02 17:54:39.067945','Queso cremoso',_binary '',7000,0,'kg'),('9d86e367-56e8-4d14-b625-f92e2d8837f9','2026-01-07 13:00:35.321521',NULL,'2026-01-07 13:00:35.321521','Fanta en lata',_binary '\0',800,1200,'unidad'),('a099b84c-4cd6-4994-b228-2a38e16d176b','2026-01-02 18:12:16.472212',NULL,'2026-01-02 18:12:16.472212','Tomate',_binary '',1500,0,'kg'),('a1c3ce9f-8bda-4b3b-8a8a-b3857551763e','2026-01-03 11:04:59.057593',NULL,'2026-01-03 11:04:59.057593','Coca vidrio 500ml',_binary '\0',800,1800,'unidad'),('a1c3d3da-e9a4-411c-a725-12cf1172fdb0','2026-01-02 17:30:54.033013',NULL,'2026-01-02 17:30:54.033013','Salchichas',_binary '',300,0,'unidad'),('a78721f6-b70c-4a21-944c-093111b1b895','2026-01-02 17:11:52.759089',NULL,'2026-01-02 17:11:52.759089','Papas',_binary '',400,0,'Kg'),('a9d3ca7b-50e9-42c0-9f85-7344de625f80','2026-01-03 10:01:29.620701',NULL,'2026-01-03 10:01:29.620701','Mirinda 1,5 lt',_binary '\0',1200,2000,'unidad'),('ac6be143-97bc-410c-af57-712fc715c498','2026-01-02 18:09:05.370399',NULL,'2026-01-02 18:09:05.370399','Queso cheddar',_binary '',5000,0,'kg'),('af523105-ef1f-4df9-a812-ea69d70018f8','2026-01-03 10:32:50.251532',NULL,'2026-01-03 10:32:50.251532','Pepsi 1.5l',_binary '\0',800,1600,'unidad'),('b09995cc-01cc-4ddd-bb6f-fbeb63b5dd2d','2026-01-02 18:12:31.856059',NULL,'2026-01-02 18:12:31.856059','Panceta',_binary '',10000,0,'kg'),('b83e1fd4-272b-4794-8ab9-b33e4fcd07e4','2026-01-02 18:08:46.733482',NULL,'2026-01-02 18:08:46.733482','mostaza',_binary '',2300,0,'kg'),('c1405d41-4bad-4553-8a6f-fd5bb02104bb','2026-01-02 17:58:31.606391',NULL,'2026-01-02 17:58:31.606391','mayonesa',_binary '',2000,0,'kg'),('c162a2ea-072c-4581-8f3e-442446a3f763','2026-01-02 18:03:29.201077',NULL,'2026-01-02 18:03:29.201077','Salsa tomate',_binary '',1000,0,'kg'),('c830cd7a-180e-4a67-894e-3c8416eb967e','2026-01-02 18:02:01.037584',NULL,'2026-01-02 18:02:01.037584','kechup',_binary '',2000,0,'kg'),('dbd663d2-35c5-4900-ae0f-60a6e52ab579','2026-01-02 18:06:43.208971',NULL,'2026-01-02 18:06:43.208971','Ananá',_binary '',3000,0,'kg'),('ebd76edd-fc59-4ee4-8cd2-8f6af046be96','2026-01-02 17:57:54.148710',NULL,'2026-01-02 17:57:54.148710','Harina trigo',_binary '',1000,0,'kg'),('efbccfbe-dabc-4a87-ad40-f8b750b8acd9','2026-01-03 10:09:30.958859',NULL,'2026-01-03 10:09:30.958859','Pepsi Black 1,5l',_binary '\0',1200,2000,'unidad'),('f2d6f5dc-92b7-4c2b-8233-0966fc6af8cb','2026-01-02 17:59:57.656791',NULL,'2026-01-02 17:59:57.656791','Paty pollo',_binary '',1000,0,'unidad'),('f743ac26-e7b4-4ee4-9376-982e6f12640f','2026-01-02 18:02:36.022249',NULL,'2026-01-02 18:02:36.022249','Palmitos',_binary '',3000,0,'kg'),('fe290d61-aa96-45ec-abb6-81f1f8da1130','2026-01-02 18:07:01.914515',NULL,'2026-01-02 18:07:01.914515','Lechuga',_binary '',1000,0,'kg');
/*!40000 ALTER TABLE `articulo_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_insumo_categoria_articulo`
--

DROP TABLE IF EXISTS `articulo_insumo_categoria_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo_insumo_categoria_articulo` (
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `categoria_articulo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK6io5bby5o4rdflsheoa5at7aw` (`categoria_articulo_id`),
  KEY `FKganiyk614e7mxu4hpbdl9rn9g` (`articulo_insumo_id`),
  CONSTRAINT `FK6io5bby5o4rdflsheoa5at7aw` FOREIGN KEY (`categoria_articulo_id`) REFERENCES `categoria_articulo` (`id`),
  CONSTRAINT `FKganiyk614e7mxu4hpbdl9rn9g` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_insumo_categoria_articulo`
--

LOCK TABLES `articulo_insumo_categoria_articulo` WRITE;
/*!40000 ALTER TABLE `articulo_insumo_categoria_articulo` DISABLE KEYS */;
INSERT INTO `articulo_insumo_categoria_articulo` VALUES ('3bfe3686-03f3-4930-a5b1-52c94d953fb3','a0344b9d-3c63-44f0-8574-309b6890aa74'),('31afad53-22a3-40c4-953c-666779cce9d1','a0344b9d-3c63-44f0-8574-309b6890aa74'),('5aaec918-93b4-4309-b814-bcea1d4e352f','a0344b9d-3c63-44f0-8574-309b6890aa74'),('a78721f6-b70c-4a21-944c-093111b1b895','8c5af81a-080d-4129-a015-d90f8e315b07'),('a1c3d3da-e9a4-411c-a725-12cf1172fdb0','7c802044-e8d3-450b-926a-14874feb1281'),('02999885-0e79-4ab4-b6e7-59ef3f1f792a','f236b6ae-efb8-4a1a-90bf-a31b8ae54238'),('02999885-0e79-4ab4-b6e7-59ef3f1f792a','653903fe-d809-44c9-a23d-8d4916af01c8'),('2198bd94-24be-4040-8907-8cd01ca655fd','653903fe-d809-44c9-a23d-8d4916af01c8'),('02acefbc-e004-4fb8-b97a-e4b1f4f94e0e','77bbfd0b-2ff7-49c2-af80-2a3cdb085d45'),('3c1b265a-170b-426e-9f8e-7787211a2d5a','83f04380-8610-4b4f-a058-aed425022398'),('6ff4d074-6486-4a10-9f56-ced2df3c281e','8c5af81a-080d-4129-a015-d90f8e315b07'),('9b0c0691-12fc-439f-88f7-14af1502202a','79541eb3-1086-46e2-a1f7-da1efec03327'),('293cb691-08d8-4e52-9639-ee8e17fab017','8c5af81a-080d-4129-a015-d90f8e315b07'),('3f609da8-07ca-4901-8786-99fb25addd57','8c5af81a-080d-4129-a015-d90f8e315b07'),('ebd76edd-fc59-4ee4-8cd2-8f6af046be96','83f04380-8610-4b4f-a058-aed425022398'),('c1405d41-4bad-4553-8a6f-fd5bb02104bb','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('8a84fdf9-a74c-4d99-abd8-af755507547a','79541eb3-1086-46e2-a1f7-da1efec03327'),('44dd666d-8e23-43ca-8367-81a0988041ab','653903fe-d809-44c9-a23d-8d4916af01c8'),('f2d6f5dc-92b7-4c2b-8233-0966fc6af8cb','653903fe-d809-44c9-a23d-8d4916af01c8'),('03524b2d-105c-4b86-8b19-0bd879188933','8c5af81a-080d-4129-a015-d90f8e315b07'),('8a8b01f9-782b-4e99-a1a7-acea2a3bc7c2','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('c830cd7a-180e-4a67-894e-3c8416eb967e','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('61e26691-7b45-426f-82ed-25319fc5ef03','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('f743ac26-e7b4-4ee4-9376-982e6f12640f','8c5af81a-080d-4129-a015-d90f8e315b07'),('97367d5c-38e5-4149-bfdf-2d9a6b22c266','8c5af81a-080d-4129-a015-d90f8e315b07'),('c162a2ea-072c-4581-8f3e-442446a3f763','8c5af81a-080d-4129-a015-d90f8e315b07'),('19961048-95ba-4631-8218-de79e34db17d','8c5af81a-080d-4129-a015-d90f8e315b07'),('dbd663d2-35c5-4900-ae0f-60a6e52ab579','8c5af81a-080d-4129-a015-d90f8e315b07'),('fe290d61-aa96-45ec-abb6-81f1f8da1130','8c5af81a-080d-4129-a015-d90f8e315b07'),('6b034b28-f937-4b91-9ec4-51f710aef02d','653903fe-d809-44c9-a23d-8d4916af01c8'),('97c2d118-eecc-445c-87b5-5e0ca8b930ab','8c5af81a-080d-4129-a015-d90f8e315b07'),('96b1f5a4-f5e5-4386-af89-250a734f2bb9','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('b83e1fd4-272b-4794-8ab9-b33e4fcd07e4','b23cb17a-8c59-46c7-9fca-7926798cb12b'),('ac6be143-97bc-410c-af57-712fc715c498','79541eb3-1086-46e2-a1f7-da1efec03327'),('3697f7b2-6d34-45ff-81c4-6c7426f3dd4c','a0344b9d-3c63-44f0-8574-309b6890aa74'),('71b0bba9-3bd2-4758-8cfc-a6ba5aa6af26','8c5af81a-080d-4129-a015-d90f8e315b07'),('5d89f092-c184-43bb-875c-9cc8daf9c02c','a0344b9d-3c63-44f0-8574-309b6890aa74'),('a099b84c-4cd6-4994-b228-2a38e16d176b','8c5af81a-080d-4129-a015-d90f8e315b07'),('b09995cc-01cc-4ddd-bb6f-fbeb63b5dd2d','653903fe-d809-44c9-a23d-8d4916af01c8'),('210e058c-59b2-476b-b950-2e3de6ed0009','8c5af81a-080d-4129-a015-d90f8e315b07'),('7713cb59-43a4-4d7d-ab0c-fbb9f2fb11f9','653903fe-d809-44c9-a23d-8d4916af01c8'),('89b7e2a5-97cb-473c-9ec6-cdfb3d88b8b6','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('a9d3ca7b-50e9-42c0-9f85-7344de625f80','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('3cbe2fe4-4e0d-4d05-b971-b13571499e8b','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('4026f5fb-cad8-4fac-a440-1c1d70478e22','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('73a8fe6b-2c90-40f0-9ba2-fe7f259f66af','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('efbccfbe-dabc-4a87-ad40-f8b750b8acd9','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('61ceb294-fe0c-44c7-86e2-d2071d456d3b','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('af523105-ef1f-4df9-a812-ea69d70018f8','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('5d288218-1670-4390-9fb8-d75c8ce547af','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('a1c3ce9f-8bda-4b3b-8a8a-b3857551763e','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('1111515d-7d41-4fa9-a1d4-0ae44da1505f','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('9d86e367-56e8-4d14-b625-f92e2d8837f9','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('76e07d77-e03b-47e6-9829-ec8c19047dfd','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('6adfa272-bb97-4813-927a-8752721eadf1','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('4cb8e22c-4942-4f35-ae46-712575f408e4','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('70e53ad9-f143-4114-a549-d2a9f6b8cd1b','a0344b9d-3c63-44f0-8574-309b6890aa74');
/*!40000 ALTER TABLE `articulo_insumo_categoria_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_insumo_path_imagen`
--

DROP TABLE IF EXISTS `articulo_insumo_path_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo_insumo_path_imagen` (
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path_imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `FKnj53624tbswcdbwuovhx067q7` (`articulo_insumo_id`),
  CONSTRAINT `FKnj53624tbswcdbwuovhx067q7` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_insumo_path_imagen`
--

LOCK TABLES `articulo_insumo_path_imagen` WRITE;
/*!40000 ALTER TABLE `articulo_insumo_path_imagen` DISABLE KEYS */;
INSERT INTO `articulo_insumo_path_imagen` VALUES ('89b7e2a5-97cb-473c-9ec6-cdfb3d88b8b6','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/f58a9aaf-6d13-4735-ba6f-9b4e6c1801d6.png'),('a9d3ca7b-50e9-42c0-9f85-7344de625f80','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/b826398a-b2f9-4a04-8ace-18c7d85d3622.png'),('3cbe2fe4-4e0d-4d05-b971-b13571499e8b','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/08ca8db7-153b-4ca0-9953-a881fdfa4220.png'),('4026f5fb-cad8-4fac-a440-1c1d70478e22','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/95ce6927-3cfd-4306-a63c-baa54a7315da.png'),('73a8fe6b-2c90-40f0-9ba2-fe7f259f66af','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/a85b2afa-7ce5-487f-ba4a-90166bb8b93a.png'),('efbccfbe-dabc-4a87-ad40-f8b750b8acd9','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/5e701171-a037-40bf-be85-243e1cfd1259.png'),('61ceb294-fe0c-44c7-86e2-d2071d456d3b','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/178079ff-7ec3-4f7b-8bdd-87cca83db7cc.png'),('af523105-ef1f-4df9-a812-ea69d70018f8','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/67f6da45-eb7e-4e69-b581-10406051f99f.png'),('5d288218-1670-4390-9fb8-d75c8ce547af','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/a286feb9-1ca3-479e-a6dc-0aaf1d6b0025.png'),('a1c3ce9f-8bda-4b3b-8a8a-b3857551763e','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/e4fce83b-2bfc-4b90-89aa-16046ce1f596.png'),('1111515d-7d41-4fa9-a1d4-0ae44da1505f','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/c88c3be3-b076-4b1c-b122-1e89f184041a.png'),('9d86e367-56e8-4d14-b625-f92e2d8837f9','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/08e1e770-11f0-401b-b359-656d6ba1bdd1.png'),('76e07d77-e03b-47e6-9829-ec8c19047dfd','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/0c85cedc-cafc-4dbb-9d73-f9fb39c63e9c.png'),('6adfa272-bb97-4813-927a-8752721eadf1','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/a134d825-f1ae-4ba1-83b0-e9a861811531.png'),('4cb8e22c-4942-4f35-ae46-712575f408e4','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/5a19f4da-a4e7-43cc-abe2-af9496b84d01.png');
/*!40000 ALTER TABLE `articulo_insumo_path_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_manufacturado`
--

DROP TABLE IF EXISTS `articulo_manufacturado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_manufacturado`
--

LOCK TABLES `articulo_manufacturado` WRITE;
/*!40000 ALTER TABLE `articulo_manufacturado` DISABLE KEYS */;
INSERT INTO `articulo_manufacturado` VALUES ('02f57816-81fe-4004-8a28-f3317879932d','2026-01-07 13:51:52.087346',NULL,'2026-01-07 13:51:52.087346','Hamburguesa simple','2 panes, paty, queso, tomate, lechuga, huevo',5000,8000,15,'9af27905-c3fc-4dae-864e-ce8013c6f65b'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','2026-01-07 13:58:44.402832',NULL,'2026-01-07 13:58:44.402832','Hamburguesa panceta + cheddar','2 panes, paty, queso, panceta, tomate, lechuga, huevo, cheddar',8000,17000,15,'9af27905-c3fc-4dae-864e-ce8013c6f65b'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','2026-01-07 13:42:20.950632',NULL,'2026-01-07 13:42:20.950632','Hamburguesa panceta ','2 panes, paty, queso, panceta, tomate, lechuga, huevo',9000,16000,20,'9af27905-c3fc-4dae-864e-ce8013c6f65b'),('3d2c200e-344e-4d1a-ba41-3eb856ceb6da','2026-01-07 13:25:10.077363',NULL,'2026-01-07 13:25:10.077363','Pizza común','salsa tomate, queso cremoso',4000,6000,15,'31f58c6a-d415-4c3b-85af-b2d2c24d9787'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','2026-01-07 13:45:09.428584',NULL,'2026-01-07 13:45:09.428584','Hamburguesa doble ','3 panes, 2 paty, queso, tomate, lechuga, huevo',10000,15000,15,'9af27905-c3fc-4dae-864e-ce8013c6f65b'),('8dc4e285-c468-414d-96e1-b1d7aeafd317','2026-01-07 13:30:24.413818',NULL,'2026-01-07 13:30:24.413818','Papas Huevo ','200g papas + huevo',1000,1600,15,'3b0e93e2-4155-4be9-86e6-d2aa9294ff74'),('8f34f9e7-d1bf-486d-ad07-6006f40dd8a2','2026-01-07 13:48:28.091321',NULL,'2026-01-07 13:48:28.091321','Pancho simple','pan, salchicha, aderezos',700,1500,10,'677aabdf-4dbd-4da6-81f0-5262df1a9673'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','2026-01-07 14:01:13.194513',NULL,'2026-01-07 14:01:13.194513','Pizza cherry','queso, tomates cherry, huevo',9000,12000,20,'31f58c6a-d415-4c3b-85af-b2d2c24d9787'),('a1fd2618-8585-406f-9624-782992a10b0d','2026-01-07 13:19:18.380833',NULL,'2026-01-07 13:48:44.204927','Pancho doble','pan, 2 salchichas, aderezos',1200,2000,10,'677aabdf-4dbd-4da6-81f0-5262df1a9673'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','2026-01-07 13:27:37.910567',NULL,'2026-01-07 13:27:37.910567','Pizza jamón y rucula','salsa tomate, queso cremoso, jamon crudo rucula',8000,13000,15,'31f58c6a-d415-4c3b-85af-b2d2c24d9787'),('cd150b43-9149-4d61-a3e0-6f0499fadaa8','2026-01-07 13:22:11.585608',NULL,'2026-01-07 13:28:19.997816','Papas','simple 200g papas',600,1500,10,'3b0e93e2-4155-4be9-86e6-d2aa9294ff74'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','2026-01-07 13:54:42.358710',NULL,'2026-01-07 13:54:42.358710','Papas Panceta + cheddar + huevo','200g papas + Panceta + cheddar + huevo',1600,2600,15,'3b0e93e2-4155-4be9-86e6-d2aa9294ff74'),('dfc0ee82-ab15-407d-a7db-4cfd4d4089e0','2026-01-07 13:38:20.720746',NULL,'2026-01-07 13:38:20.720746','Papas doble ','400g papas',1100,2000,15,'3b0e93e2-4155-4be9-86e6-d2aa9294ff74'),('e88b3b53-b863-41db-bcf5-60f59f2640bd','2026-01-07 13:53:16.211833',NULL,'2026-01-07 13:53:16.211833','Pancho cheddar','pan, salchicha, aderezos, cheddar',1000,2000,10,'677aabdf-4dbd-4da6-81f0-5262df1a9673'),('f5f6858b-76eb-4fe0-bdea-868bd917d814','2026-01-07 13:59:47.978970',NULL,'2026-01-07 13:59:47.978970','Papas cheddar','200g papas + cheddar',13000,2000,15,'3b0e93e2-4155-4be9-86e6-d2aa9294ff74');
/*!40000 ALTER TABLE `articulo_manufacturado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_manufacturado_articulo_manufacturado_detalle`
--

DROP TABLE IF EXISTS `articulo_manufacturado_articulo_manufacturado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo_manufacturado_articulo_manufacturado_detalle` (
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_manufacturado_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UKdxo786rso3747iv76lgh6tli5` (`articulo_manufacturado_detalle_id`),
  KEY `FK61fc30j5c4i71vi5gti2j2ru0` (`articulo_manufacturado_id`),
  CONSTRAINT `FK61fc30j5c4i71vi5gti2j2ru0` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  CONSTRAINT `FKlfpy1xlxn6v13p328etifjhwg` FOREIGN KEY (`articulo_manufacturado_detalle_id`) REFERENCES `articulo_manufacturado_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_manufacturado_articulo_manufacturado_detalle`
--

LOCK TABLES `articulo_manufacturado_articulo_manufacturado_detalle` WRITE;
/*!40000 ALTER TABLE `articulo_manufacturado_articulo_manufacturado_detalle` DISABLE KEYS */;
INSERT INTO `articulo_manufacturado_articulo_manufacturado_detalle` VALUES ('02f57816-81fe-4004-8a28-f3317879932d','125f9329-e2da-4944-8d40-8f26db0b5151'),('02f57816-81fe-4004-8a28-f3317879932d','2be8e0f9-b87a-47fd-a73f-dcf49bd30495'),('02f57816-81fe-4004-8a28-f3317879932d','788feb0a-60b2-4eb9-b548-3ac92c6e398b'),('02f57816-81fe-4004-8a28-f3317879932d','832511e5-c13a-408f-8f69-2596e5f4e79b'),('02f57816-81fe-4004-8a28-f3317879932d','fa08ac86-0941-463b-a9b1-9da65774cb8c'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','03c732a2-5093-41f8-b677-b7d8bc41479f'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','141b6386-38aa-4075-ad23-428e6d59d7e8'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','3b6ba4fe-99cf-4f48-829d-db32df102f37'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','569260cb-2557-4c36-8797-6e94d71d969a'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','941104d6-c6e3-495c-b4c3-6407f4dd1539'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','94436057-f94e-4727-b423-efa6f432f975'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','acb21a44-7077-4818-bacc-a08b8c23f53f'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','095945cb-12e8-4283-8ffb-40f465c5671a'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','302e43af-8525-44df-9dde-b3d21c8bb7ce'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','51414442-b340-4f2a-bdf1-f420470a9778'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','7b785169-6f2d-4065-871a-74777adb482d'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','87111d4d-6b72-44fc-b3ff-ac640345250a'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','a2f66d7b-f5ee-4926-9969-1b9d2ec120aa'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','ebf7bb72-5bee-4112-bb21-b3aa0f323172'),('3d2c200e-344e-4d1a-ba41-3eb856ceb6da','0405d0e3-d280-4717-8292-8207f2b2b941'),('3d2c200e-344e-4d1a-ba41-3eb856ceb6da','41148c31-0619-4c37-9013-1c1a84840c1e'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('8dc4e285-c468-414d-96e1-b1d7aeafd317','6735cb66-e946-46b1-b134-5a0fe6c122dc'),('8dc4e285-c468-414d-96e1-b1d7aeafd317','9c4c2267-6b0b-4e28-adf8-bfed0ff7319b'),('8f34f9e7-d1bf-486d-ad07-6006f40dd8a2','477f1d47-1ee5-46a8-849c-9c33505ac64d'),('8f34f9e7-d1bf-486d-ad07-6006f40dd8a2','c3545c04-66db-4cf2-8638-6efcbcad2fd6'),('8f34f9e7-d1bf-486d-ad07-6006f40dd8a2','f44d808f-601b-457f-958f-2c3775c9a107'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','76dac1e5-b853-484a-be0d-dc59723ca94b'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','a8543cd1-cf8d-42c0-8cc0-e65c76b82b73'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','ead64a39-10e8-4b9a-afd1-1a4cd73c0756'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','f22a3a9c-cd29-44d4-9a05-2b69ae5b517f'),('a1fd2618-8585-406f-9624-782992a10b0d','3eceeb41-5882-4e2d-a3ad-2a567a6074f4'),('a1fd2618-8585-406f-9624-782992a10b0d','c1ef397b-903a-4eda-a225-65df94a36ec0'),('a1fd2618-8585-406f-9624-782992a10b0d','c304d26d-fbe4-47b1-bb3d-be7db771100f'),('a1fd2618-8585-406f-9624-782992a10b0d','e31b1f57-b408-4282-8fe5-6e145113a34a'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','45172a53-b88f-4615-a642-3a99754828af'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','665db5ee-6091-4ed3-873f-0c44342dc099'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','6742dae1-38ab-44d2-95c7-3394df66f338'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','d8d22d9b-62d7-4453-be44-90e7bf97b181'),('cd150b43-9149-4d61-a3e0-6f0499fadaa8','073489ff-5598-4562-9abf-6929b016eb6d'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','21ea4b3e-f8b6-4c7e-a5a8-e130dda7161c'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','906311f9-8ffd-4514-a06d-776aeaad467f'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','a5f70b33-5012-4b47-9bcd-374e7a03d91b'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','d64a2d07-f73b-4d54-823f-6fae5feafbb2'),('dfc0ee82-ab15-407d-a7db-4cfd4d4089e0','224078de-beb4-4108-974c-57d0d68efcc1'),('e88b3b53-b863-41db-bcf5-60f59f2640bd','3f8c9b16-363d-476c-ba57-a8e5846523e2'),('e88b3b53-b863-41db-bcf5-60f59f2640bd','8359237e-780a-477d-98e3-27a48f0a9173'),('e88b3b53-b863-41db-bcf5-60f59f2640bd','83beb223-3c7f-4ff3-a9e9-b08d1914078d'),('f5f6858b-76eb-4fe0-bdea-868bd917d814','e83994a6-f465-47ee-99c2-a25f070413a1'),('f5f6858b-76eb-4fe0-bdea-868bd917d814','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac');
/*!40000 ALTER TABLE `articulo_manufacturado_articulo_manufacturado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_manufacturado_detalle`
--

DROP TABLE IF EXISTS `articulo_manufacturado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_manufacturado_detalle`
--

LOCK TABLES `articulo_manufacturado_detalle` WRITE;
/*!40000 ALTER TABLE `articulo_manufacturado_detalle` DISABLE KEYS */;
INSERT INTO `articulo_manufacturado_detalle` VALUES ('03c732a2-5093-41f8-b677-b7d8bc41479f','2026-01-07 13:58:44.404116',NULL,'2026-01-07 13:58:44.404116',2,'3bfe3686-03f3-4930-a5b1-52c94d953fb3'),('0405d0e3-d280-4717-8292-8207f2b2b941','2026-01-07 13:25:10.077914',NULL,'2026-01-07 13:25:10.077914',1,'70e53ad9-f143-4114-a549-d2a9f6b8cd1b'),('073489ff-5598-4562-9abf-6929b016eb6d','2026-01-07 13:22:11.586009',NULL,'2026-01-07 13:22:11.586009',0.2,'a78721f6-b70c-4a21-944c-093111b1b895'),('095945cb-12e8-4283-8ffb-40f465c5671a','2026-01-07 13:42:20.951797',NULL,'2026-01-07 13:42:20.951797',0.01,'b09995cc-01cc-4ddd-bb6f-fbeb63b5dd2d'),('125f9329-e2da-4944-8d40-8f26db0b5151','2026-01-07 13:51:52.088149',NULL,'2026-01-07 13:51:52.088149',1,'3bfe3686-03f3-4930-a5b1-52c94d953fb3'),('141b6386-38aa-4075-ad23-428e6d59d7e8','2026-01-07 13:58:44.410549',NULL,'2026-01-07 13:58:44.410549',0.002,'a099b84c-4cd6-4994-b228-2a38e16d176b'),('19621fd0-1ee4-4aaa-9728-762db4ca2ede','2026-01-07 13:45:09.431742',NULL,'2026-01-07 13:45:09.431742',0.001,'fe290d61-aa96-45ec-abb6-81f1f8da1130'),('21ea4b3e-f8b6-4c7e-a5a8-e130dda7161c','2026-01-07 13:54:42.359036',NULL,'2026-01-07 13:54:42.359036',0.2,'a78721f6-b70c-4a21-944c-093111b1b895'),('224078de-beb4-4108-974c-57d0d68efcc1','2026-01-07 13:38:20.721280',NULL,'2026-01-07 13:38:20.721280',0.4,'a78721f6-b70c-4a21-944c-093111b1b895'),('244a8d91-fe1d-47a5-9bed-64d3c5ab3626','2026-01-07 13:45:09.432067',NULL,'2026-01-07 13:45:09.432067',1,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('2be8e0f9-b87a-47fd-a73f-dcf49bd30495','2026-01-07 13:51:52.087727',NULL,'2026-01-07 13:51:52.087727',1,'02999885-0e79-4ab4-b6e7-59ef3f1f792a'),('302e43af-8525-44df-9dde-b3d21c8bb7ce','2026-01-07 13:42:20.952245',NULL,'2026-01-07 13:42:20.952245',1,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('3b6ba4fe-99cf-4f48-829d-db32df102f37','2026-01-07 13:58:44.410713',NULL,'2026-01-07 13:58:44.410713',0.002,'fe290d61-aa96-45ec-abb6-81f1f8da1130'),('3cbb113b-fd41-44d0-ad4c-ba6c27155cb0','2026-01-07 13:45:09.429647',NULL,'2026-01-07 13:45:09.429647',2,'02999885-0e79-4ab4-b6e7-59ef3f1f792a'),('3eceeb41-5882-4e2d-a3ad-2a567a6074f4','2026-01-07 13:19:18.387332',NULL,'2026-01-07 13:19:18.387332',1,'5aaec918-93b4-4309-b814-bcea1d4e352f'),('3f8c9b16-363d-476c-ba57-a8e5846523e2','2026-01-07 13:53:16.212598',NULL,'2026-01-07 13:53:16.212598',1,'a1c3d3da-e9a4-411c-a725-12cf1172fdb0'),('41148c31-0619-4c37-9013-1c1a84840c1e','2026-01-07 13:25:10.078681',NULL,'2026-01-07 13:25:10.078681',0.25,'9b0c0691-12fc-439f-88f7-14af1502202a'),('45172a53-b88f-4615-a642-3a99754828af','2026-01-07 13:27:37.915958',NULL,'2026-01-07 13:27:37.915958',0.05,'7713cb59-43a4-4d7d-ab0c-fbb9f2fb11f9'),('477f1d47-1ee5-46a8-849c-9c33505ac64d','2026-01-07 13:48:28.092219',NULL,'2026-01-07 13:48:28.092219',1,'a1c3d3da-e9a4-411c-a725-12cf1172fdb0'),('51414442-b340-4f2a-bdf1-f420470a9778','2026-01-07 13:42:20.951470',NULL,'2026-01-07 13:42:20.951470',1,'02999885-0e79-4ab4-b6e7-59ef3f1f792a'),('569260cb-2557-4c36-8797-6e94d71d969a','2026-01-07 13:58:44.410080',NULL,'2026-01-07 13:58:44.410080',1,'02999885-0e79-4ab4-b6e7-59ef3f1f792a'),('665db5ee-6091-4ed3-873f-0c44342dc099','2026-01-07 13:27:37.915744',NULL,'2026-01-07 13:27:37.915744',0.25,'9b0c0691-12fc-439f-88f7-14af1502202a'),('6735cb66-e946-46b1-b134-5a0fe6c122dc','2026-01-07 13:30:24.414294',NULL,'2026-01-07 13:30:24.414294',2,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('6742dae1-38ab-44d2-95c7-3394df66f338','2026-01-07 13:27:37.913500',NULL,'2026-01-07 13:27:37.913500',1,'70e53ad9-f143-4114-a549-d2a9f6b8cd1b'),('716fea69-8eeb-436a-915c-8718d5a8fc86','2026-01-07 13:19:18.415680',NULL,'2026-01-07 13:19:18.415680',1,'a1c3d3da-e9a4-411c-a725-12cf1172fdb0'),('76dac1e5-b853-484a-be0d-dc59723ca94b','2026-01-07 14:01:13.195236',NULL,'2026-01-07 14:01:13.195236',0.2,'9b0c0691-12fc-439f-88f7-14af1502202a'),('788feb0a-60b2-4eb9-b548-3ac92c6e398b','2026-01-07 13:51:52.088713',NULL,'2026-01-07 13:51:52.088713',0.001,'a099b84c-4cd6-4994-b228-2a38e16d176b'),('7b785169-6f2d-4065-871a-74777adb482d','2026-01-07 13:42:20.951268',NULL,'2026-01-07 13:42:20.951268',2,'3bfe3686-03f3-4930-a5b1-52c94d953fb3'),('832511e5-c13a-408f-8f69-2596e5f4e79b','2026-01-07 13:51:52.088458',NULL,'2026-01-07 13:51:52.088458',0.001,'8a84fdf9-a74c-4d99-abd8-af755507547a'),('8359237e-780a-477d-98e3-27a48f0a9173','2026-01-07 13:53:16.213856',NULL,'2026-01-07 13:53:16.213856',0.001,'ac6be143-97bc-410c-af57-712fc715c498'),('83beb223-3c7f-4ff3-a9e9-b08d1914078d','2026-01-07 13:53:16.213579',NULL,'2026-01-07 13:53:16.213579',1,'5aaec918-93b4-4309-b814-bcea1d4e352f'),('87111d4d-6b72-44fc-b3ff-ac640345250a','2026-01-07 13:42:20.952127',NULL,'2026-01-07 13:42:20.952127',0.01,'fe290d61-aa96-45ec-abb6-81f1f8da1130'),('906311f9-8ffd-4514-a06d-776aeaad467f','2026-01-07 13:54:42.359272',NULL,'2026-01-07 13:54:42.359272',0.02,'ac6be143-97bc-410c-af57-712fc715c498'),('941104d6-c6e3-495c-b4c3-6407f4dd1539','2026-01-07 13:58:44.410379',NULL,'2026-01-07 13:58:44.410379',0.002,'ac6be143-97bc-410c-af57-712fc715c498'),('94436057-f94e-4727-b423-efa6f432f975','2026-01-07 13:58:44.411177',NULL,'2026-01-07 13:58:44.411177',1,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('9c4c2267-6b0b-4e28-adf8-bfed0ff7319b','2026-01-07 13:30:24.414139',NULL,'2026-01-07 13:30:24.414139',0.2,'a78721f6-b70c-4a21-944c-093111b1b895'),('a2f66d7b-f5ee-4926-9969-1b9d2ec120aa','2026-01-07 13:42:20.951634',NULL,'2026-01-07 13:42:20.951634',0.01,'8a84fdf9-a74c-4d99-abd8-af755507547a'),('a5f70b33-5012-4b47-9bcd-374e7a03d91b','2026-01-07 13:54:42.359682',NULL,'2026-01-07 13:54:42.359682',2,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('a77e0408-d5ef-4a33-b19f-bbcd11b65ca2','2026-01-07 13:45:09.429198',NULL,'2026-01-07 13:45:09.429198',3,'3bfe3686-03f3-4930-a5b1-52c94d953fb3'),('a8543cd1-cf8d-42c0-8cc0-e65c76b82b73','2026-01-07 14:01:13.195403',NULL,'2026-01-07 14:01:13.195403',1,'02acefbc-e004-4fb8-b97a-e4b1f4f94e0e'),('acb21a44-7077-4818-bacc-a08b8c23f53f','2026-01-07 13:58:44.410979',NULL,'2026-01-07 13:58:44.410979',0.002,'b09995cc-01cc-4ddd-bb6f-fbeb63b5dd2d'),('c1ef397b-903a-4eda-a225-65df94a36ec0','2026-01-07 13:19:18.416096',NULL,'2026-01-07 13:19:18.416096',0.02,'c1405d41-4bad-4553-8a6f-fd5bb02104bb'),('c304d26d-fbe4-47b1-bb3d-be7db771100f','2026-01-07 13:19:18.416398',NULL,'2026-01-07 13:19:18.416398',0.02,'96b1f5a4-f5e5-4386-af89-250a734f2bb9'),('c3545c04-66db-4cf2-8638-6efcbcad2fd6','2026-01-07 13:48:28.092445',NULL,'2026-01-07 13:48:28.092445',0.001,'c1405d41-4bad-4553-8a6f-fd5bb02104bb'),('d64a2d07-f73b-4d54-823f-6fae5feafbb2','2026-01-07 13:54:42.359478',NULL,'2026-01-07 13:54:42.359478',0.02,'b09995cc-01cc-4ddd-bb6f-fbeb63b5dd2d'),('d766ea78-dc52-4ca2-b7e0-e17f9ff67a54','2026-01-07 13:45:09.430459',NULL,'2026-01-07 13:45:09.430459',0.01,'8a84fdf9-a74c-4d99-abd8-af755507547a'),('d8d22d9b-62d7-4453-be44-90e7bf97b181','2026-01-07 13:27:37.915468',NULL,'2026-01-07 13:27:37.915468',0.01,'c162a2ea-072c-4581-8f3e-442446a3f763'),('e31b1f57-b408-4282-8fe5-6e145113a34a','2026-01-07 13:47:14.050218',NULL,'2026-01-07 13:47:14.050218',2,'a1c3d3da-e9a4-411c-a725-12cf1172fdb0'),('e83994a6-f465-47ee-99c2-a25f070413a1','2026-01-07 13:59:47.979520',NULL,'2026-01-07 13:59:47.979520',0.02,'ac6be143-97bc-410c-af57-712fc715c498'),('ead64a39-10e8-4b9a-afd1-1a4cd73c0756','2026-01-07 14:01:13.195070',NULL,'2026-01-07 14:01:13.195070',0.01,'3f609da8-07ca-4901-8786-99fb25addd57'),('eb9bec53-6cc3-4e45-ad22-ab95ac4922ac','2026-01-07 13:59:47.979335',NULL,'2026-01-07 13:59:47.979335',0.2,'a78721f6-b70c-4a21-944c-093111b1b895'),('ebf7bb72-5bee-4112-bb21-b3aa0f323172','2026-01-07 13:42:20.951998',NULL,'2026-01-07 13:42:20.951998',0.01,'a099b84c-4cd6-4994-b228-2a38e16d176b'),('ec8db72e-a57e-4bf7-b7a7-c38694e85734','2026-01-07 13:45:09.431338',NULL,'2026-01-07 13:45:09.431338',0.001,'a099b84c-4cd6-4994-b228-2a38e16d176b'),('f22a3a9c-cd29-44d4-9a05-2b69ae5b517f','2026-01-07 14:01:13.194885',NULL,'2026-01-07 14:01:13.194885',1,'70e53ad9-f143-4114-a549-d2a9f6b8cd1b'),('f44d808f-601b-457f-958f-2c3775c9a107','2026-01-07 13:48:28.091918',NULL,'2026-01-07 13:48:28.091918',1,'5aaec918-93b4-4309-b814-bcea1d4e352f'),('fa08ac86-0941-463b-a9b1-9da65774cb8c','2026-01-07 13:51:52.089033',NULL,'2026-01-07 13:51:52.089033',0.001,'fe290d61-aa96-45ec-abb6-81f1f8da1130');
/*!40000 ALTER TABLE `articulo_manufacturado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_manufacturado_path_imagen`
--

DROP TABLE IF EXISTS `articulo_manufacturado_path_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo_manufacturado_path_imagen` (
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `path_imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `FKcrc67w2o53grwy6m90ueg83q6` (`articulo_manufacturado_id`),
  CONSTRAINT `FKcrc67w2o53grwy6m90ueg83q6` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_manufacturado_path_imagen`
--

LOCK TABLES `articulo_manufacturado_path_imagen` WRITE;
/*!40000 ALTER TABLE `articulo_manufacturado_path_imagen` DISABLE KEYS */;
INSERT INTO `articulo_manufacturado_path_imagen` VALUES ('3d2c200e-344e-4d1a-ba41-3eb856ceb6da','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/539be071-38cd-4c2e-a5e9-b4a3cff842e6.png'),('b5f091d0-81f2-40d1-a829-9a4fd2ac3793','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/6859b18e-cf6a-43ae-91c6-0203c2bc287b.png'),('cd150b43-9149-4d61-a3e0-6f0499fadaa8','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/ea1e1fca-9b62-4718-a715-eb07089d5c31.png'),('8dc4e285-c468-414d-96e1-b1d7aeafd317','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/f91c4b51-ce04-4065-8b27-5a31ea483ceb.png'),('dfc0ee82-ab15-407d-a7db-4cfd4d4089e0','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/3cf21b81-de0a-4249-873c-ac310cfb55ae.png'),('2863d9ce-b70d-4cab-b87a-9810eadd2c3a','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/81f901d7-4682-45e4-bdaf-d6abfc999e14.png'),('4c73f75a-81cb-433b-a4b3-5f17b000ea89','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/ee8bae1f-87c6-4fae-b421-ffed0c428d98.png'),('8f34f9e7-d1bf-486d-ad07-6006f40dd8a2','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/37feae00-847e-46d3-87d6-b4020bdd92ab.png'),('a1fd2618-8585-406f-9624-782992a10b0d','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/0273cba4-43f9-44f6-89f6-e0f59b9c67af.png'),('02f57816-81fe-4004-8a28-f3317879932d','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/3bc67aaa-e625-4cf1-b8d5-0f972433f844.png'),('e88b3b53-b863-41db-bcf5-60f59f2640bd','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/9ffcfac1-862f-4a0a-b728-07ce71ab70ce.png'),('d0f79809-ea66-44e3-a50f-07b8a1782d3e','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/3b50c039-f144-4aa0-9d66-86faecc878e4.png'),('16a157e1-4225-4c3f-bf1e-c03034f8285d','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/2b833ca2-d90c-4dd9-bb89-171aa5a303f2.png'),('f5f6858b-76eb-4fe0-bdea-868bd917d814','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/bf6ea179-fdf2-4520-9300-3065df82dee1.png'),('9a74132c-d6b4-4957-b7a2-a17722bbe435','/home/enzo/Documentos/Facu/BuenSaborBack/Documentos/Labo4/archivos/e9e4b0bc-6a2b-4574-9254-3292851e56f9.png');
/*!40000 ALTER TABLE `articulo_manufacturado_path_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_articulo`
--

DROP TABLE IF EXISTS `categoria_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_articulo`
--

LOCK TABLES `categoria_articulo` WRITE;
/*!40000 ALTER TABLE `categoria_articulo` DISABLE KEYS */;
INSERT INTO `categoria_articulo` VALUES ('653903fe-d809-44c9-a23d-8d4916af01c8','2026-01-02 17:43:02.235970',NULL,'2026-01-02 17:43:02.235970','Carnes',NULL),('77bbfd0b-2ff7-49c2-af80-2a3cdb085d45','2026-01-02 17:47:55.515253',NULL,'2026-01-02 17:47:55.515253','Huevos',NULL),('79541eb3-1086-46e2-a1f7-da1efec03327','2026-01-02 17:48:02.348872',NULL,'2026-01-02 17:48:02.348872','Lacteos',NULL),('7c802044-e8d3-450b-926a-14874feb1281','2026-01-02 17:30:42.852331',NULL,'2026-01-02 17:30:42.852331','panchos',NULL),('83f04380-8610-4b4f-a058-aed425022398','2026-01-02 17:53:07.712662',NULL,'2026-01-02 17:53:07.712662','Harinas',NULL),('8c5af81a-080d-4129-a015-d90f8e315b07','2026-01-02 17:11:47.596300',NULL,'2026-01-02 17:11:47.596300','verduras',NULL),('9ede7714-7d04-4f7a-8e88-e60f329b1045','2026-01-03 10:33:58.709215',NULL,'2026-01-03 10:33:58.709215','Bebida alcoholica',NULL),('a0344b9d-3c63-44f0-8574-309b6890aa74','2026-01-02 17:07:27.850290',NULL,'2026-01-02 17:07:27.850290','panificados',NULL),('a4012059-4b9d-4f80-80dd-dffc000dfbf3','2026-01-03 09:50:20.201256',NULL,'2026-01-03 09:50:20.201256','Bebida Sin alcohol',NULL),('b23cb17a-8c59-46c7-9fca-7926798cb12b','2026-01-02 17:58:27.100160',NULL,'2026-01-02 17:58:27.100160','aderezos',NULL),('f236b6ae-efb8-4a1a-90bf-a31b8ae54238','2026-01-02 17:43:20.169714',NULL,'2026-01-02 17:43:20.169714','Hamburguesa','653903fe-d809-44c9-a23d-8d4916af01c8');
/*!40000 ALTER TABLE `categoria_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_articulo_manufacturado`
--

DROP TABLE IF EXISTS `categoria_articulo_manufacturado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_articulo_manufacturado` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_articulo_manufacturado`
--

LOCK TABLES `categoria_articulo_manufacturado` WRITE;
/*!40000 ALTER TABLE `categoria_articulo_manufacturado` DISABLE KEYS */;
INSERT INTO `categoria_articulo_manufacturado` VALUES ('31f58c6a-d415-4c3b-85af-b2d2c24d9787','2026-01-07 13:22:48.262685',NULL,'2026-01-07 13:22:48.262685','pizza'),('3b0e93e2-4155-4be9-86e6-d2aa9294ff74','2026-01-07 13:21:49.837970',NULL,'2026-01-07 13:21:49.837970','Papas'),('677aabdf-4dbd-4da6-81f0-5262df1a9673','2026-01-07 13:14:13.068715',NULL,'2026-01-07 13:14:13.068715','panchos'),('9af27905-c3fc-4dae-864e-ce8013c6f65b','2026-01-07 13:39:03.535406',NULL,'2026-01-07 13:39:03.535406','Hamburguesa');
/*!40000 ALTER TABLE `categoria_articulo_manufacturado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('00ed5cad-c460-4636-a6c1-a1d6ce4279dd','2025-12-12 01:02:53.821474',NULL,'2025-12-12 01:02:53.821474','Martin','educacion@followlsn.com','Enzo','02348055','f0824c66-a55c-4207-8f2f-e6da46987a87','46452051-ca1e-4ebd-946f-692f2372d435'),('07812a96-eb4e-4d98-bc19-42715ea13568','2025-12-12 01:01:38.911125',NULL,'2025-12-12 01:01:38.911125','Lopez','enzo.martin@alumnos.frm.utn.edu.ar','Juan','2533','93b91c81-d53b-4ccb-a02a-15f2e2cb8b13','4600c204-bcfc-4f4e-af4b-cb71fe10c1df'),('2ad25ed3-6e1f-49f4-95df-9bebf743c56b','2025-12-12 01:23:17.200504',NULL,'2025-12-12 01:23:17.200504','Castro','enzo@gmail.com','Enzo','235324','96547c9f-cb68-40a4-a7db-57e325fce135','0057a95a-ee75-49b5-a4b2-c85cbd62354b'),('379b1c7e-747c-4036-8934-1d640f84efe6','2025-12-17 00:50:59.037178',NULL,'2025-12-17 00:50:59.037178','Garcia','ariel@garcia.com','Ariel','53342232','8fd3213b-49c6-41ac-baa6-093bac3f5f4b','bf4c493f-a15c-464b-b4fc-30a7bfec16e0'),('3d691cd0-a519-4d4e-8475-7f4ec242f9df','2025-12-12 01:24:17.462736',NULL,'2025-12-12 01:24:17.462736','Soto','enzo.martin@alumnos.frm.utn.edu.ar','Jose ','322','9b8e0ec3-5497-4c51-8f03-45c8a54ef412','6841497d-887d-47dd-a22a-9c884fe2bd6f'),('41be96ec-3773-4ab4-bf7b-52fd66f63683','2025-12-17 01:00:30.084549',NULL,'2025-12-17 01:00:30.084549','Pereyra','franco@pereyra.com','Franco','32542341','73e64ad1-7176-480e-ac34-c5c9a0b3d389','7065b5ab-7753-4d96-85c4-f5decddb0a2d'),('4c762728-294b-43c0-b496-fcd0b4d71ea5','2025-12-12 01:06:23.520696',NULL,'2025-12-12 01:06:23.520696','Gonzalez','educacion@followlsn.com','Cristian','432423','3bf2802c-7ff2-4432-a635-fcb47502445e','630766f3-527e-4b9c-9848-9c1b88f3847c'),('51e0eefc-4a60-4bab-a5f6-7031f730259a','2025-12-12 01:11:49.903349',NULL,'2025-12-12 01:11:49.903349','Perez','enzo.martin@alumnos.frm.utn.edu.ar','Martin','253234','ad207c51-bc30-4a91-b9ef-8ee23430c690','0c43b602-6140-4685-9950-92514da2ad9a'),('66fd01c7-ffd6-4ba4-8a8c-492eec7e9868','2025-12-17 00:55:38.826558',NULL,'2025-12-17 00:55:38.826558','Lopez','mateo@lopez.com','Mateo','454243423','8bb62e2a-2b37-47a0-a6c7-e5eb0226dce3','6f3e30fb-c84c-40da-83fe-f54ef93331d7'),('a9f433eb-3a30-40fc-bf73-99aaf3dd66f3','2025-12-17 00:46:27.503838',NULL,'2025-12-17 00:46:27.503838','Corroza','noelia@corroza.com','Noelia','434645425','d027088c-9cdc-422e-80ce-37f99aaa99e8','e54345a0-bcb4-49b9-9731-6710ba311f1b'),('ad31b4e8-dbe1-4b3a-aafb-7521557b951a','2025-12-17 00:57:38.423953',NULL,'2025-12-17 00:57:38.423953','Guevara','jarib@guevara.com','Jarib','234234112','01172c88-77cc-4e11-b14e-8bbd3d10ecf0','2d4a7122-62f4-47cb-a649-aa573d4740c7'),('bd1d1416-df88-433e-85e3-c0dd8e42884d','2025-12-17 00:37:54.120146',NULL,'2025-12-17 00:37:54.120146','Lopez','m...4@gmail.com','Martin','21425421','f74f8692-38c8-4568-827c-92c4d7114697','fb67131d-5009-4d8d-b8f3-fe77f2eeac64'),('c2c12379-c662-4d17-80f5-27d7e8282281','2025-12-17 01:07:43.476270',NULL,'2025-12-17 01:07:43.476270','Gutierrez','leandro@gutierrez.com','Leandro','23343232','a8ec5c5c-c800-42b9-892a-b5cf8d80888d','6f99c63f-d7d2-4b32-a9bd-52db21592402'),('eb7ae6e8-b315-4b57-9518-82326942aa58','2025-12-17 01:09:06.228980',NULL,'2025-12-17 01:09:06.228980','Lopez','jose@lopez.com','Jose ','32423411','f29202fb-1c8d-4b9d-b421-d5da319e5d8e','53b0aa33-ee18-4aaf-9947-8efa2831239c'),('f978d35e-23b7-438c-9caa-a164dc771e91','2025-12-12 01:13:30.048229',NULL,'2025-12-12 01:13:30.048229','Perez','educacion@followlsn.com','Susana','432423423','33b8e083-7c01-4c09-bb3e-1125cb88af82','61840523-f030-48c0-85a8-bb9ddcb5bb83');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_mercado_pago`
--

DROP TABLE IF EXISTS `datos_mercado_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_mercado_pago`
--

LOCK TABLES `datos_mercado_pago` WRITE;
/*!40000 ALTER TABLE `datos_mercado_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_mercado_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES ('01172c88-77cc-4e11-b14e-8bbd3d10ecf0','2025-12-17 00:57:38.424490',NULL,'2025-12-17 00:57:38.424490','Av San martin',5523,24220,'7ec972e2-c993-461a-b032-70cb7e673bd9'),('33b8e083-7c01-4c09-bb3e-1125cb88af82','2025-12-12 01:13:30.048587',NULL,'2025-12-12 01:13:30.048587','Marcos Flores',23423,3242,'a4201159-7915-45bc-b34a-ef3b88b5de33'),('3bf2802c-7ff2-4432-a635-fcb47502445e','2025-12-12 01:06:23.521323',NULL,'2025-12-12 01:06:23.521323','Marcos Flores',431231,25223,'46d2744d-2ac3-4fdb-90ee-8798f450f425'),('73e64ad1-7176-480e-ac34-c5c9a0b3d389','2025-12-17 01:00:30.084885',NULL,'2025-12-17 01:00:30.084885','av Italia',5544,2342,'9b2b20e9-2bdc-4f56-8138-bda952b9e5ff'),('80e62d5d-86ca-4a92-9f38-3d57db7da1c2','2025-12-11 23:48:40.295628',NULL,'2025-12-11 23:48:40.295628','emilio civit',5580,123121,'21f79ca7-8467-4b83-a2d8-09c68a3374ad'),('8bb62e2a-2b37-47a0-a6c7-e5eb0226dce3','2025-12-17 00:55:38.827298',NULL,'2025-12-17 00:55:38.827298','Venancio Aguliar',5588,3242,'51c37d6c-1550-4239-932e-e2285e5323f8'),('8fd3213b-49c6-41ac-baa6-093bac3f5f4b','2025-12-17 00:50:59.037436',NULL,'2025-12-17 00:50:59.037436','las heras',5580,4321,'acde39d5-a1de-4cca-9b60-e58c5ce1dd4e'),('93b91c81-d53b-4ccb-a02a-15f2e2cb8b13','2025-12-12 01:01:38.920357',NULL,'2025-12-12 01:01:38.920357','Marcos Flores',2341,123,'29f610b8-c8b1-47fa-a7ed-815c144e83be'),('96547c9f-cb68-40a4-a7db-57e325fce135','2025-12-12 01:23:17.200840',NULL,'2025-12-12 01:23:17.200840','Marcos Flores',214234,123,'6b3afd14-789f-428c-9471-62df99d53872'),('9b8e0ec3-5497-4c51-8f03-45c8a54ef412','2025-12-12 01:24:17.463514',NULL,'2025-12-12 01:24:17.463514','Marcos Flores',76534,12345,'c3a248c9-8f06-44db-abe1-ec67572c25ba'),('a8ec5c5c-c800-42b9-892a-b5cf8d80888d','2025-12-17 01:07:43.476592',NULL,'2025-12-17 01:07:43.476592','av italia',5544,25412,'edc6b7fd-b481-4448-8077-9021a034e7ee'),('ad207c51-bc30-4a91-b9ef-8ee23430c690','2025-12-12 01:11:49.903775',NULL,'2025-12-12 01:11:49.903775','Av San martin',432,4532,'8c50e24e-80af-4616-bd77-3a9cc9270132'),('d027088c-9cdc-422e-80ce-37f99aaa99e8','2025-12-17 00:46:27.504486',NULL,'2025-12-17 00:46:27.504486','lavalle',5423,400,'96105d66-258e-4633-a2a0-48b7a298fb04'),('e0d66006-6a8e-429b-aff3-2eaeea45dd59','2025-12-11 23:50:58.945042',NULL,'2025-12-11 23:50:58.945042','emilio civit',5580,122330,'c2089520-f611-44d4-995b-625f5b7bad5c'),('f0824c66-a55c-4207-8f2f-e6da46987a87','2025-12-12 01:02:53.822090',NULL,'2025-12-12 01:02:53.822090','Marcos Flores',2131,1233,'9ee7dfd9-72e6-41c0-a5bc-de3da9424d53'),('f29202fb-1c8d-4b9d-b421-d5da319e5d8e','2025-12-17 01:09:06.229902',NULL,'2025-12-17 01:09:06.229902','Marcos Flores',5567,23412,'372d4a07-254e-4fad-a767-b850b4cdf32e'),('f74f8692-38c8-4568-827c-92c4d7114697','2025-12-17 00:37:54.128075',NULL,'2025-12-17 00:37:54.128075','Marcos Flores',3453,57,'d7b32e7b-df1a-4930-b2d4-f96af4c9bb63');
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('005e6309-4b50-4046-9a16-cdee3bf4dec3','2026-01-02 17:01:16.393379',NULL,'2026-01-02 17:01:16.393379','Pérez','COCINERO','lucas@perez.com','Lucas','5421123','ae65b351-3245-49df-846a-e03d644dcc12'),('1d86458a-3384-4fb5-aae1-52dc31ef38a2','2026-01-02 17:01:58.584559',NULL,'2026-01-02 17:01:58.584559','Pereyra','DELIVERY','franco@pereyra.com','Franco','23543423','201b2e5b-30a0-4318-ac90-5182b5cd2bcd'),('89e3cc8c-ef41-420e-8710-720866076f9a','2026-01-02 17:03:22.281127',NULL,'2026-01-02 17:03:22.281127','Lopez','CAJERO','guada@lopez.com','Guadalupe','256234523','7c0f24a5-1212-454c-8717-bbea6b8de9b9'),('c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','2026-01-02 16:56:58.800848',NULL,'2026-01-02 16:56:58.800848','Lopez','CAJERO','mateo@lopez.com','Mateo','234225432421','74d35639-3145-4d80-8968-93cbdca476f1'),('d8499c8f-57a0-4727-92c5-cf74c209853b','2026-01-02 17:04:51.490145',NULL,'2026-01-02 17:04:51.490145','Ochoa','COCINERO','ema@ochoa.com','Emanuel','2352342','076efbe6-409f-4490-9548-b59b2469d66b');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('757abcef-cb03-4905-ab4b-8d43f37d2132','2025-12-11 23:51:19.310086',NULL,'2025-12-11 23:51:19.310086',245424123,'Buen Sabor','Buen Sabor SA');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_sucursal_empresa`
--

DROP TABLE IF EXISTS `empresa_sucursal_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_sucursal_empresa` (
  `empresa_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sucursal_empresa_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK7y7y2r34fyte32p0m02t3b32y` (`sucursal_empresa_id`),
  KEY `FKgrxti0w79222qym8hq0m8xgnh` (`empresa_id`),
  CONSTRAINT `FKgrxti0w79222qym8hq0m8xgnh` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKou8clo5uodkovlvp0kf5mngni` FOREIGN KEY (`sucursal_empresa_id`) REFERENCES `sucursal_empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_sucursal_empresa`
--

LOCK TABLES `empresa_sucursal_empresa` WRITE;
/*!40000 ALTER TABLE `empresa_sucursal_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_sucursal_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_venta`
--

DROP TABLE IF EXISTS `factura_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_venta`
--

LOCK TABLES `factura_venta` WRITE;
/*!40000 ALTER TABLE `factura_venta` DISABLE KEYS */;
INSERT INTO `factura_venta` VALUES ('0ec74d93-8675-4398-aabb-7f9b358224da','2026-01-07 15:12:35.705070',NULL,'2026-01-07 15:12:35.705070',0.00,'2026-01-07 15:12:35.704636',0,0.00,35,33000.00,33000.00,NULL),('106035e8-797e-4c31-ab63-f8413486366c','2026-01-07 15:08:08.803200',NULL,'2026-01-07 15:08:08.803200',0.00,'2026-01-07 15:08:08.802841',0,0.00,8,9200.00,9200.00,NULL),('193c5571-10a1-415d-81ca-b59b060e66ac','2026-01-07 15:22:55.026665',NULL,'2026-01-07 15:22:55.026665',0.00,'2026-01-07 15:22:55.026440',0,0.00,55,6500.00,6500.00,NULL),('1b8c21fc-df2f-4876-94b9-98a817ab4aad','2026-01-07 15:21:49.362386',NULL,'2026-01-07 15:21:49.362386',0.00,'2026-01-07 15:21:49.362143',0,0.00,49,17800.00,17800.00,NULL),('2066fb5c-50a2-448a-9260-f7ea9650b0b5','2026-01-07 15:15:35.357731',NULL,'2026-01-07 15:15:35.357731',0.00,'2026-01-07 15:15:35.357391',0,0.00,35,13800.00,13800.00,NULL),('221817ef-3d2b-4ff4-bbc6-89cac2069f57','2026-01-07 15:08:22.888738',NULL,'2026-01-07 15:08:22.888738',0.00,'2026-01-07 15:08:22.888420',0,0.00,22,16200.00,16200.00,NULL),('3647e139-934b-420b-9b1b-36b4a3ba60e1','2026-01-07 15:20:37.815624',NULL,'2026-01-07 15:20:37.815624',0.00,'2026-01-07 15:20:37.815250',0,0.00,37,35700.00,35700.00,NULL),('36e3616c-90bc-4322-86a2-b6124fd92424','2026-01-07 15:07:43.373454',NULL,'2026-01-07 15:07:43.373454',0.00,'2026-01-07 15:07:43.373032',0,0.00,43,27600.00,27600.00,NULL),('4039b222-1f34-4bdc-9817-118829df71bb','2026-01-07 15:16:42.403124',NULL,'2026-01-07 15:16:42.403124',0.00,'2026-01-07 15:16:42.402770',0,0.00,42,6600.00,6600.00,NULL),('404c81a9-d340-48e7-b573-a98d3de41bd2','2026-01-07 15:19:25.980925',NULL,'2026-01-07 15:19:25.980925',0.00,'2026-01-07 15:19:25.980556',0,0.00,25,9800.00,9800.00,NULL),('4631e438-6c71-4657-90fc-acf11a3e355e','2026-01-07 15:19:44.541613',NULL,'2026-01-07 15:19:44.541613',0.00,'2026-01-07 15:19:44.541134',0,0.00,44,2700.00,2700.00,NULL),('4c2a81de-f822-41e0-9f11-05fd5c1904c1','2026-01-07 15:22:22.567308',NULL,'2026-01-07 15:22:22.567308',0.00,'2026-01-07 15:22:22.567090',0,0.00,22,16200.00,16200.00,NULL),('59cf4f98-6c78-4010-8ef8-0fa30569fa77','2026-01-07 15:08:36.001468',NULL,'2026-01-07 15:08:36.001468',0.00,'2026-01-07 15:08:36.001145',0,0.00,36,3200.00,3200.00,NULL),('7c240226-fee8-4c79-8cae-07ad634a034b','2026-01-07 15:19:35.934170',NULL,'2026-01-07 15:19:35.934170',0.00,'2026-01-07 15:19:35.933139',0,0.00,35,18200.00,18200.00,NULL),('872382e6-0d39-40c4-8407-80f623ed99a3','2026-01-07 15:20:56.602232',NULL,'2026-01-07 15:20:56.602232',0.00,'2026-01-07 15:20:56.602020',0,0.00,56,6600.00,6600.00,NULL),('880f98c8-7485-49c1-8205-19ccb1921f4c','2026-01-07 15:20:00.497098',NULL,'2026-01-07 15:20:00.497098',0.00,'2026-01-07 15:20:00.496693',0,0.00,0,20600.00,20600.00,NULL),('8ce6decd-74ee-4834-8045-9ad924727671','2026-01-07 15:08:52.024938',NULL,'2026-01-07 15:08:52.024938',0.00,'2026-01-07 15:08:52.024365',0,0.00,52,15400.00,15400.00,NULL),('96941121-0865-4f60-8491-a32fa2ed1242','2026-01-07 15:07:06.291111',NULL,'2026-01-07 15:07:06.291111',0.00,'2026-01-07 15:07:06.290635',0,0.00,6,5900.00,5900.00,NULL),('9f82346f-7fea-4f78-b2eb-00ea9cd8271c','2026-01-07 15:15:02.551007',NULL,'2026-01-07 15:15:02.551007',0.00,'2026-01-07 15:15:02.550189',0,0.00,2,5400.00,5400.00,NULL),('ae452e4d-caf1-4060-ad8e-63e2ea3d8ce2','2026-01-07 15:18:25.563056',NULL,'2026-01-07 15:18:25.563056',0.00,'2026-01-07 15:18:25.562700',0,0.00,25,33600.00,33600.00,NULL),('ba4896c8-8524-421c-9edd-2028fcb7c33c','2026-01-07 15:06:31.311657',NULL,'2026-01-07 15:06:31.311657',0.00,'2026-01-07 15:06:31.311284',0,0.00,31,36400.00,36400.00,NULL),('c3ef2097-da40-4656-a183-a327922b7799','2026-01-07 15:17:11.956204',NULL,'2026-01-07 15:17:11.956204',0.00,'2026-01-07 15:17:11.955967',0,0.00,11,21200.00,21200.00,NULL),('c4462a7d-5f71-48bb-aa19-f30f152879fa','2026-01-07 15:17:43.585296',NULL,'2026-01-07 15:17:43.585296',0.00,'2026-01-07 15:17:43.585001',0,0.00,43,5600.00,5600.00,NULL),('c7a91762-4b19-4193-82cb-89b79d76d6e1','2026-01-07 15:15:19.418274',NULL,'2026-01-07 15:15:19.418274',0.00,'2026-01-07 15:15:19.417988',0,0.00,19,38700.00,38700.00,NULL),('c7c66847-a4ae-4a8d-8517-644b4eabe4bb','2026-01-07 15:18:53.656387',NULL,'2026-01-07 15:18:53.656387',0.00,'2026-01-07 15:18:53.656060',0,0.00,53,22600.00,22600.00,NULL),('d438df9c-d323-490d-a481-e09dd2ed8986','2026-01-07 15:12:24.467567',NULL,'2026-01-07 15:12:24.467567',0.00,'2026-01-07 15:12:24.467240',0,0.00,24,15000.00,15000.00,NULL),('d45731ac-dde7-4b1d-a8a2-455eccd50092','2026-01-07 15:17:27.894309',NULL,'2026-01-07 15:17:27.894309',0.00,'2026-01-07 15:17:27.893962',0,0.00,27,3600.00,3600.00,NULL),('d807ee01-4a68-411a-acd6-b2181c148aef','2026-01-07 15:22:37.769412',NULL,'2026-01-07 15:22:37.769412',0.00,'2026-01-07 15:22:37.769181',0,0.00,37,29300.00,29300.00,NULL),('d8505791-da81-44c7-8de3-120ccc706664','2026-01-07 15:19:08.878253',NULL,'2026-01-07 15:19:08.878253',0.00,'2026-01-07 15:19:08.877987',0,0.00,8,24000.00,24000.00,NULL),('ec6afca9-5fa5-4a0e-a096-cdf965f90063','2026-01-07 15:18:11.187408',NULL,'2026-01-07 15:18:11.187408',0.00,'2026-01-07 15:18:11.187118',0,0.00,11,10400.00,10400.00,NULL);
/*!40000 ALTER TABLE `factura_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_venta_detalle`
--

DROP TABLE IF EXISTS `factura_venta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_venta_detalle` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `sub_total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_venta_detalle`
--

LOCK TABLES `factura_venta_detalle` WRITE;
/*!40000 ALTER TABLE `factura_venta_detalle` DISABLE KEYS */;
INSERT INTO `factura_venta_detalle` VALUES ('08c28e6e-4426-4634-85ed-149f90f006b5','2026-01-07 15:07:43.373975',NULL,'2026-01-07 15:07:43.373975',1,8000),('16b3b084-06cb-4a0d-8303-e2364967d903','2026-01-07 15:08:08.803966',NULL,'2026-01-07 15:08:08.803966',1,1200),('1978353e-b210-4603-8857-ea70811c99db','2026-01-07 15:20:00.497572',NULL,'2026-01-07 15:20:00.497572',3,3600),('1c4295f2-f842-4060-8a02-7deaf35bcf5c','2026-01-07 15:20:56.602409',NULL,'2026-01-07 15:20:56.602409',1,2000),('214d2dec-3f99-49f8-beab-480490ef6ce1','2026-01-07 15:07:43.374446',NULL,'2026-01-07 15:07:43.374446',1,17000),('2568a2ba-055c-49e9-93e1-0e65bd7cb5a7','2026-01-07 15:08:36.002520',NULL,'2026-01-07 15:08:36.002520',1,1200),('288f908a-fc12-4a56-b058-4416577eae0b','2026-01-07 15:22:55.026874',NULL,'2026-01-07 15:22:55.026874',1,2600),('29303fc9-6f7d-444b-88dc-9150e3b8bfc2','2026-01-07 15:17:43.585830',NULL,'2026-01-07 15:17:43.585830',2,2400),('29c4d7a6-67e9-4946-a2fb-19655f7f10e8','2026-01-07 15:19:35.935191',NULL,'2026-01-07 15:19:35.935191',1,1200),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','2026-01-07 15:15:19.418742',NULL,'2026-01-07 15:15:19.418742',2,32000),('30fb26f8-6867-40f4-9bd0-296f79a4b00a','2026-01-07 15:20:00.497402',NULL,'2026-01-07 15:20:00.497402',1,13000),('3446f2aa-8165-41c1-9849-32aba8b447f6','2026-01-07 15:08:08.803559',NULL,'2026-01-07 15:08:08.803559',1,6000),('34618852-49ef-4c89-ba85-11e67747732b','2026-01-07 15:15:02.551474',NULL,'2026-01-07 15:15:02.551474',2,3000),('35bdbeae-d0e2-4d49-a483-1243c84753dd','2026-01-07 15:20:37.816500',NULL,'2026-01-07 15:20:37.816500',1,1500),('373a7d65-202f-4615-9c18-8df360b36330','2026-01-07 15:18:11.187732',NULL,'2026-01-07 15:18:11.187732',2,4000),('376aeb45-0850-4a05-8a12-71e498d018d8','2026-01-07 15:22:55.028260',NULL,'2026-01-07 15:22:55.028260',2,2400),('3b16e24e-edca-4802-aab7-8bbb28e0f357','2026-01-07 15:18:25.563508',NULL,'2026-01-07 15:18:25.563508',2,30000),('4125fddf-8315-4af9-b529-7739ea64a76d','2026-01-07 15:20:37.817078',NULL,'2026-01-07 15:20:37.817078',2,3600),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','2026-01-07 15:19:25.981296',NULL,'2026-01-07 15:19:25.981296',1,8000),('45351ddf-e9a9-4bd8-bfe1-cf626ad11ada','2026-01-07 15:22:37.769856',NULL,'2026-01-07 15:22:37.769856',1,2000),('48ef165c-7236-4509-88af-5f3dbdea014a','2026-01-07 15:16:42.403950',NULL,'2026-01-07 15:16:42.403950',2,4000),('4d988cb0-efbb-46a8-88b3-2ac302cc0d55','2026-01-07 15:06:31.312363',NULL,'2026-01-07 15:06:31.312363',2,2400),('4e982a82-ce5e-4713-8295-9a7be57591da','2026-01-07 15:22:37.770070',NULL,'2026-01-07 15:22:37.770070',3,6000),('520e269c-c2b4-412f-88af-6f85b387a631','2026-01-07 15:18:53.656647',NULL,'2026-01-07 15:18:53.656647',1,13000),('558621ef-3c0c-4655-9dda-c65f99798ca1','2026-01-07 15:17:11.956622',NULL,'2026-01-07 15:17:11.956622',1,1600),('55a9a663-4480-408f-8535-27190d4ca6c7','2026-01-07 15:20:00.497305',NULL,'2026-01-07 15:20:00.497305',1,2000),('575024d8-07a3-4e8b-af47-b253a99f12b6','2026-01-07 15:21:49.362871',NULL,'2026-01-07 15:21:49.362871',1,1600),('5afeab37-9282-4842-bb7c-fee7448066ec','2026-01-07 15:06:31.312067',NULL,'2026-01-07 15:06:31.312067',2,34000),('5ef71d35-a68f-49a8-9703-6f98c9692a76','2026-01-07 15:12:24.467968',NULL,'2026-01-07 15:12:24.467968',1,12000),('5fb9665c-3d0d-4b2c-b40a-8b3f2d48fed1','2026-01-07 15:07:06.292112',NULL,'2026-01-07 15:07:06.292112',1,1500),('62eeb07c-d881-4a40-8674-63a04e7dc592','2026-01-07 15:22:22.567493',NULL,'2026-01-07 15:22:22.567493',1,15000),('65b907bf-134c-40c8-a9ef-e23f4acf3fc3','2026-01-07 15:19:44.542278',NULL,'2026-01-07 15:19:44.542278',1,1200),('67356085-ccbd-45c4-b326-ee4cc98f70c9','2026-01-07 15:07:06.291619',NULL,'2026-01-07 15:07:06.291619',1,2600),('6e030695-f99a-48e7-b498-a293aa246bb0','2026-01-07 15:12:35.705630',NULL,'2026-01-07 15:12:35.705630',2,3000),('6e532ce6-a969-4441-ad3e-c5ee43285767','2026-01-07 15:20:37.816835',NULL,'2026-01-07 15:20:37.816835',1,2000),('724f9a45-ca27-453e-b1ac-1dc0d01ebef5','2026-01-07 15:18:53.656922',NULL,'2026-01-07 15:18:53.656922',1,1600),('7d54bf16-8604-4efd-baaa-dec19b9818af','2026-01-07 15:17:27.895194',NULL,'2026-01-07 15:17:27.895194',1,2000),('8089fd93-908c-4740-9c01-adc3086d71a0','2026-01-07 15:07:06.294291',NULL,'2026-01-07 15:07:06.294291',1,1800),('8344d582-2969-49f9-a931-d27e5ad9aef2','2026-01-07 15:20:56.602492',NULL,'2026-01-07 15:20:56.602492',1,2000),('840ec48d-21e2-48f5-b365-80c2aa25e347','2026-01-07 15:17:11.956428',NULL,'2026-01-07 15:17:11.956428',1,17000),('84ed3542-6c54-485e-8ef3-bd59cd52e1b6','2026-01-07 15:18:53.656785',NULL,'2026-01-07 15:18:53.656785',1,6000),('8564df2b-d0da-4b94-8e5d-c70e4143665e','2026-01-07 15:15:35.358675',NULL,'2026-01-07 15:15:35.358675',1,12000),('85deda66-88da-48c0-be9a-5bbb24340302','2026-01-07 15:20:37.816980',NULL,'2026-01-07 15:20:37.816980',2,26000),('8aa1ea94-85b5-453c-af19-e3d5239309f8','2026-01-07 15:15:19.419096',NULL,'2026-01-07 15:15:19.419096',1,1500),('8b02f00b-5e75-4d94-9565-ad5113247eff','2026-01-07 15:08:22.889415',NULL,'2026-01-07 15:08:22.889415',1,1200),('8cb50b93-f05f-4f62-be02-57356f045e1b','2026-01-07 15:17:11.956772',NULL,'2026-01-07 15:17:11.956772',1,2600),('8cc4c617-f5a7-480b-add1-477f7680e0e2','2026-01-07 15:19:25.981493',NULL,'2026-01-07 15:19:25.981493',1,1800),('8e89f8a9-b47f-4ca7-bc6d-42f86547de38','2026-01-07 15:22:22.567602',NULL,'2026-01-07 15:22:22.567602',1,1200),('942aa819-e811-4881-bd12-a3864e01c888','2026-01-07 15:22:37.770278',NULL,'2026-01-07 15:22:37.770278',1,1200),('990385fc-a7f1-4b2e-b912-dc498c77ad85','2026-01-07 15:12:24.468194',NULL,'2026-01-07 15:12:24.468194',1,1200),('99f1aed6-af80-4dbd-b99f-590a24313696','2026-01-07 15:19:35.934911',NULL,'2026-01-07 15:19:35.934911',1,17000),('9c92b497-c894-4b04-bf73-d6d5b57ff7f3','2026-01-07 15:18:11.188002',NULL,'2026-01-07 15:18:11.188002',2,4000),('a264c3d8-fdd5-4f56-a1ac-c98f40da4be3','2026-01-07 15:07:43.374757',NULL,'2026-01-07 15:07:43.374757',1,2600),('a294a1b0-8684-4eff-b712-8dcffd262d0e','2026-01-07 15:17:27.894745',NULL,'2026-01-07 15:17:27.894745',1,1600),('a2d8c30d-d9bc-4e78-8d2a-7fafd9933807','2026-01-07 15:08:52.025238',NULL,'2026-01-07 15:08:52.025238',1,13000),('a39467bf-ae7a-4a28-90a7-aaa109030f57','2026-01-07 15:19:44.542047',NULL,'2026-01-07 15:19:44.542047',1,1500),('a7d6641f-74be-4969-a69c-4bccfa3f2051','2026-01-07 15:08:08.803769',NULL,'2026-01-07 15:08:08.803769',1,2000),('a94d48b2-e322-4faa-ab2d-f938ab950ef0','2026-01-07 15:08:36.002210',NULL,'2026-01-07 15:08:36.002210',1,2000),('abe21a11-34d0-4990-aa13-61a010982298','2026-01-07 15:19:08.878487',NULL,'2026-01-07 15:19:08.878487',2,24000),('b2dcb2d8-f210-4e8b-b78e-643dfd231057','2026-01-07 15:22:37.769738',NULL,'2026-01-07 15:22:37.769738',1,1200),('b6e9aa83-26d2-46a2-b9e1-b0a7bf1ad354','2026-01-07 15:15:35.359013',NULL,'2026-01-07 15:15:35.359013',1,1800),('bc2f9ba6-bc4e-46b6-8abc-433cd63675d4','2026-01-07 15:20:00.497489',NULL,'2026-01-07 15:20:00.497489',1,2000),('be80ff94-8bdb-4405-861d-602be8729aa7','2026-01-07 15:21:49.363073',NULL,'2026-01-07 15:21:49.363073',1,1200),('beb80833-7c7d-4403-9d55-690a1484bb0c','2026-01-07 15:12:24.468437',NULL,'2026-01-07 15:12:24.468437',1,1800),('c2e0343b-19b9-4edc-849f-6ea1e447df79','2026-01-07 15:15:02.551818',NULL,'2026-01-07 15:15:02.551818',2,2400),('c62a65fd-6b3d-40d8-9149-84f5caebdb1c','2026-01-07 15:08:52.025427',NULL,'2026-01-07 15:08:52.025427',2,2400),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','2026-01-07 15:21:49.362650',NULL,'2026-01-07 15:21:49.362650',1,15000),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','2026-01-07 15:08:22.889128',NULL,'2026-01-07 15:08:22.889128',1,15000),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','2026-01-07 15:12:35.705911',NULL,'2026-01-07 15:12:35.705911',2,30000),('df090597-4aca-4927-8c0c-52495a4315d3','2026-01-07 15:18:11.188235',NULL,'2026-01-07 15:18:11.188235',2,2400),('e575472e-6e5e-412f-9816-8cf80add7638','2026-01-07 15:16:42.404662',NULL,'2026-01-07 15:16:42.404662',1,2600),('e59e1af0-85fe-403d-9130-28f693fe7fba','2026-01-07 15:17:43.585561',NULL,'2026-01-07 15:17:43.585561',2,3200),('e7733cf9-6dc0-439d-af46-45e6edffc7aa','2026-01-07 15:22:55.027318',NULL,'2026-01-07 15:22:55.027318',1,1500),('eb519cce-69db-4e48-8443-caef0b30e611','2026-01-07 15:22:37.769964',NULL,'2026-01-07 15:22:37.769964',1,1500),('eb949c47-bb39-419e-9620-6e2610ca2902','2026-01-07 15:20:56.602560',NULL,'2026-01-07 15:20:56.602560',1,2600),('ed041133-b476-46d0-ad9d-4f3518aed778','2026-01-07 15:18:25.563794',NULL,'2026-01-07 15:18:25.563794',2,3600),('f25de8ed-9799-4d7d-9907-61e5db36179a','2026-01-07 15:20:37.816697',NULL,'2026-01-07 15:20:37.816697',1,2600),('f381b5e5-3973-4dc5-969a-b24c74b8845e','2026-01-07 15:22:37.770169',NULL,'2026-01-07 15:22:37.770169',2,2400),('f77fa814-3e5d-4f54-9772-cb349213cd68','2026-01-07 15:15:19.419348',NULL,'2026-01-07 15:15:19.419348',2,5200),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','2026-01-07 15:22:37.769613',NULL,'2026-01-07 15:22:37.769613',1,15000),('fc69815c-c1be-485d-ba6d-c6d3afceb80d','2026-01-07 15:18:53.657084',NULL,'2026-01-07 15:18:53.657084',1,2000);
/*!40000 ALTER TABLE `factura_venta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_venta_detalle_articulo_insumo`
--

DROP TABLE IF EXISTS `factura_venta_detalle_articulo_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_venta_detalle_articulo_insumo` (
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_insumo_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK4rqs04webr85ebp9eplkthxlh` (`articulo_insumo_id`),
  KEY `FK9ag4ioag5fq7tmmlmhhjknojg` (`factura_venta_detalle_id`),
  CONSTRAINT `FK9ag4ioag5fq7tmmlmhhjknojg` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_venta_detalle_articulo_insumo`
--

LOCK TABLES `factura_venta_detalle_articulo_insumo` WRITE;
/*!40000 ALTER TABLE `factura_venta_detalle_articulo_insumo` DISABLE KEYS */;
INSERT INTO `factura_venta_detalle_articulo_insumo` VALUES ('4d988cb0-efbb-46a8-88b3-2ac302cc0d55','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('8089fd93-908c-4740-9c01-adc3086d71a0','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('a264c3d8-fdd5-4f56-a1ac-c98f40da4be3','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('16b3b084-06cb-4a0d-8303-e2364967d903','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('8b02f00b-5e75-4d94-9565-ad5113247eff','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('2568a2ba-055c-49e9-93e1-0e65bd7cb5a7','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('c62a65fd-6b3d-40d8-9149-84f5caebdb1c','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('990385fc-a7f1-4b2e-b912-dc498c77ad85','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('beb80833-7c7d-4403-9d55-690a1484bb0c','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('c2e0343b-19b9-4edc-849f-6ea1e447df79','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('f77fa814-3e5d-4f54-9772-cb349213cd68','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('b6e9aa83-26d2-46a2-b9e1-b0a7bf1ad354','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('e575472e-6e5e-412f-9816-8cf80add7638','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('8cb50b93-f05f-4f62-be02-57356f045e1b','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('a294a1b0-8684-4eff-b712-8dcffd262d0e','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('29303fc9-6f7d-444b-88dc-9150e3b8bfc2','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('df090597-4aca-4927-8c0c-52495a4315d3','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('ed041133-b476-46d0-ad9d-4f3518aed778','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('724f9a45-ca27-453e-b1ac-1dc0d01ebef5','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('fc69815c-c1be-485d-ba6d-c6d3afceb80d','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('8cc4c617-f5a7-480b-add1-477f7680e0e2','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('29c4d7a6-67e9-4946-a2fb-19655f7f10e8','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('65b907bf-134c-40c8-a9ef-e23f4acf3fc3','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('1978353e-b210-4603-8857-ea70811c99db','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('4125fddf-8315-4af9-b529-7739ea64a76d','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('eb949c47-bb39-419e-9620-6e2610ca2902','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('be80ff94-8bdb-4405-861d-602be8729aa7','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('8e89f8a9-b47f-4ca7-bc6d-42f86547de38','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('b2dcb2d8-f210-4e8b-b78e-643dfd231057','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('f381b5e5-3973-4dc5-969a-b24c74b8845e','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('942aa819-e811-4881-bd12-a3864e01c888','a4012059-4b9d-4f80-80dd-dffc000dfbf3'),('376aeb45-0850-4a05-8a12-71e498d018d8','a4012059-4b9d-4f80-80dd-dffc000dfbf3');
/*!40000 ALTER TABLE `factura_venta_detalle_articulo_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_venta_detalle_articulo_manufacturado`
--

DROP TABLE IF EXISTS `factura_venta_detalle_articulo_manufacturado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_venta_detalle_articulo_manufacturado` (
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `articulo_manufacturado_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FK253n10nbemtpmwv313kil7shf` (`articulo_manufacturado_id`),
  KEY `FKeioo0cmy0q13w38bugkk0x8xy` (`factura_venta_detalle_id`),
  CONSTRAINT `FKeioo0cmy0q13w38bugkk0x8xy` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_venta_detalle_articulo_manufacturado`
--

LOCK TABLES `factura_venta_detalle_articulo_manufacturado` WRITE;
/*!40000 ALTER TABLE `factura_venta_detalle_articulo_manufacturado` DISABLE KEYS */;
INSERT INTO `factura_venta_detalle_articulo_manufacturado` VALUES ('5afeab37-9282-4842-bb7c-fee7448066ec','03c732a2-5093-41f8-b677-b7d8bc41479f'),('5afeab37-9282-4842-bb7c-fee7448066ec','141b6386-38aa-4075-ad23-428e6d59d7e8'),('5afeab37-9282-4842-bb7c-fee7448066ec','3b6ba4fe-99cf-4f48-829d-db32df102f37'),('5afeab37-9282-4842-bb7c-fee7448066ec','569260cb-2557-4c36-8797-6e94d71d969a'),('5afeab37-9282-4842-bb7c-fee7448066ec','941104d6-c6e3-495c-b4c3-6407f4dd1539'),('5afeab37-9282-4842-bb7c-fee7448066ec','94436057-f94e-4727-b423-efa6f432f975'),('5afeab37-9282-4842-bb7c-fee7448066ec','acb21a44-7077-4818-bacc-a08b8c23f53f'),('67356085-ccbd-45c4-b326-ee4cc98f70c9','21ea4b3e-f8b6-4c7e-a5a8-e130dda7161c'),('67356085-ccbd-45c4-b326-ee4cc98f70c9','906311f9-8ffd-4514-a06d-776aeaad467f'),('67356085-ccbd-45c4-b326-ee4cc98f70c9','a5f70b33-5012-4b47-9bcd-374e7a03d91b'),('67356085-ccbd-45c4-b326-ee4cc98f70c9','d64a2d07-f73b-4d54-823f-6fae5feafbb2'),('5fb9665c-3d0d-4b2c-b40a-8b3f2d48fed1','477f1d47-1ee5-46a8-849c-9c33505ac64d'),('5fb9665c-3d0d-4b2c-b40a-8b3f2d48fed1','c3545c04-66db-4cf2-8638-6efcbcad2fd6'),('5fb9665c-3d0d-4b2c-b40a-8b3f2d48fed1','f44d808f-601b-457f-958f-2c3775c9a107'),('08c28e6e-4426-4634-85ed-149f90f006b5','125f9329-e2da-4944-8d40-8f26db0b5151'),('08c28e6e-4426-4634-85ed-149f90f006b5','2be8e0f9-b87a-47fd-a73f-dcf49bd30495'),('08c28e6e-4426-4634-85ed-149f90f006b5','788feb0a-60b2-4eb9-b548-3ac92c6e398b'),('08c28e6e-4426-4634-85ed-149f90f006b5','832511e5-c13a-408f-8f69-2596e5f4e79b'),('08c28e6e-4426-4634-85ed-149f90f006b5','fa08ac86-0941-463b-a9b1-9da65774cb8c'),('214d2dec-3f99-49f8-beab-480490ef6ce1','03c732a2-5093-41f8-b677-b7d8bc41479f'),('214d2dec-3f99-49f8-beab-480490ef6ce1','141b6386-38aa-4075-ad23-428e6d59d7e8'),('214d2dec-3f99-49f8-beab-480490ef6ce1','3b6ba4fe-99cf-4f48-829d-db32df102f37'),('214d2dec-3f99-49f8-beab-480490ef6ce1','569260cb-2557-4c36-8797-6e94d71d969a'),('214d2dec-3f99-49f8-beab-480490ef6ce1','941104d6-c6e3-495c-b4c3-6407f4dd1539'),('214d2dec-3f99-49f8-beab-480490ef6ce1','94436057-f94e-4727-b423-efa6f432f975'),('214d2dec-3f99-49f8-beab-480490ef6ce1','acb21a44-7077-4818-bacc-a08b8c23f53f'),('3446f2aa-8165-41c1-9849-32aba8b447f6','0405d0e3-d280-4717-8292-8207f2b2b941'),('3446f2aa-8165-41c1-9849-32aba8b447f6','41148c31-0619-4c37-9013-1c1a84840c1e'),('a7d6641f-74be-4969-a69c-4bccfa3f2051','e83994a6-f465-47ee-99c2-a25f070413a1'),('a7d6641f-74be-4969-a69c-4bccfa3f2051','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('d3978200-3c64-4a2d-bc4e-62a4af38aa15','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('a94d48b2-e322-4faa-ab2d-f938ab950ef0','224078de-beb4-4108-974c-57d0d68efcc1'),('a2d8c30d-d9bc-4e78-8d2a-7fafd9933807','45172a53-b88f-4615-a642-3a99754828af'),('a2d8c30d-d9bc-4e78-8d2a-7fafd9933807','665db5ee-6091-4ed3-873f-0c44342dc099'),('a2d8c30d-d9bc-4e78-8d2a-7fafd9933807','6742dae1-38ab-44d2-95c7-3394df66f338'),('a2d8c30d-d9bc-4e78-8d2a-7fafd9933807','d8d22d9b-62d7-4453-be44-90e7bf97b181'),('5ef71d35-a68f-49a8-9703-6f98c9692a76','76dac1e5-b853-484a-be0d-dc59723ca94b'),('5ef71d35-a68f-49a8-9703-6f98c9692a76','a8543cd1-cf8d-42c0-8cc0-e65c76b82b73'),('5ef71d35-a68f-49a8-9703-6f98c9692a76','ead64a39-10e8-4b9a-afd1-1a4cd73c0756'),('5ef71d35-a68f-49a8-9703-6f98c9692a76','f22a3a9c-cd29-44d4-9a05-2b69ae5b517f'),('6e030695-f99a-48e7-b498-a293aa246bb0','073489ff-5598-4562-9abf-6929b016eb6d'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('da82c7a9-16b5-4111-bdaa-922f4b1a041a','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('34618852-49ef-4c89-ba85-11e67747732b','477f1d47-1ee5-46a8-849c-9c33505ac64d'),('34618852-49ef-4c89-ba85-11e67747732b','c3545c04-66db-4cf2-8638-6efcbcad2fd6'),('34618852-49ef-4c89-ba85-11e67747732b','f44d808f-601b-457f-958f-2c3775c9a107'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','095945cb-12e8-4283-8ffb-40f465c5671a'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','302e43af-8525-44df-9dde-b3d21c8bb7ce'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','51414442-b340-4f2a-bdf1-f420470a9778'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','7b785169-6f2d-4065-871a-74777adb482d'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','87111d4d-6b72-44fc-b3ff-ac640345250a'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','a2f66d7b-f5ee-4926-9969-1b9d2ec120aa'),('304e8b48-4f0c-412f-9a6f-1f38b9fd6281','ebf7bb72-5bee-4112-bb21-b3aa0f323172'),('8aa1ea94-85b5-453c-af19-e3d5239309f8','073489ff-5598-4562-9abf-6929b016eb6d'),('8564df2b-d0da-4b94-8e5d-c70e4143665e','76dac1e5-b853-484a-be0d-dc59723ca94b'),('8564df2b-d0da-4b94-8e5d-c70e4143665e','a8543cd1-cf8d-42c0-8cc0-e65c76b82b73'),('8564df2b-d0da-4b94-8e5d-c70e4143665e','ead64a39-10e8-4b9a-afd1-1a4cd73c0756'),('8564df2b-d0da-4b94-8e5d-c70e4143665e','f22a3a9c-cd29-44d4-9a05-2b69ae5b517f'),('48ef165c-7236-4509-88af-5f3dbdea014a','3eceeb41-5882-4e2d-a3ad-2a567a6074f4'),('48ef165c-7236-4509-88af-5f3dbdea014a','c1ef397b-903a-4eda-a225-65df94a36ec0'),('48ef165c-7236-4509-88af-5f3dbdea014a','c304d26d-fbe4-47b1-bb3d-be7db771100f'),('48ef165c-7236-4509-88af-5f3dbdea014a','e31b1f57-b408-4282-8fe5-6e145113a34a'),('840ec48d-21e2-48f5-b365-80c2aa25e347','03c732a2-5093-41f8-b677-b7d8bc41479f'),('840ec48d-21e2-48f5-b365-80c2aa25e347','141b6386-38aa-4075-ad23-428e6d59d7e8'),('840ec48d-21e2-48f5-b365-80c2aa25e347','3b6ba4fe-99cf-4f48-829d-db32df102f37'),('840ec48d-21e2-48f5-b365-80c2aa25e347','569260cb-2557-4c36-8797-6e94d71d969a'),('840ec48d-21e2-48f5-b365-80c2aa25e347','941104d6-c6e3-495c-b4c3-6407f4dd1539'),('840ec48d-21e2-48f5-b365-80c2aa25e347','94436057-f94e-4727-b423-efa6f432f975'),('840ec48d-21e2-48f5-b365-80c2aa25e347','acb21a44-7077-4818-bacc-a08b8c23f53f'),('558621ef-3c0c-4655-9dda-c65f99798ca1','6735cb66-e946-46b1-b134-5a0fe6c122dc'),('558621ef-3c0c-4655-9dda-c65f99798ca1','9c4c2267-6b0b-4e28-adf8-bfed0ff7319b'),('7d54bf16-8604-4efd-baaa-dec19b9818af','e83994a6-f465-47ee-99c2-a25f070413a1'),('7d54bf16-8604-4efd-baaa-dec19b9818af','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('e59e1af0-85fe-403d-9130-28f693fe7fba','6735cb66-e946-46b1-b134-5a0fe6c122dc'),('e59e1af0-85fe-403d-9130-28f693fe7fba','9c4c2267-6b0b-4e28-adf8-bfed0ff7319b'),('373a7d65-202f-4615-9c18-8df360b36330','3f8c9b16-363d-476c-ba57-a8e5846523e2'),('373a7d65-202f-4615-9c18-8df360b36330','8359237e-780a-477d-98e3-27a48f0a9173'),('373a7d65-202f-4615-9c18-8df360b36330','83beb223-3c7f-4ff3-a9e9-b08d1914078d'),('9c92b497-c894-4b04-bf73-d6d5b57ff7f3','e83994a6-f465-47ee-99c2-a25f070413a1'),('9c92b497-c894-4b04-bf73-d6d5b57ff7f3','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('3b16e24e-edca-4802-aab7-8bbb28e0f357','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('520e269c-c2b4-412f-88af-6f85b387a631','45172a53-b88f-4615-a642-3a99754828af'),('520e269c-c2b4-412f-88af-6f85b387a631','665db5ee-6091-4ed3-873f-0c44342dc099'),('520e269c-c2b4-412f-88af-6f85b387a631','6742dae1-38ab-44d2-95c7-3394df66f338'),('520e269c-c2b4-412f-88af-6f85b387a631','d8d22d9b-62d7-4453-be44-90e7bf97b181'),('84ed3542-6c54-485e-8ef3-bd59cd52e1b6','0405d0e3-d280-4717-8292-8207f2b2b941'),('84ed3542-6c54-485e-8ef3-bd59cd52e1b6','41148c31-0619-4c37-9013-1c1a84840c1e'),('abe21a11-34d0-4990-aa13-61a010982298','76dac1e5-b853-484a-be0d-dc59723ca94b'),('abe21a11-34d0-4990-aa13-61a010982298','a8543cd1-cf8d-42c0-8cc0-e65c76b82b73'),('abe21a11-34d0-4990-aa13-61a010982298','ead64a39-10e8-4b9a-afd1-1a4cd73c0756'),('abe21a11-34d0-4990-aa13-61a010982298','f22a3a9c-cd29-44d4-9a05-2b69ae5b517f'),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','125f9329-e2da-4944-8d40-8f26db0b5151'),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','2be8e0f9-b87a-47fd-a73f-dcf49bd30495'),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','788feb0a-60b2-4eb9-b548-3ac92c6e398b'),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','832511e5-c13a-408f-8f69-2596e5f4e79b'),('446c3d8a-a5db-49d3-9bca-4438fc7ca225','fa08ac86-0941-463b-a9b1-9da65774cb8c'),('99f1aed6-af80-4dbd-b99f-590a24313696','03c732a2-5093-41f8-b677-b7d8bc41479f'),('99f1aed6-af80-4dbd-b99f-590a24313696','141b6386-38aa-4075-ad23-428e6d59d7e8'),('99f1aed6-af80-4dbd-b99f-590a24313696','3b6ba4fe-99cf-4f48-829d-db32df102f37'),('99f1aed6-af80-4dbd-b99f-590a24313696','569260cb-2557-4c36-8797-6e94d71d969a'),('99f1aed6-af80-4dbd-b99f-590a24313696','941104d6-c6e3-495c-b4c3-6407f4dd1539'),('99f1aed6-af80-4dbd-b99f-590a24313696','94436057-f94e-4727-b423-efa6f432f975'),('99f1aed6-af80-4dbd-b99f-590a24313696','acb21a44-7077-4818-bacc-a08b8c23f53f'),('a39467bf-ae7a-4a28-90a7-aaa109030f57','477f1d47-1ee5-46a8-849c-9c33505ac64d'),('a39467bf-ae7a-4a28-90a7-aaa109030f57','c3545c04-66db-4cf2-8638-6efcbcad2fd6'),('a39467bf-ae7a-4a28-90a7-aaa109030f57','f44d808f-601b-457f-958f-2c3775c9a107'),('55a9a663-4480-408f-8535-27190d4ca6c7','224078de-beb4-4108-974c-57d0d68efcc1'),('30fb26f8-6867-40f4-9bd0-296f79a4b00a','45172a53-b88f-4615-a642-3a99754828af'),('30fb26f8-6867-40f4-9bd0-296f79a4b00a','665db5ee-6091-4ed3-873f-0c44342dc099'),('30fb26f8-6867-40f4-9bd0-296f79a4b00a','6742dae1-38ab-44d2-95c7-3394df66f338'),('30fb26f8-6867-40f4-9bd0-296f79a4b00a','d8d22d9b-62d7-4453-be44-90e7bf97b181'),('bc2f9ba6-bc4e-46b6-8abc-433cd63675d4','3eceeb41-5882-4e2d-a3ad-2a567a6074f4'),('bc2f9ba6-bc4e-46b6-8abc-433cd63675d4','c1ef397b-903a-4eda-a225-65df94a36ec0'),('bc2f9ba6-bc4e-46b6-8abc-433cd63675d4','c304d26d-fbe4-47b1-bb3d-be7db771100f'),('bc2f9ba6-bc4e-46b6-8abc-433cd63675d4','e31b1f57-b408-4282-8fe5-6e145113a34a'),('35bdbeae-d0e2-4d49-a483-1243c84753dd','073489ff-5598-4562-9abf-6929b016eb6d'),('f25de8ed-9799-4d7d-9907-61e5db36179a','21ea4b3e-f8b6-4c7e-a5a8-e130dda7161c'),('f25de8ed-9799-4d7d-9907-61e5db36179a','906311f9-8ffd-4514-a06d-776aeaad467f'),('f25de8ed-9799-4d7d-9907-61e5db36179a','a5f70b33-5012-4b47-9bcd-374e7a03d91b'),('f25de8ed-9799-4d7d-9907-61e5db36179a','d64a2d07-f73b-4d54-823f-6fae5feafbb2'),('6e532ce6-a969-4441-ad3e-c5ee43285767','e83994a6-f465-47ee-99c2-a25f070413a1'),('6e532ce6-a969-4441-ad3e-c5ee43285767','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('85deda66-88da-48c0-be9a-5bbb24340302','45172a53-b88f-4615-a642-3a99754828af'),('85deda66-88da-48c0-be9a-5bbb24340302','665db5ee-6091-4ed3-873f-0c44342dc099'),('85deda66-88da-48c0-be9a-5bbb24340302','6742dae1-38ab-44d2-95c7-3394df66f338'),('85deda66-88da-48c0-be9a-5bbb24340302','d8d22d9b-62d7-4453-be44-90e7bf97b181'),('1c4295f2-f842-4060-8a02-7deaf35bcf5c','3f8c9b16-363d-476c-ba57-a8e5846523e2'),('1c4295f2-f842-4060-8a02-7deaf35bcf5c','8359237e-780a-477d-98e3-27a48f0a9173'),('1c4295f2-f842-4060-8a02-7deaf35bcf5c','83beb223-3c7f-4ff3-a9e9-b08d1914078d'),('8344d582-2969-49f9-a931-d27e5ad9aef2','e83994a6-f465-47ee-99c2-a25f070413a1'),('8344d582-2969-49f9-a931-d27e5ad9aef2','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('c8b10b78-021e-4a7b-9044-4f8975a3d2ac','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('575024d8-07a3-4e8b-af47-b253a99f12b6','6735cb66-e946-46b1-b134-5a0fe6c122dc'),('575024d8-07a3-4e8b-af47-b253a99f12b6','9c4c2267-6b0b-4e28-adf8-bfed0ff7319b'),('62eeb07c-d881-4a40-8674-63a04e7dc592','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('62eeb07c-d881-4a40-8674-63a04e7dc592','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('62eeb07c-d881-4a40-8674-63a04e7dc592','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('62eeb07c-d881-4a40-8674-63a04e7dc592','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('62eeb07c-d881-4a40-8674-63a04e7dc592','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('62eeb07c-d881-4a40-8674-63a04e7dc592','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','19621fd0-1ee4-4aaa-9728-762db4ca2ede'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','244a8d91-fe1d-47a5-9bed-64d3c5ab3626'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','3cbb113b-fd41-44d0-ad4c-ba6c27155cb0'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','a77e0408-d5ef-4a33-b19f-bbcd11b65ca2'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','d766ea78-dc52-4ca2-b7e0-e17f9ff67a54'),('fc382a1a-6d7e-4a1d-a48b-71f07fea970d','ec8db72e-a57e-4bf7-b7a7-c38694e85734'),('45351ddf-e9a9-4bd8-bfe1-cf626ad11ada','e83994a6-f465-47ee-99c2-a25f070413a1'),('45351ddf-e9a9-4bd8-bfe1-cf626ad11ada','eb9bec53-6cc3-4e45-ad22-ab95ac4922ac'),('eb519cce-69db-4e48-8443-caef0b30e611','073489ff-5598-4562-9abf-6929b016eb6d'),('4e982a82-ce5e-4713-8295-9a7be57591da','3eceeb41-5882-4e2d-a3ad-2a567a6074f4'),('4e982a82-ce5e-4713-8295-9a7be57591da','c1ef397b-903a-4eda-a225-65df94a36ec0'),('4e982a82-ce5e-4713-8295-9a7be57591da','c304d26d-fbe4-47b1-bb3d-be7db771100f'),('4e982a82-ce5e-4713-8295-9a7be57591da','e31b1f57-b408-4282-8fe5-6e145113a34a'),('288f908a-fc12-4a56-b058-4416577eae0b','21ea4b3e-f8b6-4c7e-a5a8-e130dda7161c'),('288f908a-fc12-4a56-b058-4416577eae0b','906311f9-8ffd-4514-a06d-776aeaad467f'),('288f908a-fc12-4a56-b058-4416577eae0b','a5f70b33-5012-4b47-9bcd-374e7a03d91b'),('288f908a-fc12-4a56-b058-4416577eae0b','d64a2d07-f73b-4d54-823f-6fae5feafbb2'),('e7733cf9-6dc0-439d-af46-45e6edffc7aa','073489ff-5598-4562-9abf-6929b016eb6d');
/*!40000 ALTER TABLE `factura_venta_detalle_articulo_manufacturado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_venta_factura_venta_detalle`
--

DROP TABLE IF EXISTS `factura_venta_factura_venta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_venta_factura_venta_detalle` (
  `factura_venta_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `factura_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UKhkqnod0ni9b57qn57gbnkmhwy` (`factura_venta_detalle_id`),
  KEY `FKdjbfj7fdx3bbccbq60mjycr3f` (`factura_venta_id`),
  CONSTRAINT `FK120fhwrpgotuxkxjx9o5gv7wq` FOREIGN KEY (`factura_venta_detalle_id`) REFERENCES `factura_venta_detalle` (`id`),
  CONSTRAINT `FKdjbfj7fdx3bbccbq60mjycr3f` FOREIGN KEY (`factura_venta_id`) REFERENCES `factura_venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_venta_factura_venta_detalle`
--

LOCK TABLES `factura_venta_factura_venta_detalle` WRITE;
/*!40000 ALTER TABLE `factura_venta_factura_venta_detalle` DISABLE KEYS */;
INSERT INTO `factura_venta_factura_venta_detalle` VALUES ('0ec74d93-8675-4398-aabb-7f9b358224da','6e030695-f99a-48e7-b498-a293aa246bb0'),('0ec74d93-8675-4398-aabb-7f9b358224da','da82c7a9-16b5-4111-bdaa-922f4b1a041a'),('106035e8-797e-4c31-ab63-f8413486366c','16b3b084-06cb-4a0d-8303-e2364967d903'),('106035e8-797e-4c31-ab63-f8413486366c','3446f2aa-8165-41c1-9849-32aba8b447f6'),('106035e8-797e-4c31-ab63-f8413486366c','a7d6641f-74be-4969-a69c-4bccfa3f2051'),('193c5571-10a1-415d-81ca-b59b060e66ac','288f908a-fc12-4a56-b058-4416577eae0b'),('193c5571-10a1-415d-81ca-b59b060e66ac','376aeb45-0850-4a05-8a12-71e498d018d8'),('193c5571-10a1-415d-81ca-b59b060e66ac','e7733cf9-6dc0-439d-af46-45e6edffc7aa'),('1b8c21fc-df2f-4876-94b9-98a817ab4aad','575024d8-07a3-4e8b-af47-b253a99f12b6'),('1b8c21fc-df2f-4876-94b9-98a817ab4aad','be80ff94-8bdb-4405-861d-602be8729aa7'),('1b8c21fc-df2f-4876-94b9-98a817ab4aad','c8b10b78-021e-4a7b-9044-4f8975a3d2ac'),('2066fb5c-50a2-448a-9260-f7ea9650b0b5','8564df2b-d0da-4b94-8e5d-c70e4143665e'),('2066fb5c-50a2-448a-9260-f7ea9650b0b5','b6e9aa83-26d2-46a2-b9e1-b0a7bf1ad354'),('221817ef-3d2b-4ff4-bbc6-89cac2069f57','8b02f00b-5e75-4d94-9565-ad5113247eff'),('221817ef-3d2b-4ff4-bbc6-89cac2069f57','d3978200-3c64-4a2d-bc4e-62a4af38aa15'),('3647e139-934b-420b-9b1b-36b4a3ba60e1','35bdbeae-d0e2-4d49-a483-1243c84753dd'),('3647e139-934b-420b-9b1b-36b4a3ba60e1','4125fddf-8315-4af9-b529-7739ea64a76d'),('3647e139-934b-420b-9b1b-36b4a3ba60e1','6e532ce6-a969-4441-ad3e-c5ee43285767'),('3647e139-934b-420b-9b1b-36b4a3ba60e1','85deda66-88da-48c0-be9a-5bbb24340302'),('3647e139-934b-420b-9b1b-36b4a3ba60e1','f25de8ed-9799-4d7d-9907-61e5db36179a'),('36e3616c-90bc-4322-86a2-b6124fd92424','08c28e6e-4426-4634-85ed-149f90f006b5'),('36e3616c-90bc-4322-86a2-b6124fd92424','214d2dec-3f99-49f8-beab-480490ef6ce1'),('36e3616c-90bc-4322-86a2-b6124fd92424','a264c3d8-fdd5-4f56-a1ac-c98f40da4be3'),('4039b222-1f34-4bdc-9817-118829df71bb','48ef165c-7236-4509-88af-5f3dbdea014a'),('4039b222-1f34-4bdc-9817-118829df71bb','e575472e-6e5e-412f-9816-8cf80add7638'),('404c81a9-d340-48e7-b573-a98d3de41bd2','446c3d8a-a5db-49d3-9bca-4438fc7ca225'),('404c81a9-d340-48e7-b573-a98d3de41bd2','8cc4c617-f5a7-480b-add1-477f7680e0e2'),('4631e438-6c71-4657-90fc-acf11a3e355e','65b907bf-134c-40c8-a9ef-e23f4acf3fc3'),('4631e438-6c71-4657-90fc-acf11a3e355e','a39467bf-ae7a-4a28-90a7-aaa109030f57'),('4c2a81de-f822-41e0-9f11-05fd5c1904c1','62eeb07c-d881-4a40-8674-63a04e7dc592'),('4c2a81de-f822-41e0-9f11-05fd5c1904c1','8e89f8a9-b47f-4ca7-bc6d-42f86547de38'),('59cf4f98-6c78-4010-8ef8-0fa30569fa77','2568a2ba-055c-49e9-93e1-0e65bd7cb5a7'),('59cf4f98-6c78-4010-8ef8-0fa30569fa77','a94d48b2-e322-4faa-ab2d-f938ab950ef0'),('7c240226-fee8-4c79-8cae-07ad634a034b','29c4d7a6-67e9-4946-a2fb-19655f7f10e8'),('7c240226-fee8-4c79-8cae-07ad634a034b','99f1aed6-af80-4dbd-b99f-590a24313696'),('872382e6-0d39-40c4-8407-80f623ed99a3','1c4295f2-f842-4060-8a02-7deaf35bcf5c'),('872382e6-0d39-40c4-8407-80f623ed99a3','8344d582-2969-49f9-a931-d27e5ad9aef2'),('872382e6-0d39-40c4-8407-80f623ed99a3','eb949c47-bb39-419e-9620-6e2610ca2902'),('880f98c8-7485-49c1-8205-19ccb1921f4c','1978353e-b210-4603-8857-ea70811c99db'),('880f98c8-7485-49c1-8205-19ccb1921f4c','30fb26f8-6867-40f4-9bd0-296f79a4b00a'),('880f98c8-7485-49c1-8205-19ccb1921f4c','55a9a663-4480-408f-8535-27190d4ca6c7'),('880f98c8-7485-49c1-8205-19ccb1921f4c','bc2f9ba6-bc4e-46b6-8abc-433cd63675d4'),('8ce6decd-74ee-4834-8045-9ad924727671','a2d8c30d-d9bc-4e78-8d2a-7fafd9933807'),('8ce6decd-74ee-4834-8045-9ad924727671','c62a65fd-6b3d-40d8-9149-84f5caebdb1c'),('96941121-0865-4f60-8491-a32fa2ed1242','5fb9665c-3d0d-4b2c-b40a-8b3f2d48fed1'),('96941121-0865-4f60-8491-a32fa2ed1242','67356085-ccbd-45c4-b326-ee4cc98f70c9'),('96941121-0865-4f60-8491-a32fa2ed1242','8089fd93-908c-4740-9c01-adc3086d71a0'),('9f82346f-7fea-4f78-b2eb-00ea9cd8271c','34618852-49ef-4c89-ba85-11e67747732b'),('9f82346f-7fea-4f78-b2eb-00ea9cd8271c','c2e0343b-19b9-4edc-849f-6ea1e447df79'),('ae452e4d-caf1-4060-ad8e-63e2ea3d8ce2','3b16e24e-edca-4802-aab7-8bbb28e0f357'),('ae452e4d-caf1-4060-ad8e-63e2ea3d8ce2','ed041133-b476-46d0-ad9d-4f3518aed778'),('ba4896c8-8524-421c-9edd-2028fcb7c33c','4d988cb0-efbb-46a8-88b3-2ac302cc0d55'),('ba4896c8-8524-421c-9edd-2028fcb7c33c','5afeab37-9282-4842-bb7c-fee7448066ec'),('c3ef2097-da40-4656-a183-a327922b7799','558621ef-3c0c-4655-9dda-c65f99798ca1'),('c3ef2097-da40-4656-a183-a327922b7799','840ec48d-21e2-48f5-b365-80c2aa25e347'),('c3ef2097-da40-4656-a183-a327922b7799','8cb50b93-f05f-4f62-be02-57356f045e1b'),('c4462a7d-5f71-48bb-aa19-f30f152879fa','29303fc9-6f7d-444b-88dc-9150e3b8bfc2'),('c4462a7d-5f71-48bb-aa19-f30f152879fa','e59e1af0-85fe-403d-9130-28f693fe7fba'),('c7a91762-4b19-4193-82cb-89b79d76d6e1','304e8b48-4f0c-412f-9a6f-1f38b9fd6281'),('c7a91762-4b19-4193-82cb-89b79d76d6e1','8aa1ea94-85b5-453c-af19-e3d5239309f8'),('c7a91762-4b19-4193-82cb-89b79d76d6e1','f77fa814-3e5d-4f54-9772-cb349213cd68'),('c7c66847-a4ae-4a8d-8517-644b4eabe4bb','520e269c-c2b4-412f-88af-6f85b387a631'),('c7c66847-a4ae-4a8d-8517-644b4eabe4bb','724f9a45-ca27-453e-b1ac-1dc0d01ebef5'),('c7c66847-a4ae-4a8d-8517-644b4eabe4bb','84ed3542-6c54-485e-8ef3-bd59cd52e1b6'),('c7c66847-a4ae-4a8d-8517-644b4eabe4bb','fc69815c-c1be-485d-ba6d-c6d3afceb80d'),('d438df9c-d323-490d-a481-e09dd2ed8986','5ef71d35-a68f-49a8-9703-6f98c9692a76'),('d438df9c-d323-490d-a481-e09dd2ed8986','990385fc-a7f1-4b2e-b912-dc498c77ad85'),('d438df9c-d323-490d-a481-e09dd2ed8986','beb80833-7c7d-4403-9d55-690a1484bb0c'),('d45731ac-dde7-4b1d-a8a2-455eccd50092','7d54bf16-8604-4efd-baaa-dec19b9818af'),('d45731ac-dde7-4b1d-a8a2-455eccd50092','a294a1b0-8684-4eff-b712-8dcffd262d0e'),('d807ee01-4a68-411a-acd6-b2181c148aef','45351ddf-e9a9-4bd8-bfe1-cf626ad11ada'),('d807ee01-4a68-411a-acd6-b2181c148aef','4e982a82-ce5e-4713-8295-9a7be57591da'),('d807ee01-4a68-411a-acd6-b2181c148aef','942aa819-e811-4881-bd12-a3864e01c888'),('d807ee01-4a68-411a-acd6-b2181c148aef','b2dcb2d8-f210-4e8b-b78e-643dfd231057'),('d807ee01-4a68-411a-acd6-b2181c148aef','eb519cce-69db-4e48-8443-caef0b30e611'),('d807ee01-4a68-411a-acd6-b2181c148aef','f381b5e5-3973-4dc5-969a-b24c74b8845e'),('d807ee01-4a68-411a-acd6-b2181c148aef','fc382a1a-6d7e-4a1d-a48b-71f07fea970d'),('d8505791-da81-44c7-8de3-120ccc706664','abe21a11-34d0-4990-aa13-61a010982298'),('ec6afca9-5fa5-4a0e-a096-cdf965f90063','373a7d65-202f-4615-9c18-8df360b36330'),('ec6afca9-5fa5-4a0e-a096-cdf965f90063','9c92b497-c894-4b04-bf73-d6d5b57ff7f3'),('ec6afca9-5fa5-4a0e-a096-cdf965f90063','df090597-4aca-4927-8c0c-52495a4315d3');
/*!40000 ALTER TABLE `factura_venta_factura_venta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES ('21f79ca7-8467-4b83-a2d8-09c68a3374ad','2025-12-11 23:48:40.298590',NULL,'2025-12-11 23:48:40.298590','Mendoza','1c0286e4-643d-4251-9294-aea9945c6f65'),('29f610b8-c8b1-47fa-a7ed-815c144e83be','2025-12-12 01:01:38.921096',NULL,'2025-12-12 01:01:38.921096','San Roque, Maipu','3dd0432f-b7ee-4f6b-a352-8efe041d540b'),('372d4a07-254e-4fad-a767-b850b4cdf32e','2025-12-17 01:09:06.230504',NULL,'2025-12-17 01:09:06.230504','San Roque, Maipu','817e3a4d-06e5-4a1d-a527-2f0a5c95c983'),('46d2744d-2ac3-4fdb-90ee-8798f450f425','2025-12-12 01:06:23.521635',NULL,'2025-12-12 01:06:23.521635','San Roque, Maipu','5ec8412d-80d4-4cb6-90ed-0d5c50419c46'),('51c37d6c-1550-4239-932e-e2285e5323f8','2025-12-17 00:55:38.828573',NULL,'2025-12-17 00:55:38.828573','Godoy Cruz','52da1993-14d8-46a4-aa59-a684ae1665b3'),('6b3afd14-789f-428c-9471-62df99d53872','2025-12-12 01:23:17.201431',NULL,'2025-12-12 01:23:17.201431','San Roque, Maipu','68af2c82-4970-4e93-b29a-45e7e4b13b56'),('7ec972e2-c993-461a-b032-70cb7e673bd9','2025-12-17 00:57:38.424779',NULL,'2025-12-17 00:57:38.424779','Las Heras','2e5c5c25-7c70-4431-9426-684b355681b9'),('8c50e24e-80af-4616-bd77-3a9cc9270132','2025-12-12 01:11:49.904053',NULL,'2025-12-12 01:11:49.904053','San Roque, Maipu','aa2d429b-96b8-487d-b605-05b5c92695cb'),('96105d66-258e-4633-a2a0-48b7a298fb04','2025-12-17 00:46:27.504933',NULL,'2025-12-17 00:46:27.504933','Mendoza','b46f44b0-ee4d-4163-a38c-498fde02a9b1'),('9b2b20e9-2bdc-4f56-8138-bda952b9e5ff','2025-12-17 01:00:30.085155',NULL,'2025-12-17 01:00:30.085155','San Martin','6aeb12a9-3dfc-4307-ba10-ac19deee2664'),('9ee7dfd9-72e6-41c0-a5bc-de3da9424d53','2025-12-12 01:02:53.822612',NULL,'2025-12-12 01:02:53.822612','San Roque, Maipu','3e25ae6e-6a50-4136-80ba-7e1a27130dd9'),('a4201159-7915-45bc-b34a-ef3b88b5de33','2025-12-12 01:13:30.048885',NULL,'2025-12-12 01:13:30.048885','San Roque, Maipu','91e09c19-95ee-41f2-a638-617097bae063'),('acde39d5-a1de-4cca-9b60-e58c5ce1dd4e','2025-12-17 00:50:59.037923',NULL,'2025-12-17 00:50:59.037923','Mendoza','013c76b0-546d-46fb-b4de-bf6afa9abce2'),('c2089520-f611-44d4-995b-625f5b7bad5c','2025-12-11 23:50:58.945205',NULL,'2025-12-11 23:50:58.945205','Mendoza','0b1bb9d5-b838-47b9-a447-5b1351649c91'),('c3a248c9-8f06-44db-abe1-ec67572c25ba','2025-12-12 01:24:17.463901',NULL,'2025-12-12 01:24:17.463901','San Roque, Maipu','67b0c83f-2684-4e59-b329-a676283f7c03'),('d7b32e7b-df1a-4930-b2d4-f96af4c9bb63','2025-12-17 00:37:54.132592',NULL,'2025-12-17 00:37:54.132592','San Roque, Maipu','75d6bbba-b97b-49e3-8bd1-343810e3a03b'),('edc6b7fd-b481-4448-8077-9021a034e7ee','2025-12-17 01:07:43.476782',NULL,'2025-12-17 01:07:43.476782','San martin','2cc9dee2-2f71-404e-b4b5-d571bc5599a2');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alta` datetime(6) DEFAULT NULL,
  `baja` datetime(6) DEFAULT NULL,
  `modificacion` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('21403b87-c498-4973-9cb3-68f57a755f81','2025-12-12 01:06:23.522950',NULL,'2025-12-12 01:06:23.522950','Argentina'),('2a56ea7e-29bf-4d3f-be93-fcd8e45a5506','2025-12-17 00:46:27.505608',NULL,'2025-12-17 00:46:27.505608','Argentina'),('5afc00f0-a59a-4645-b797-ea03c32d0805','2025-12-11 23:48:40.307829',NULL,'2025-12-11 23:48:40.307829','Argentina'),('5d562e4d-11e0-4c15-8b11-f67f5ac261e7','2025-12-12 01:24:17.467753',NULL,'2025-12-12 01:24:17.467753','Argentina'),('6e8cdf1f-8f9e-4066-8bae-4487e45a3aaf','2025-12-17 01:07:43.477080',NULL,'2025-12-17 01:07:43.477080','Argentina'),('77863523-69e0-4c61-8ab8-55408e9d6e6a','2025-12-17 00:37:54.140079',NULL,'2025-12-17 00:37:54.140079','Argentina'),('81c8a69a-4806-4bc5-ae1b-da199e41ddeb','2025-12-12 01:01:38.921901',NULL,'2025-12-12 01:01:38.921901','Argentina'),('9546aa2e-0f9a-439c-9621-bb097b77d768','2025-12-11 23:50:58.945565',NULL,'2025-12-11 23:50:58.945565','Argentina'),('a4764644-9019-4459-8bd8-09142a23eb32','2025-12-12 01:23:17.202231',NULL,'2025-12-12 01:23:17.202231','Argentina'),('aac99cf8-8e8c-4ad3-b34e-25bcf4808088','2025-12-12 01:11:49.904533',NULL,'2025-12-12 01:11:49.904533','Argentina'),('adfd7bd1-c34e-4014-9741-6ab62e80d365','2025-12-17 01:00:30.085552',NULL,'2025-12-17 01:00:30.085552','Argentina'),('b899dac1-a46d-41af-8f1a-63c1ec0243f3','2025-12-17 00:50:59.038353',NULL,'2025-12-17 00:50:59.038353','Argentina'),('bccc8aa6-966d-4dc2-bc5b-86faf98f13d1','2025-12-17 00:57:38.425174',NULL,'2025-12-17 00:57:38.425174','Argentina'),('d37da24b-7f64-437a-8bb7-caa4677e136c','2025-12-12 01:13:30.049404',NULL,'2025-12-12 01:13:30.049404','Argentina'),('d4ddea87-a02a-4f96-bb6b-ec0fd8c261af','2025-12-17 01:09:06.232034',NULL,'2025-12-17 01:09:06.232034','Argentina'),('f8030551-c96d-4090-91a4-4eba68e323ff','2025-12-12 01:02:53.823406',NULL,'2025-12-12 01:02:53.823406','Argentina'),('fc5eac56-f513-4f07-b7fb-aaa610908396','2025-12-17 00:55:38.829727',NULL,'2025-12-17 00:55:38.829727','Argentina');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_venta`
--

DROP TABLE IF EXISTS `pedido_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_venta`
--

LOCK TABLES `pedido_venta` WRITE;
/*!40000 ALTER TABLE `pedido_venta` DISABLE KEYS */;
INSERT INTO `pedido_venta` VALUES ('001205b2-72a2-48d2-a61a-2467bc3adf81','2026-01-07 15:17:27.900955',NULL,'2026-01-07 15:24:28.897191',0.00,0,'2026-01-07 18:17:13.554000',0,0.00,'2026-01-07 18:32:13.554000',3600.00,1,3600.00,13800.00,NULL,'d8499c8f-57a0-4727-92c5-cf74c209853b','d45731ac-dde7-4b1d-a8a2-455eccd50092','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('13798d8f-fde8-45c5-a4a7-8211015d9aa4','2026-01-07 15:15:19.427697',NULL,'2026-01-07 15:15:19.427697',0.00,1,'2026-01-07 18:15:04.095000',0,0.00,'2026-01-07 19:05:04.095000',38700.00,1,38700.00,21000.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','c7a91762-4b19-4193-82cb-89b79d76d6e1','7405f843-0345-470d-9f95-94e777d71684'),('1bdde241-2f72-4441-b196-c9b9e4425be4','2026-01-07 15:16:42.410107',NULL,'2026-01-07 15:16:42.410107',0.00,1,'2026-01-07 18:15:36.712000',0,0.00,'2026-01-07 18:35:36.712000',6600.00,0,6600.00,3600.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','4039b222-1f34-4bdc-9817-118829df71bb','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('238a3399-3626-4248-a6c6-8f619607d21e','2026-01-07 15:08:08.809515',NULL,'2026-01-07 15:08:08.809515',0.00,1,'2026-01-07 18:07:47.161000',0,0.00,'2026-01-07 18:37:47.161000',9200.00,0,9200.00,17800.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','106035e8-797e-4c31-ab63-f8413486366c','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('3851801e-18e0-4f53-860a-86d2cb94dc32','2026-01-07 15:12:24.474214',NULL,'2026-01-07 15:12:24.474214',0.00,1,'2026-01-07 18:08:54.460000',0,0.00,'2026-01-07 18:28:54.460000',15000.00,1,15000.00,10600.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','d438df9c-d323-490d-a481-e09dd2ed8986','7405f843-0345-470d-9f95-94e777d71684'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','2026-01-07 15:22:37.776606',NULL,'2026-01-07 15:22:37.776606',0.00,1,'2026-01-07 18:21:50.601000',0,0.00,'2026-01-07 19:31:50.601000',29300.00,1,29300.00,30100.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','d807ee01-4a68-411a-acd6-b2181c148aef','7405f843-0345-470d-9f95-94e777d71684'),('40e65c6b-3022-40d0-84fe-5df3d649e617','2026-01-07 15:18:25.570735',NULL,'2026-01-07 15:18:25.570735',0.00,1,'2026-01-07 18:18:12.317000',0,0.00,'2026-01-07 18:48:12.317000',33600.00,1,33600.00,22000.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','ae452e4d-caf1-4060-ad8e-63e2ea3d8ce2','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('425dd2b3-5400-46a6-8678-57a40d394428','2026-01-07 15:07:06.303889',NULL,'2026-01-07 15:07:06.303889',0.00,1,'2026-01-07 18:06:39.243000',0,0.00,'2026-01-07 18:31:39.242000',5900.00,1,5900.00,3100.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','96941121-0865-4f60-8491-a32fa2ed1242','7405f843-0345-470d-9f95-94e777d71684'),('589ec655-5114-4ac2-b655-fde5eea9d7cd','2026-01-07 15:19:08.880516',NULL,'2026-01-07 15:19:08.880516',0.00,1,'2026-01-07 18:18:54.812000',0,0.00,'2026-01-07 18:58:54.812000',24000.00,1,24000.00,18000.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','d8505791-da81-44c7-8de3-120ccc706664','7405f843-0345-470d-9f95-94e777d71684'),('66ff82a9-544d-41c7-90c7-dff5f161f8e8','2026-01-07 15:08:52.031001',NULL,'2026-01-07 15:08:52.031001',0.00,1,'2026-01-07 18:08:37.662000',0,0.00,'2026-01-07 18:23:37.662000',15400.00,1,15400.00,9200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','8ce6decd-74ee-4834-8045-9ad924727671','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('6878b633-2b59-4c78-a879-0807527a807e','2026-01-07 15:19:25.988491',NULL,'2026-01-07 15:19:25.988491',0.00,1,'2026-01-07 18:19:10.070000',0,0.00,'2026-01-07 18:34:10.070000',9800.00,1,9800.00,6000.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','404c81a9-d340-48e7-b573-a98d3de41bd2','7405f843-0345-470d-9f95-94e777d71684'),('6a4a92cc-aae3-4646-99af-ac49000fdb94','2026-01-07 15:15:35.362822',NULL,'2026-01-07 15:15:35.362822',0.00,1,'2026-01-07 18:15:20.783000',0,0.00,'2026-01-07 18:35:20.783000',13800.00,0,13800.00,10200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','2066fb5c-50a2-448a-9260-f7ea9650b0b5','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('72fcb942-17fe-4c9b-829c-34891c62dca3','2026-01-07 15:20:37.826863',NULL,'2026-01-07 15:20:37.826863',0.00,1,'2026-01-07 18:20:06.303000',0,0.00,'2026-01-07 19:30:06.303000',35700.00,1,35700.00,32800.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','3647e139-934b-420b-9b1b-36b4a3ba60e1','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('7b8385a8-1174-4922-8d12-b4758a4eb91d','2026-01-07 15:12:35.709122',NULL,'2026-01-07 15:12:35.709122',0.00,1,'2026-01-07 18:12:25.580000',0,0.00,'2026-01-07 19:02:25.580000',33000.00,0,33000.00,21200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','0ec74d93-8675-4398-aabb-7f9b358224da','7405f843-0345-470d-9f95-94e777d71684'),('8a020ca9-f1ea-4281-9ad3-ca2b921c6148','2026-01-07 15:18:11.193653',NULL,'2026-01-07 15:18:11.193653',0.00,1,'2026-01-07 18:17:45.035000',0,0.00,'2026-01-07 19:07:45.035000',10400.00,0,10400.00,29200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','ec6afca9-5fa5-4a0e-a096-cdf965f90063','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('8d90aa90-678a-4e74-ab30-eec738c2bd90','2026-01-07 15:08:22.897339',NULL,'2026-01-07 15:08:22.897339',0.00,1,'2026-01-07 18:08:09.882000',0,0.00,'2026-01-07 18:23:09.882000',16200.00,1,16200.00,10800.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','221817ef-3d2b-4ff4-bbc6-89cac2069f57','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('8eb56f10-159e-4ab1-9b6e-a7e1d8ee0fc4','2026-01-07 15:17:11.976343',NULL,'2026-01-07 15:17:11.976343',0.00,1,'2026-01-07 18:16:43.466000',0,0.00,'2026-01-07 18:46:43.466000',21200.00,0,21200.00,10200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','c3ef2097-da40-4656-a183-a327922b7799','7405f843-0345-470d-9f95-94e777d71684'),('970f6b37-59b8-4e18-92ca-e262529bbf92','2026-01-07 15:17:43.590768',NULL,'2026-01-07 15:17:43.590768',0.00,1,'2026-01-07 18:17:29.388000',0,0.00,'2026-01-07 18:47:29.388000',5600.00,0,5600.00,3200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','c4462a7d-5f71-48bb-aa19-f30f152879fa','7405f843-0345-470d-9f95-94e777d71684'),('a2cf8609-5f89-4fd3-9141-4304712d57d3','2026-01-07 15:22:22.571498',NULL,'2026-01-07 15:23:42.758600',0.00,3,'2026-01-07 18:21:50.601000',0,0.00,'2026-01-07 18:36:50.601000',16200.00,1,16200.00,10600.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','4c2a81de-f822-41e0-9f11-05fd5c1904c1','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('a873329f-aa93-4898-9690-b1d65c5234d7','2026-01-07 15:19:44.545661',NULL,'2026-01-07 15:24:08.125752',0.00,2,'2026-01-07 18:19:37.191000',0,0.00,'2026-01-07 18:29:37.191000',2700.00,1,2700.00,1300.00,NULL,'005e6309-4b50-4046-9a16-cdee3bf4dec3','4631e438-6c71-4657-90fc-acf11a3e355e','7405f843-0345-470d-9f95-94e777d71684'),('b2e7a54e-2555-47b3-9950-0058bee508b0','2026-01-07 15:20:56.608864',NULL,'2026-01-07 15:23:57.867195',0.00,0,'2026-01-07 18:20:39.048000',0,0.00,'2026-01-07 18:45:39.048000',6600.00,0,6600.00,15200.00,NULL,'d8499c8f-57a0-4727-92c5-cf74c209853b','872382e6-0d39-40c4-8407-80f623ed99a3','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('b7c70a26-b339-4558-bb16-89398237989c','2026-01-07 15:18:53.660815',NULL,'2026-01-07 15:18:53.660815',0.00,1,'2026-01-07 18:18:26.427000',0,0.00,'2026-01-07 18:48:26.427000',22600.00,1,22600.00,14000.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','c7c66847-a4ae-4a8d-8517-644b4eabe4bb','7405f843-0345-470d-9f95-94e777d71684'),('b8d10dcf-78bb-4958-bb32-ef157a9cb2e5','2026-01-07 15:15:02.556463',NULL,'2026-01-07 15:15:02.556463',0.00,1,'2026-01-07 18:12:37.986000',0,0.00,'2026-01-07 18:32:37.986000',5400.00,1,5400.00,2600.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','9f82346f-7fea-4f78-b2eb-00ea9cd8271c','7405f843-0345-470d-9f95-94e777d71684'),('c15db6d3-87b5-4432-a570-b1a72197515b','2026-01-07 15:22:55.034536',NULL,'2026-01-07 15:23:30.516374',0.00,0,'2026-01-07 18:22:39.515000',0,0.00,'2026-01-07 18:47:39.515000',6500.00,1,6500.00,3400.00,NULL,'005e6309-4b50-4046-9a16-cdee3bf4dec3','193c5571-10a1-415d-81ca-b59b060e66ac','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('c2a24cf4-5188-42eb-9d4a-07e461ca3c4d','2026-01-07 15:20:00.503419',NULL,'2026-01-07 15:24:16.506602',0.00,4,'2026-01-07 18:19:45.991000',0,0.00,'2026-01-07 18:59:45.991000',20600.00,1,20600.00,12100.00,NULL,'1d86458a-3384-4fb5-aae1-52dc31ef38a2','880f98c8-7485-49c1-8205-19ccb1921f4c','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('c77f839c-a1f6-40ec-a82d-7eb55fd01263','2026-01-07 15:21:49.368177',NULL,'2026-01-07 15:21:49.368177',0.00,1,'2026-01-07 18:21:28.481000',0,0.00,'2026-01-07 18:51:28.481000',17800.00,1,17800.00,11800.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','1b8c21fc-df2f-4876-94b9-98a817ab4aad','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('cd4e8d84-6cf9-441f-8643-5336ea9c0c27','2026-01-07 15:08:36.007315',NULL,'2026-01-07 15:08:36.007315',0.00,1,'2026-01-07 18:08:24.209000',0,0.00,'2026-01-07 18:23:24.209000',3200.00,0,3200.00,1700.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','59cf4f98-6c78-4010-8ef8-0fa30569fa77','7405f843-0345-470d-9f95-94e777d71684'),('d592b469-07d9-4c3c-9906-b1ed1c0fdcee','2026-01-07 15:19:35.942653',NULL,'2026-01-07 15:19:35.942653',0.00,1,'2026-01-07 18:19:27.046000',0,0.00,'2026-01-07 18:34:27.046000',18200.00,0,18200.00,8600.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','7c240226-fee8-4c79-8cae-07ad634a034b','38a1c255-8041-4089-a9bb-f0bb0b298fb4'),('ef4cae7f-229a-4207-bcb1-96dce5ab19f2','2026-01-07 15:06:31.318445',NULL,'2026-01-07 15:06:31.318445',0.00,1,'2026-01-07 18:01:07.318000',0,0.00,'2026-01-07 18:31:07.318000',36400.00,1,36400.00,17200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','ba4896c8-8524-421c-9edd-2028fcb7c33c','7405f843-0345-470d-9f95-94e777d71684'),('ff66a053-3339-4a20-857f-8a168374c471','2026-01-07 15:07:43.385375',NULL,'2026-01-07 15:07:43.385375',0.00,1,'2026-01-07 18:07:11.863000',0,0.00,'2026-01-07 18:37:11.863000',27600.00,1,27600.00,14200.00,NULL,'c07099e5-ef5b-4eb8-bc40-42c9b02c6ea1','36e3616c-90bc-4322-86a2-b6124fd92424','7405f843-0345-470d-9f95-94e777d71684');
/*!40000 ALTER TABLE `pedido_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_venta_detalle`
--

DROP TABLE IF EXISTS `pedido_venta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_venta_detalle`
--

LOCK TABLES `pedido_venta_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_venta_detalle` DISABLE KEYS */;
INSERT INTO `pedido_venta_detalle` VALUES ('0039534e-6824-49bd-a0ea-b260bf64b044','2026-01-07 15:20:56.609150',NULL,'2026-01-07 15:20:56.609150',1,2000,NULL,'e88b3b53-b863-41db-bcf5-60f59f2640bd'),('019dbe63-97f1-426c-a7ee-bb1e6c0490de','2026-01-07 15:15:02.557661',NULL,'2026-01-07 15:15:02.557661',2,3000,NULL,'8f34f9e7-d1bf-486d-ad07-6006f40dd8a2'),('01f3e388-5787-4197-a82d-570bd08b1d03','2026-01-07 15:22:37.777006',NULL,'2026-01-07 15:22:37.777006',1,1200,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('08161edf-c4dd-4ba0-b834-f7b0ad0d5c5f','2026-01-07 15:22:22.571820',NULL,'2026-01-07 15:22:22.571820',1,1200,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('0d266882-8729-4d61-9ef6-1801cd046bb8','2026-01-07 15:12:35.709533',NULL,'2026-01-07 15:12:35.709533',2,3000,NULL,'cd150b43-9149-4d61-a3e0-6f0499fadaa8'),('0f79bf73-ef85-4876-9c6e-d7f9fa848a35','2026-01-07 15:19:44.546042',NULL,'2026-01-07 15:19:44.546042',1,1200,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('11ac16ba-df7c-49dd-afac-3c2e3fbd1d26','2026-01-07 15:17:43.591569',NULL,'2026-01-07 15:17:43.591569',2,2400,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('1651cc11-3d40-42e2-a59d-f48dd5796ec1','2026-01-07 15:18:11.194130',NULL,'2026-01-07 15:18:11.194130',2,4000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('16cca28e-83f5-4961-af8e-fcd0b8371456','2026-01-07 15:07:06.304158',NULL,'2026-01-07 15:07:06.304158',1,2600,NULL,'d0f79809-ea66-44e3-a50f-07b8a1782d3e'),('1af21606-94fb-4cb3-831e-5cc8eb34e991','2026-01-07 15:22:37.777299',NULL,'2026-01-07 15:22:37.777299',1,1200,'89b7e2a5-97cb-473c-9ec6-cdfb3d88b8b6',NULL),('1b82d1a1-057f-4a22-9e71-3c6041c1a959','2026-01-07 15:20:00.505967',NULL,'2026-01-07 15:20:00.505967',3,3600,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('1c3b13ea-914a-4ed1-90f1-5ea28b198cce','2026-01-07 15:18:53.661067',NULL,'2026-01-07 15:18:53.661067',1,13000,NULL,'b5f091d0-81f2-40d1-a829-9a4fd2ac3793'),('1cd1bc5c-a7b8-408e-982a-88a1d0178bb6','2026-01-07 15:08:08.810145',NULL,'2026-01-07 15:08:08.810145',1,2000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('20be9ca2-3a1b-490d-994f-b64e3965fb30','2026-01-07 15:22:37.777189',NULL,'2026-01-07 15:22:37.777189',3,6000,NULL,'a1fd2618-8585-406f-9624-782992a10b0d'),('20d57f76-286c-4145-8947-25d5874de70a','2026-01-07 15:15:19.428046',NULL,'2026-01-07 15:15:19.428046',2,32000,NULL,'2863d9ce-b70d-4cab-b87a-9810eadd2c3a'),('2555713e-6e93-4672-8804-7f71db2460a7','2026-01-07 15:07:43.386220',NULL,'2026-01-07 15:07:43.386220',1,17000,NULL,'16a157e1-4225-4c3f-bf1e-c03034f8285d'),('258a67e5-37a9-4bb3-aef0-5c421bd51abb','2026-01-07 15:20:00.504139',NULL,'2026-01-07 15:20:00.504139',1,13000,NULL,'b5f091d0-81f2-40d1-a829-9a4fd2ac3793'),('27e2d826-4211-4960-8136-1418961b6a05','2026-01-07 15:07:06.305018',NULL,'2026-01-07 15:07:06.305018',1,1800,'a1c3ce9f-8bda-4b3b-8a8a-b3857551763e',NULL),('29572a0e-5b83-45c3-9cd5-54393f353861','2026-01-07 15:17:11.976793',NULL,'2026-01-07 15:17:11.976793',1,17000,NULL,'16a157e1-4225-4c3f-bf1e-c03034f8285d'),('2d9299f4-4af0-4713-b4a6-f155234d831c','2026-01-07 15:19:44.545933',NULL,'2026-01-07 15:19:44.545933',1,1500,NULL,'8f34f9e7-d1bf-486d-ad07-6006f40dd8a2'),('31a66df5-2055-4901-ad34-0fd7b514a310','2026-01-07 15:19:35.942995',NULL,'2026-01-07 15:19:35.942995',1,17000,NULL,'16a157e1-4225-4c3f-bf1e-c03034f8285d'),('31c78e7f-81c0-4c58-9688-dc4c4ea294f0','2026-01-07 15:19:25.988703',NULL,'2026-01-07 15:19:25.988703',1,8000,NULL,'02f57816-81fe-4004-8a28-f3317879932d'),('37e15925-7d08-45ef-9e81-752a940424f6','2026-01-07 15:08:36.008406',NULL,'2026-01-07 15:08:36.008406',1,1200,'4cb8e22c-4942-4f35-ae46-712575f408e4',NULL),('388f1361-5008-4b90-b8cf-259b01149cd5','2026-01-07 15:19:25.988836',NULL,'2026-01-07 15:19:25.988836',1,1800,'61ceb294-fe0c-44c7-86e2-d2071d456d3b',NULL),('3a3e17a8-089b-4c7b-8093-e3341b541fb6','2026-01-07 15:20:37.827493',NULL,'2026-01-07 15:20:37.827493',2,26000,NULL,'b5f091d0-81f2-40d1-a829-9a4fd2ac3793'),('3f34d8bb-a073-49fc-8738-239ceb12de44','2026-01-07 15:16:42.410389',NULL,'2026-01-07 15:16:42.410389',2,4000,NULL,'a1fd2618-8585-406f-9624-782992a10b0d'),('4b6a96b3-1a67-4ef4-b3cb-b5360de221d5','2026-01-07 15:17:11.977288',NULL,'2026-01-07 15:17:11.977288',1,2600,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('50b63c0b-5786-4666-8dcf-17f147880c4f','2026-01-07 15:20:00.505005',NULL,'2026-01-07 15:20:00.505005',1,2000,NULL,'a1fd2618-8585-406f-9624-782992a10b0d'),('56f4c55b-19de-4f5a-8264-1de503b468f3','2026-01-07 15:07:43.385900',NULL,'2026-01-07 15:07:43.385900',1,8000,NULL,'02f57816-81fe-4004-8a28-f3317879932d'),('5743333c-6569-4d28-96bf-59c87b04067a','2026-01-07 15:12:24.474531',NULL,'2026-01-07 15:12:24.474531',1,12000,NULL,'9a74132c-d6b4-4957-b7a2-a17722bbe435'),('597bdd05-0ed6-4e9e-874c-fedce9953841','2026-01-07 15:08:22.898474',NULL,'2026-01-07 15:08:22.898474',1,1200,'9d86e367-56e8-4d14-b625-f92e2d8837f9',NULL),('5c82ac99-ae36-490d-87da-bc2d077dc8e0','2026-01-07 15:22:37.777130',NULL,'2026-01-07 15:22:37.777130',1,1500,NULL,'cd150b43-9149-4d61-a3e0-6f0499fadaa8'),('5e0f0ec6-b7d2-4f61-b7a8-febc8ea5738a','2026-01-07 15:12:24.474828',NULL,'2026-01-07 15:12:24.474828',1,1800,'a1c3ce9f-8bda-4b3b-8a8a-b3857551763e',NULL),('5f3ffc14-d611-41a4-b0dd-d96c34e1d31e','2026-01-07 15:20:37.827114',NULL,'2026-01-07 15:20:37.827114',1,1500,NULL,'cd150b43-9149-4d61-a3e0-6f0499fadaa8'),('60126cae-aca1-42e8-a7be-8f6992b60aa3','2026-01-07 15:15:35.363352',NULL,'2026-01-07 15:15:35.363352',1,1800,'6adfa272-bb97-4813-927a-8752721eadf1',NULL),('61e58a87-0c1a-4f6b-a757-4435da1e92ed','2026-01-07 15:06:31.319337',NULL,'2026-01-07 15:06:31.319337',2,2400,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('6846d528-d34b-44fd-bdd8-3a45f5bc0d43','2026-01-07 15:21:49.368391',NULL,'2026-01-07 15:21:49.368391',1,15000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('6ec6d576-e059-4836-9788-590705acba6b','2026-01-07 15:08:36.008156',NULL,'2026-01-07 15:08:36.008156',1,2000,NULL,'dfc0ee82-ab15-407d-a7db-4cfd4d4089e0'),('6ef894db-3cbe-4d76-a9e5-dfff6bbf7d3e','2026-01-07 15:17:11.977085',NULL,'2026-01-07 15:17:11.977085',1,1600,NULL,'8dc4e285-c468-414d-96e1-b1d7aeafd317'),('6f56c44d-0a5d-4b4e-b14f-5a9aa94005f8','2026-01-07 15:15:19.428266',NULL,'2026-01-07 15:15:19.428266',1,1500,NULL,'cd150b43-9149-4d61-a3e0-6f0499fadaa8'),('73fa4f7b-3861-4f66-ab6e-d2264da0bffc','2026-01-07 15:18:25.571242',NULL,'2026-01-07 15:18:25.571242',2,30000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('78216935-d1f5-4aa1-8991-243d7d9087ae','2026-01-07 15:21:49.368490',NULL,'2026-01-07 15:21:49.368490',1,1600,NULL,'8dc4e285-c468-414d-96e1-b1d7aeafd317'),('783e3b90-86a3-44e6-9f0e-c7a9452bf676','2026-01-07 15:07:43.386612',NULL,'2026-01-07 15:07:43.386612',1,2600,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('799e6755-db15-482c-ae3c-49858b120bb7','2026-01-07 15:22:37.777247',NULL,'2026-01-07 15:22:37.777247',2,2400,'73a8fe6b-2c90-40f0-9ba2-fe7f259f66af',NULL),('7bf3bd91-d7b2-4b9f-9829-05426c5bf311','2026-01-07 15:18:53.661169',NULL,'2026-01-07 15:18:53.661169',1,6000,NULL,'3d2c200e-344e-4d1a-ba41-3eb856ceb6da'),('7d84f45d-f671-4d37-9469-9d59c6442434','2026-01-07 15:20:56.609433',NULL,'2026-01-07 15:20:56.609433',1,2600,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('7e633cd9-e407-4fca-bad6-24c7655285cd','2026-01-07 15:22:22.571713',NULL,'2026-01-07 15:22:22.571713',1,15000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('7fb005a3-621f-4728-8ea9-de9f1de6ecea','2026-01-07 15:07:06.304351',NULL,'2026-01-07 15:07:06.304351',1,1500,NULL,'8f34f9e7-d1bf-486d-ad07-6006f40dd8a2'),('82254c71-05e1-498d-8137-6e0b3a0f7073','2026-01-07 15:22:37.776907',NULL,'2026-01-07 15:22:37.776907',1,15000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('824ead85-9e8b-4d00-90ee-bb28f1695db7','2026-01-07 15:20:37.827270',NULL,'2026-01-07 15:20:37.827270',1,2600,NULL,'d0f79809-ea66-44e3-a50f-07b8a1782d3e'),('8d48b39a-5a8c-416e-be15-f77e8ff90aa9','2026-01-07 15:15:02.558618',NULL,'2026-01-07 15:15:02.558618',2,2400,'4cb8e22c-4942-4f35-ae46-712575f408e4',NULL),('8d971df6-2fa3-4c28-a6d1-3f2033239cc1','2026-01-07 15:22:55.034917',NULL,'2026-01-07 15:22:55.034917',1,2600,NULL,'d0f79809-ea66-44e3-a50f-07b8a1782d3e'),('90460409-ab78-49f9-bcfd-aacf56b9cc9f','2026-01-07 15:06:31.318981',NULL,'2026-01-07 15:06:31.318981',2,34000,NULL,'16a157e1-4225-4c3f-bf1e-c03034f8285d'),('92384580-35d7-475a-9c68-fd03d6e4684a','2026-01-07 15:20:37.827407',NULL,'2026-01-07 15:20:37.827407',1,2000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('97f2fa21-f17d-4064-af4a-17278e6523e3','2026-01-07 15:19:08.880785',NULL,'2026-01-07 15:19:08.880785',2,24000,NULL,'9a74132c-d6b4-4957-b7a2-a17722bbe435'),('9a2854f0-2202-4d25-9ab4-30fde7b0e7e9','2026-01-07 15:15:35.363175',NULL,'2026-01-07 15:15:35.363175',1,12000,NULL,'9a74132c-d6b4-4957-b7a2-a17722bbe435'),('9afa3585-f592-4f84-a496-65c316a60a84','2026-01-07 15:16:42.410512',NULL,'2026-01-07 15:16:42.410512',1,2600,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('9cc27cae-e5c5-4ade-9ca0-d5528fd6b522','2026-01-07 15:12:24.474701',NULL,'2026-01-07 15:12:24.474701',1,1200,'9d86e367-56e8-4d14-b625-f92e2d8837f9',NULL),('9d35886b-4355-4d39-b0b0-e65b1cc6dd11','2026-01-07 15:18:53.661285',NULL,'2026-01-07 15:18:53.661285',1,1600,'af523105-ef1f-4df9-a812-ea69d70018f8',NULL),('9fe0d851-0045-4c2f-b157-c0488014b387','2026-01-07 15:08:08.810283',NULL,'2026-01-07 15:08:08.810283',1,1200,'73a8fe6b-2c90-40f0-9ba2-fe7f259f66af',NULL),('a0b6301f-e18a-4bad-b4f8-7d218235c934','2026-01-07 15:20:37.827591',NULL,'2026-01-07 15:20:37.827591',2,3600,'a1c3ce9f-8bda-4b3b-8a8a-b3857551763e',NULL),('a2d5989b-2c88-404d-9746-d63ca16ef1ac','2026-01-07 15:08:08.809945',NULL,'2026-01-07 15:08:08.809945',1,6000,NULL,'3d2c200e-344e-4d1a-ba41-3eb856ceb6da'),('ada3e9fb-deb4-41fd-b108-2fa86b5f640a','2026-01-07 15:18:11.193995',NULL,'2026-01-07 15:18:11.193995',2,4000,NULL,'e88b3b53-b863-41db-bcf5-60f59f2640bd'),('b0b0a515-0586-4c24-b276-6822a398b322','2026-01-07 15:17:27.901310',NULL,'2026-01-07 15:17:27.901310',1,2000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('bc87dcc5-a40d-4ec8-b5bb-595d86bf0427','2026-01-07 15:08:52.031462',NULL,'2026-01-07 15:08:52.031462',1,13000,NULL,'b5f091d0-81f2-40d1-a829-9a4fd2ac3793'),('c2f7b216-530f-4028-8379-3d5adf3a78ba','2026-01-07 15:19:35.943237',NULL,'2026-01-07 15:19:35.943237',1,1200,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('c30b63bd-2dae-4eba-8675-2c0e6b89b6cb','2026-01-07 15:20:00.503803',NULL,'2026-01-07 15:20:00.503803',1,2000,NULL,'dfc0ee82-ab15-407d-a7db-4cfd4d4089e0'),('c4f49026-2788-4d4e-ae4d-2c682ea4faf5','2026-01-07 15:17:27.901207',NULL,'2026-01-07 15:17:27.901207',1,1600,'af523105-ef1f-4df9-a812-ea69d70018f8',NULL),('c9223e48-3653-41f5-9b7b-d6351b976621','2026-01-07 15:21:49.368572',NULL,'2026-01-07 15:21:49.368572',1,1200,'5d288218-1670-4390-9fb8-d75c8ce547af',NULL),('ca8bed9e-1b52-4769-9e41-2b7754622376','2026-01-07 15:17:43.591151',NULL,'2026-01-07 15:17:43.591151',2,3200,NULL,'8dc4e285-c468-414d-96e1-b1d7aeafd317'),('d2179e25-32c1-45f6-9dea-8fcbd0895f57','2026-01-07 15:15:19.428366',NULL,'2026-01-07 15:15:19.428366',2,5200,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('de71f5a7-5dc2-49e7-8156-3b4ae55e724f','2026-01-07 15:22:37.777074',NULL,'2026-01-07 15:22:37.777074',1,2000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('e3c2067a-007d-418f-bb92-39bbfc8459fe','2026-01-07 15:18:25.571481',NULL,'2026-01-07 15:18:25.571481',2,3600,'61ceb294-fe0c-44c7-86e2-d2071d456d3b',NULL),('e3fdb0d4-692b-4909-8f11-465ab7f02783','2026-01-07 15:22:55.035135',NULL,'2026-01-07 15:22:55.035135',2,2400,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('f1e907d2-1490-4968-88d4-736decfe0362','2026-01-07 15:12:35.709816',NULL,'2026-01-07 15:12:35.709816',2,30000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('f4b2e3dd-e8e7-47d1-adf3-f918adb7a203','2026-01-07 15:20:56.609310',NULL,'2026-01-07 15:20:56.609310',1,2000,NULL,'f5f6858b-76eb-4fe0-bdea-868bd917d814'),('f56cf6ba-363c-458b-a052-e5fa75589750','2026-01-07 15:08:52.032573',NULL,'2026-01-07 15:08:52.032573',2,2400,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('f9c49495-2b74-456f-a30f-8a8799549ff8','2026-01-07 15:22:55.035070',NULL,'2026-01-07 15:22:55.035070',1,1500,NULL,'cd150b43-9149-4d61-a3e0-6f0499fadaa8'),('fc3a86a7-b7f3-41d4-9950-823f8140ab1e','2026-01-07 15:08:22.897721',NULL,'2026-01-07 15:08:22.897721',1,15000,NULL,'4c73f75a-81cb-433b-a4b3-5f17b000ea89'),('fc45522b-75fe-412b-9ba7-2b51275724a4','2026-01-07 15:18:11.194238',NULL,'2026-01-07 15:18:11.194238',2,2400,'1111515d-7d41-4fa9-a1d4-0ae44da1505f',NULL),('fd0c119f-ebd4-4c03-8678-8825604e6052','2026-01-07 15:18:53.661416',NULL,'2026-01-07 15:18:53.661416',1,2000,'efbccfbe-dabc-4a87-ad40-f8b750b8acd9',NULL);
/*!40000 ALTER TABLE `pedido_venta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_venta_detalle_promocion`
--

DROP TABLE IF EXISTS `pedido_venta_detalle_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_venta_detalle_promocion` (
  `pedido_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `promocion_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `FKklqjp2s08no82fxb42udvdwjb` (`promocion_id`),
  KEY `FKsr8otvesdreyqyxr6b9f2ma6w` (`pedido_venta_detalle_id`),
  CONSTRAINT `FKklqjp2s08no82fxb42udvdwjb` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`),
  CONSTRAINT `FKsr8otvesdreyqyxr6b9f2ma6w` FOREIGN KEY (`pedido_venta_detalle_id`) REFERENCES `pedido_venta_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_venta_detalle_promocion`
--

LOCK TABLES `pedido_venta_detalle_promocion` WRITE;
/*!40000 ALTER TABLE `pedido_venta_detalle_promocion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_venta_detalle_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_venta_pedido_venta_detalle`
--

DROP TABLE IF EXISTS `pedido_venta_pedido_venta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_venta_pedido_venta_detalle` (
  `pedido_venta_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pedido_venta_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK7mhya25e8t45hosjds5t084iu` (`pedido_venta_detalle_id`),
  KEY `FKjbktj6sjvur9icgdqec2bypt6` (`pedido_venta_id`),
  CONSTRAINT `FKbpwsn3pqbeeomhjy74sin17md` FOREIGN KEY (`pedido_venta_detalle_id`) REFERENCES `pedido_venta_detalle` (`id`),
  CONSTRAINT `FKjbktj6sjvur9icgdqec2bypt6` FOREIGN KEY (`pedido_venta_id`) REFERENCES `pedido_venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_venta_pedido_venta_detalle`
--

LOCK TABLES `pedido_venta_pedido_venta_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_venta_pedido_venta_detalle` DISABLE KEYS */;
INSERT INTO `pedido_venta_pedido_venta_detalle` VALUES ('001205b2-72a2-48d2-a61a-2467bc3adf81','b0b0a515-0586-4c24-b276-6822a398b322'),('001205b2-72a2-48d2-a61a-2467bc3adf81','c4f49026-2788-4d4e-ae4d-2c682ea4faf5'),('13798d8f-fde8-45c5-a4a7-8211015d9aa4','20d57f76-286c-4145-8947-25d5874de70a'),('13798d8f-fde8-45c5-a4a7-8211015d9aa4','6f56c44d-0a5d-4b4e-b14f-5a9aa94005f8'),('13798d8f-fde8-45c5-a4a7-8211015d9aa4','d2179e25-32c1-45f6-9dea-8fcbd0895f57'),('1bdde241-2f72-4441-b196-c9b9e4425be4','3f34d8bb-a073-49fc-8738-239ceb12de44'),('1bdde241-2f72-4441-b196-c9b9e4425be4','9afa3585-f592-4f84-a496-65c316a60a84'),('238a3399-3626-4248-a6c6-8f619607d21e','1cd1bc5c-a7b8-408e-982a-88a1d0178bb6'),('238a3399-3626-4248-a6c6-8f619607d21e','9fe0d851-0045-4c2f-b157-c0488014b387'),('238a3399-3626-4248-a6c6-8f619607d21e','a2d5989b-2c88-404d-9746-d63ca16ef1ac'),('3851801e-18e0-4f53-860a-86d2cb94dc32','5743333c-6569-4d28-96bf-59c87b04067a'),('3851801e-18e0-4f53-860a-86d2cb94dc32','5e0f0ec6-b7d2-4f61-b7a8-febc8ea5738a'),('3851801e-18e0-4f53-860a-86d2cb94dc32','9cc27cae-e5c5-4ade-9ca0-d5528fd6b522'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','01f3e388-5787-4197-a82d-570bd08b1d03'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','1af21606-94fb-4cb3-831e-5cc8eb34e991'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','20be9ca2-3a1b-490d-994f-b64e3965fb30'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','5c82ac99-ae36-490d-87da-bc2d077dc8e0'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','799e6755-db15-482c-ae3c-49858b120bb7'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','82254c71-05e1-498d-8137-6e0b3a0f7073'),('3b2564f2-0107-4e37-8d69-65acd49a6e22','de71f5a7-5dc2-49e7-8156-3b4ae55e724f'),('40e65c6b-3022-40d0-84fe-5df3d649e617','73fa4f7b-3861-4f66-ab6e-d2264da0bffc'),('40e65c6b-3022-40d0-84fe-5df3d649e617','e3c2067a-007d-418f-bb92-39bbfc8459fe'),('425dd2b3-5400-46a6-8678-57a40d394428','16cca28e-83f5-4961-af8e-fcd0b8371456'),('425dd2b3-5400-46a6-8678-57a40d394428','27e2d826-4211-4960-8136-1418961b6a05'),('425dd2b3-5400-46a6-8678-57a40d394428','7fb005a3-621f-4728-8ea9-de9f1de6ecea'),('589ec655-5114-4ac2-b655-fde5eea9d7cd','97f2fa21-f17d-4064-af4a-17278e6523e3'),('66ff82a9-544d-41c7-90c7-dff5f161f8e8','bc87dcc5-a40d-4ec8-b5bb-595d86bf0427'),('66ff82a9-544d-41c7-90c7-dff5f161f8e8','f56cf6ba-363c-458b-a052-e5fa75589750'),('6878b633-2b59-4c78-a879-0807527a807e','31c78e7f-81c0-4c58-9688-dc4c4ea294f0'),('6878b633-2b59-4c78-a879-0807527a807e','388f1361-5008-4b90-b8cf-259b01149cd5'),('6a4a92cc-aae3-4646-99af-ac49000fdb94','60126cae-aca1-42e8-a7be-8f6992b60aa3'),('6a4a92cc-aae3-4646-99af-ac49000fdb94','9a2854f0-2202-4d25-9ab4-30fde7b0e7e9'),('72fcb942-17fe-4c9b-829c-34891c62dca3','3a3e17a8-089b-4c7b-8093-e3341b541fb6'),('72fcb942-17fe-4c9b-829c-34891c62dca3','5f3ffc14-d611-41a4-b0dd-d96c34e1d31e'),('72fcb942-17fe-4c9b-829c-34891c62dca3','824ead85-9e8b-4d00-90ee-bb28f1695db7'),('72fcb942-17fe-4c9b-829c-34891c62dca3','92384580-35d7-475a-9c68-fd03d6e4684a'),('72fcb942-17fe-4c9b-829c-34891c62dca3','a0b6301f-e18a-4bad-b4f8-7d218235c934'),('7b8385a8-1174-4922-8d12-b4758a4eb91d','0d266882-8729-4d61-9ef6-1801cd046bb8'),('7b8385a8-1174-4922-8d12-b4758a4eb91d','f1e907d2-1490-4968-88d4-736decfe0362'),('8a020ca9-f1ea-4281-9ad3-ca2b921c6148','1651cc11-3d40-42e2-a59d-f48dd5796ec1'),('8a020ca9-f1ea-4281-9ad3-ca2b921c6148','ada3e9fb-deb4-41fd-b108-2fa86b5f640a'),('8a020ca9-f1ea-4281-9ad3-ca2b921c6148','fc45522b-75fe-412b-9ba7-2b51275724a4'),('8d90aa90-678a-4e74-ab30-eec738c2bd90','597bdd05-0ed6-4e9e-874c-fedce9953841'),('8d90aa90-678a-4e74-ab30-eec738c2bd90','fc3a86a7-b7f3-41d4-9950-823f8140ab1e'),('8eb56f10-159e-4ab1-9b6e-a7e1d8ee0fc4','29572a0e-5b83-45c3-9cd5-54393f353861'),('8eb56f10-159e-4ab1-9b6e-a7e1d8ee0fc4','4b6a96b3-1a67-4ef4-b3cb-b5360de221d5'),('8eb56f10-159e-4ab1-9b6e-a7e1d8ee0fc4','6ef894db-3cbe-4d76-a9e5-dfff6bbf7d3e'),('970f6b37-59b8-4e18-92ca-e262529bbf92','11ac16ba-df7c-49dd-afac-3c2e3fbd1d26'),('970f6b37-59b8-4e18-92ca-e262529bbf92','ca8bed9e-1b52-4769-9e41-2b7754622376'),('a2cf8609-5f89-4fd3-9141-4304712d57d3','08161edf-c4dd-4ba0-b834-f7b0ad0d5c5f'),('a2cf8609-5f89-4fd3-9141-4304712d57d3','7e633cd9-e407-4fca-bad6-24c7655285cd'),('a873329f-aa93-4898-9690-b1d65c5234d7','0f79bf73-ef85-4876-9c6e-d7f9fa848a35'),('a873329f-aa93-4898-9690-b1d65c5234d7','2d9299f4-4af0-4713-b4a6-f155234d831c'),('b2e7a54e-2555-47b3-9950-0058bee508b0','0039534e-6824-49bd-a0ea-b260bf64b044'),('b2e7a54e-2555-47b3-9950-0058bee508b0','7d84f45d-f671-4d37-9469-9d59c6442434'),('b2e7a54e-2555-47b3-9950-0058bee508b0','f4b2e3dd-e8e7-47d1-adf3-f918adb7a203'),('b7c70a26-b339-4558-bb16-89398237989c','1c3b13ea-914a-4ed1-90f1-5ea28b198cce'),('b7c70a26-b339-4558-bb16-89398237989c','7bf3bd91-d7b2-4b9f-9829-05426c5bf311'),('b7c70a26-b339-4558-bb16-89398237989c','9d35886b-4355-4d39-b0b0-e65b1cc6dd11'),('b7c70a26-b339-4558-bb16-89398237989c','fd0c119f-ebd4-4c03-8678-8825604e6052'),('b8d10dcf-78bb-4958-bb32-ef157a9cb2e5','019dbe63-97f1-426c-a7ee-bb1e6c0490de'),('b8d10dcf-78bb-4958-bb32-ef157a9cb2e5','8d48b39a-5a8c-416e-be15-f77e8ff90aa9'),('c15db6d3-87b5-4432-a570-b1a72197515b','8d971df6-2fa3-4c28-a6d1-3f2033239cc1'),('c15db6d3-87b5-4432-a570-b1a72197515b','e3fdb0d4-692b-4909-8f11-465ab7f02783'),('c15db6d3-87b5-4432-a570-b1a72197515b','f9c49495-2b74-456f-a30f-8a8799549ff8'),('c2a24cf4-5188-42eb-9d4a-07e461ca3c4d','1b82d1a1-057f-4a22-9e71-3c6041c1a959'),('c2a24cf4-5188-42eb-9d4a-07e461ca3c4d','258a67e5-37a9-4bb3-aef0-5c421bd51abb'),('c2a24cf4-5188-42eb-9d4a-07e461ca3c4d','50b63c0b-5786-4666-8dcf-17f147880c4f'),('c2a24cf4-5188-42eb-9d4a-07e461ca3c4d','c30b63bd-2dae-4eba-8675-2c0e6b89b6cb'),('c77f839c-a1f6-40ec-a82d-7eb55fd01263','6846d528-d34b-44fd-bdd8-3a45f5bc0d43'),('c77f839c-a1f6-40ec-a82d-7eb55fd01263','78216935-d1f5-4aa1-8991-243d7d9087ae'),('c77f839c-a1f6-40ec-a82d-7eb55fd01263','c9223e48-3653-41f5-9b7b-d6351b976621'),('cd4e8d84-6cf9-441f-8643-5336ea9c0c27','37e15925-7d08-45ef-9e81-752a940424f6'),('cd4e8d84-6cf9-441f-8643-5336ea9c0c27','6ec6d576-e059-4836-9788-590705acba6b'),('d592b469-07d9-4c3c-9906-b1ed1c0fdcee','31a66df5-2055-4901-ad34-0fd7b514a310'),('d592b469-07d9-4c3c-9906-b1ed1c0fdcee','c2f7b216-530f-4028-8379-3d5adf3a78ba'),('ef4cae7f-229a-4207-bcb1-96dce5ab19f2','61e58a87-0c1a-4f6b-a757-4435da1e92ed'),('ef4cae7f-229a-4207-bcb1-96dce5ab19f2','90460409-ab78-49f9-bcfd-aacf56b9cc9f'),('ff66a053-3339-4a20-857f-8a168374c471','2555713e-6e93-4672-8804-7f71db2460a7'),('ff66a053-3339-4a20-857f-8a168374c471','56f4c55b-19de-4f5a-8264-1de503b468f3'),('ff66a053-3339-4a20-857f-8a168374c471','783e3b90-86a3-44e6-9f0e-c7a9452bf676');
/*!40000 ALTER TABLE `pedido_venta_pedido_venta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES ('133c4d3d-d3ed-431e-b5c4-9c6fa8c2c584','2026-01-07 14:04:47.402706',NULL,'2026-01-07 14:04:47.402706','Papas Amigos',50,'2026-01-07 17:02:58.761000','2026-02-28 17:02:58.761000'),('7a44acd0-4c62-4ced-b6d3-02d61164a18a','2026-01-07 14:06:33.861572',NULL,'2026-01-07 14:06:33.861572','Burger + Coca cola',10,'2026-01-07 17:05:05.515000','2026-01-31 03:00:00.000000'),('90efd76c-372a-45ff-8c06-d65614c3a536','2026-01-07 14:08:02.464639',NULL,'2026-01-07 14:08:02.464639','Pizza + gaseosa',10,'2026-01-07 17:06:40.809000','2026-02-28 17:06:40.809000'),('a52063ed-7063-48c5-b813-f8696fcf4a8f','2026-01-07 14:09:20.791390',NULL,'2026-01-07 14:09:20.791390','Burger para 2',10,'2026-01-07 17:08:15.786000','2026-01-07 17:08:15.786000'),('da24ac66-ee3e-4e6f-8c21-2346a309a57a','2026-01-07 14:10:30.994583',NULL,'2026-01-07 14:10:30.994583','25 OFF Papas',25,'2026-01-07 17:09:22.355000','2026-02-28 17:09:22.355000');
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion_detalle`
--

DROP TABLE IF EXISTS `promocion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion_detalle`
--

LOCK TABLES `promocion_detalle` WRITE;
/*!40000 ALTER TABLE `promocion_detalle` DISABLE KEYS */;
INSERT INTO `promocion_detalle` VALUES ('16e1daec-cef7-45e1-9ad0-537b0d4a0834','2026-01-07 14:09:20.792336',NULL,'2026-01-07 14:09:20.792336',1,'a9d3ca7b-50e9-42c0-9f85-7344de625f80',NULL),('4f8aca4d-077d-4c37-be32-59257c39d3ba','2026-01-07 14:04:47.408070',NULL,'2026-01-07 14:04:47.408070',2,NULL,'8dc4e285-c468-414d-96e1-b1d7aeafd317'),('5a9aa0ea-3c9f-4d89-94ff-ef2be423feb7','2026-01-07 14:10:30.995787',NULL,'2026-01-07 14:10:30.995787',1,NULL,'dfc0ee82-ab15-407d-a7db-4cfd4d4089e0'),('5dcf4cb0-1c20-4bb7-bac4-43cc4a9348d0','2026-01-07 14:08:02.465555',NULL,'2026-01-07 14:08:02.465555',1,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('6b46f6af-77b2-4112-85ce-a5b041a54d68','2026-01-07 14:06:33.862686',NULL,'2026-01-07 14:06:33.862686',1,'a1c3ce9f-8bda-4b3b-8a8a-b3857551763e',NULL),('735e3af0-4860-4a0f-be8f-7269d41e5c4d','2026-01-07 14:08:02.465293',NULL,'2026-01-07 14:08:02.465293',1,NULL,'3d2c200e-344e-4d1a-ba41-3eb856ceb6da'),('78eac2a3-c9a9-438a-9752-019eaaa5bbea','2026-01-07 14:09:20.791742',NULL,'2026-01-07 14:09:20.791742',2,NULL,'16a157e1-4225-4c3f-bf1e-c03034f8285d'),('8894323f-57f8-4a1f-971a-3d05aa6d036a','2026-01-07 14:10:30.996353',NULL,'2026-01-07 14:10:30.996353',1,'89b7e2a5-97cb-473c-9ec6-cdfb3d88b8b6',NULL),('8a27e0b6-4a7b-435e-9a63-fe473a661423','2026-01-07 14:04:47.412748',NULL,'2026-01-07 14:04:47.412748',1,'4026f5fb-cad8-4fac-a440-1c1d70478e22',NULL),('ebc3782e-8143-41c9-b524-2b588183bd0b','2026-01-07 14:06:33.862159',NULL,'2026-01-07 14:06:33.862159',1,NULL,'02f57816-81fe-4004-8a28-f3317879932d');
/*!40000 ALTER TABLE `promocion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion_promocion_detalle`
--

DROP TABLE IF EXISTS `promocion_promocion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocion_promocion_detalle` (
  `promocion_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `promocion_detalle_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `UK6uspkqtg54sg7n182fsu3bqek` (`promocion_detalle_id`),
  KEY `FKb8bycn4ukkwumthv51lq4h2dr` (`promocion_id`),
  CONSTRAINT `FKb8bycn4ukkwumthv51lq4h2dr` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`),
  CONSTRAINT `FKdartjme6f5y4qa9desfh07u7t` FOREIGN KEY (`promocion_detalle_id`) REFERENCES `promocion_detalle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion_promocion_detalle`
--

LOCK TABLES `promocion_promocion_detalle` WRITE;
/*!40000 ALTER TABLE `promocion_promocion_detalle` DISABLE KEYS */;
INSERT INTO `promocion_promocion_detalle` VALUES ('133c4d3d-d3ed-431e-b5c4-9c6fa8c2c584','4f8aca4d-077d-4c37-be32-59257c39d3ba'),('133c4d3d-d3ed-431e-b5c4-9c6fa8c2c584','8a27e0b6-4a7b-435e-9a63-fe473a661423'),('7a44acd0-4c62-4ced-b6d3-02d61164a18a','6b46f6af-77b2-4112-85ce-a5b041a54d68'),('7a44acd0-4c62-4ced-b6d3-02d61164a18a','ebc3782e-8143-41c9-b524-2b588183bd0b'),('90efd76c-372a-45ff-8c06-d65614c3a536','5dcf4cb0-1c20-4bb7-bac4-43cc4a9348d0'),('90efd76c-372a-45ff-8c06-d65614c3a536','735e3af0-4860-4a0f-be8f-7269d41e5c4d'),('a52063ed-7063-48c5-b813-f8696fcf4a8f','16e1daec-cef7-45e1-9ad0-537b0d4a0834'),('a52063ed-7063-48c5-b813-f8696fcf4a8f','78eac2a3-c9a9-438a-9752-019eaaa5bbea'),('da24ac66-ee3e-4e6f-8c21-2346a309a57a','5a9aa0ea-3c9f-4d89-94ff-ef2be423feb7'),('da24ac66-ee3e-4e6f-8c21-2346a309a57a','8894323f-57f8-4a1f-971a-3d05aa6d036a');
/*!40000 ALTER TABLE `promocion_promocion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES ('013c76b0-546d-46fb-b4de-bf6afa9abce2','2025-12-17 00:50:59.038201',NULL,'2025-12-17 00:50:59.038201','Mendoza','b899dac1-a46d-41af-8f1a-63c1ec0243f3'),('0b1bb9d5-b838-47b9-a447-5b1351649c91','2025-12-11 23:50:58.945392',NULL,'2025-12-11 23:50:58.945392','Mendoza','9546aa2e-0f9a-439c-9621-bb097b77d768'),('1c0286e4-643d-4251-9294-aea9945c6f65','2025-12-11 23:48:40.302551',NULL,'2025-12-11 23:48:40.302551','Mendoza','5afc00f0-a59a-4645-b797-ea03c32d0805'),('2cc9dee2-2f71-404e-b4b5-d571bc5599a2','2025-12-17 01:07:43.476932',NULL,'2025-12-17 01:07:43.476932','Mendoza','6e8cdf1f-8f9e-4066-8bae-4487e45a3aaf'),('2e5c5c25-7c70-4431-9426-684b355681b9','2025-12-17 00:57:38.424998',NULL,'2025-12-17 00:57:38.424998','Mendoza','bccc8aa6-966d-4dc2-bc5b-86faf98f13d1'),('3dd0432f-b7ee-4f6b-a352-8efe041d540b','2025-12-12 01:01:38.921484',NULL,'2025-12-12 01:01:38.921484','Mendoza','81c8a69a-4806-4bc5-ae1b-da199e41ddeb'),('3e25ae6e-6a50-4136-80ba-7e1a27130dd9','2025-12-12 01:02:53.823030',NULL,'2025-12-12 01:02:53.823030','Mendoza','f8030551-c96d-4090-91a4-4eba68e323ff'),('52da1993-14d8-46a4-aa59-a684ae1665b3','2025-12-17 00:55:38.829063',NULL,'2025-12-17 00:55:38.829063','Mendoza','fc5eac56-f513-4f07-b7fb-aaa610908396'),('5ec8412d-80d4-4cb6-90ed-0d5c50419c46','2025-12-12 01:06:23.522685',NULL,'2025-12-12 01:06:23.522685','Mendoza','21403b87-c498-4973-9cb3-68f57a755f81'),('67b0c83f-2684-4e59-b329-a676283f7c03','2025-12-12 01:24:17.464733',NULL,'2025-12-12 01:24:17.464733','Mendoza','5d562e4d-11e0-4c15-8b11-f67f5ac261e7'),('68af2c82-4970-4e93-b29a-45e7e4b13b56','2025-12-12 01:23:17.201803',NULL,'2025-12-12 01:23:17.201803','Mendoza','a4764644-9019-4459-8bd8-09142a23eb32'),('6aeb12a9-3dfc-4307-ba10-ac19deee2664','2025-12-17 01:00:30.085342',NULL,'2025-12-17 01:00:30.085342','Mendoza','adfd7bd1-c34e-4014-9741-6ab62e80d365'),('75d6bbba-b97b-49e3-8bd1-343810e3a03b','2025-12-17 00:37:54.136628',NULL,'2025-12-17 00:37:54.136628','Mendoza','77863523-69e0-4c61-8ab8-55408e9d6e6a'),('817e3a4d-06e5-4a1d-a527-2f0a5c95c983','2025-12-17 01:09:06.231267',NULL,'2025-12-17 01:09:06.231267','Mendoza','d4ddea87-a02a-4f96-bb6b-ec0fd8c261af'),('91e09c19-95ee-41f2-a638-617097bae063','2025-12-12 01:13:30.049189',NULL,'2025-12-12 01:13:30.049189','Mendoza','d37da24b-7f64-437a-8bb7-caa4677e136c'),('aa2d429b-96b8-487d-b605-05b5c92695cb','2025-12-12 01:11:49.904276',NULL,'2025-12-12 01:11:49.904276','Mendoza','aac99cf8-8e8c-4ad3-b34e-25bcf4808088'),('b46f44b0-ee4d-4163-a38c-498fde02a9b1','2025-12-17 00:46:27.505319',NULL,'2025-12-17 00:46:27.505319','Mendoza','2a56ea7e-29bf-4d3f-be93-fcd8e45a5506');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_empresa`
--

DROP TABLE IF EXISTS `sucursal_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_empresa`
--

LOCK TABLES `sucursal_empresa` WRITE;
/*!40000 ALTER TABLE `sucursal_empresa` DISABLE KEYS */;
INSERT INTO `sucursal_empresa` VALUES ('38a1c255-8041-4089-a9bb-f0bb0b298fb4','2025-12-11 23:50:58.944800',NULL,'2025-12-11 23:50:58.944800','17:30','00:00','Sucursal2','e0d66006-6a8e-429b-aff3-2eaeea45dd59'),('7405f843-0345-470d-9f95-94e777d71684','2025-12-11 23:48:40.289064',NULL,'2025-12-11 23:48:40.289064','17:30','00:00','Sucursal1','80e62d5d-86ca-4a92-9f38-3d57db7da1c2');
/*!40000 ALTER TABLE `sucursal_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_insumo`
--

DROP TABLE IF EXISTS `sucursal_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_insumo`
--

LOCK TABLES `sucursal_insumo` WRITE;
/*!40000 ALTER TABLE `sucursal_insumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('0057a95a-ee75-49b5-a4b2-c85cbd62354b','2025-12-12 01:23:17.147984',NULL,'2025-12-12 01:23:17.147984',NULL,'$2a$10$52Si15kn6Qj/B9ETg0m9BuLhK7Jv3HtTkC366.f3kKknTlJHyAN0q','CLIENTE','cliente6',NULL,NULL),('076efbe6-409f-4490-9548-b59b2469d66b','2026-01-02 17:04:51.403971',NULL,'2026-01-02 17:04:51.403971',NULL,'$2a$10$jNiGmLQtJaRqUIgcstpSyO3ToxfMcGMWrfGkItraQ66q4OVZssQbO','EMPLEADO','empleado5',NULL,NULL),('0c43b602-6140-4685-9950-92514da2ad9a','2025-12-12 01:11:49.864039',NULL,'2025-12-12 01:11:49.864039',NULL,'$2a$10$6XBA33Dz3JdDgiyvZrWT/eJG25aqtaDDW/6TyZhd5hw.Wejr6wmwW','CLIENTE','cliente4',NULL,NULL),('201b2e5b-30a0-4318-ac90-5182b5cd2bcd','2026-01-02 17:01:58.488066',NULL,'2026-01-02 17:01:58.488066',NULL,'$2a$10$Edh3euP6MifsMu8P/QXF.e7xZssLhSiMy0QN.B.37lqSY4bYizzDC','EMPLEADO','empleado04',NULL,NULL),('245f0b6b-3693-41e8-83a5-3ba4abb84cea','2025-12-11 23:47:09.440798',NULL,'2025-12-11 23:47:09.440798','','$2a$10$JUprcbty4Y/UvgkLHUiQL.SufT9cR5DjIYE32sOy7ypf9XazVScJy','ADMIN','admin',NULL,NULL),('2d4a7122-62f4-47cb-a649-aa573d4740c7','2025-12-17 00:57:38.373991',NULL,'2025-12-17 00:57:38.373991',NULL,'$2a$10$.PjZweFdwIC6WzRqHoILAOrO6g1MveZGo7EekCaAM8cYREJgmxRf6','CLIENTE','cliente12',NULL,NULL),('4600c204-bcfc-4f4e-af4b-cb71fe10c1df','2025-12-12 01:01:38.682126',NULL,'2025-12-12 01:01:38.682126',NULL,'$2a$10$4yBW9duCMWE3kkIftSgdze0VFfpVKMRr5Bi3Nr/i0HG0P/y.hQqMW','CLIENTE','cliente1',NULL,NULL),('46452051-ca1e-4ebd-946f-692f2372d435','2025-12-12 01:02:53.711831',NULL,'2025-12-12 01:02:53.711831',NULL,'$2a$10$u2N0M1G2Z4IMOwEXfZhMx.5ycsmfPh2KSbMMoCEi42wUTdxh84.9e','CLIENTE','cliente2',NULL,NULL),('53b0aa33-ee18-4aaf-9947-8efa2831239c','2025-12-17 01:09:06.160442',NULL,'2025-12-17 01:09:06.160442',NULL,'$2a$10$Du0sYj.i2lXnXZgB2YIHWOFJSVJhuRdK0LhdQGlEMGzuMmuMgYtNG','CLIENTE','cliente13',NULL,NULL),('61840523-f030-48c0-85a8-bb9ddcb5bb83','2025-12-12 01:13:30.004708',NULL,'2025-12-12 01:13:30.004708',NULL,'$2a$10$83h9tK2Jfta1F7JNguwxF.xB96FyNggEIlCYoYAafin/voP3j9TQ.','CLIENTE','cliente5',NULL,NULL),('630766f3-527e-4b9c-9848-9c1b88f3847c','2025-12-12 01:06:23.420066',NULL,'2025-12-12 01:06:23.420066',NULL,'$2a$10$O6UPXYKy3uQLvNraPiWteO1JKvvr6C4JjosI6mj8aeFOK3m3S4xcW','CLIENTE','cliente3',NULL,NULL),('6841497d-887d-47dd-a22a-9c884fe2bd6f','2025-12-12 01:24:17.409879',NULL,'2025-12-12 01:24:17.409879',NULL,'$2a$10$Pm6WLKuZQUQMp7aGOW9Hx.XrjS4gte.koQib1Mi1S7Acgken4WK9O','CLIENTE','cliente7',NULL,NULL),('6f3e30fb-c84c-40da-83fe-f54ef93331d7','2025-12-17 00:55:38.767271',NULL,'2025-12-17 00:55:38.767271',NULL,'$2a$10$QbBaNwag.8cfGeZVqk4mju6N9phOYYOy0G04yGxn7KkFM5mZTuXrG','CLIENTE','cliente11',NULL,NULL),('6f99c63f-d7d2-4b32-a9bd-52db21592402','2025-12-17 01:07:43.450809',NULL,'2025-12-17 01:07:43.450809',NULL,'$2a$10$lw7LVgCEfWMO99U9GHQkHevcNfThcQ9B5NW4yrybxuQGVj40OrrMa','CLIENTE','cliente15',NULL,NULL),('7065b5ab-7753-4d96-85c4-f5decddb0a2d','2025-12-17 01:00:30.033107',NULL,'2025-12-17 01:00:30.033107',NULL,'$2a$10$ciYqvOX6Ih0.ka0dzSl9J.NvpXR3vPLZSj.axJT.wzvy8pFft4EKW','CLIENTE','cliente14',NULL,NULL),('74d35639-3145-4d80-8968-93cbdca476f1','2026-01-02 16:56:58.624846',NULL,'2026-01-02 16:56:58.624846',NULL,'$2a$10$RE/4nUhsg8ui5OuQqzO.2.jBR6Ph.jBMczUFr.eQDeBH7TPbWr8bW','EMPLEADO','empleado01',NULL,NULL),('7c0f24a5-1212-454c-8717-bbea6b8de9b9','2026-01-02 17:03:22.241254',NULL,'2026-01-02 17:03:22.241254',NULL,'$2a$10$r0Zl96/88BmTj3i6dG0nN.psFHLXQwEbW.CTICf6Y4.EXtLQCNHMe','EMPLEADO','empleado03',NULL,NULL),('ae65b351-3245-49df-846a-e03d644dcc12','2026-01-02 17:01:16.365353',NULL,'2026-01-02 17:01:16.365353',NULL,'$2a$10$Rfsh7XyJKrZoDJH.CwkdbeqNhUnDL6NyUiNQLsHm6cl.Vxjg1o3pC','EMPLEADO','empleado02',NULL,NULL),('bf4c493f-a15c-464b-b4fc-30a7bfec16e0','2025-12-17 00:50:58.993858',NULL,'2025-12-17 00:50:58.993858',NULL,'$2a$10$HmHt3uQ15Ti.qoMd3f.FiObpqGjeBgstDgYsXd1Xe/o0RvEPftKri','CLIENTE','cliente10',NULL,NULL),('e54345a0-bcb4-49b9-9731-6710ba311f1b','2025-12-17 00:46:27.450706',NULL,'2025-12-17 00:46:27.450706',NULL,'$2a$10$Vf03L1UAMbhq7vP/C3hKN.AulbPYyGGvHjh43PgdtVu1qnz4esco.','CLIENTE','cliente9',NULL,NULL),('fb67131d-5009-4d8d-b8f3-fe77f2eeac64','2025-12-17 00:37:53.971426',NULL,'2025-12-17 00:37:53.971426',NULL,'$2a$10$XOl2GafM5dgvX2ClIK.E1ulK/nHLh4p0gpspHw4/P3TklA4B5KUvK','CLIENTE','cliente8',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'buensabor2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-07 15:25:30

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_proyectolunes
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_alumno`
--

DROP TABLE IF EXISTS `tb_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_alumno` (
  `id_alu` int NOT NULL AUTO_INCREMENT,
  `nombre_alu` varchar(50) NOT NULL,
  `apellido_alu` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo_alu` varchar(50) NOT NULL,
  `cod_pais` int NOT NULL,
  `cod_ciudad` int NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_alu`),
  KEY `cod_pais` (`cod_pais`),
  KEY `cod_ciudad` (`cod_ciudad`),
  CONSTRAINT `tb_alumno_ibfk_1` FOREIGN KEY (`cod_pais`) REFERENCES `tb_pais` (`cod_pais`),
  CONSTRAINT `tb_alumno_ibfk_2` FOREIGN KEY (`cod_ciudad`) REFERENCES `tb_ciudad` (`cod_cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alumno`
--

LOCK TABLES `tb_alumno` WRITE;
/*!40000 ALTER TABLE `tb_alumno` DISABLE KEYS */;
INSERT INTO `tb_alumno` VALUES (1,'JORGEEE','PEREZ MENDOZA','2004-01-14','JORGEPEREZ@gmail.com',1,1,'INSCRITO'),(2,'Joaquin','Lazaro','2023-05-10','lazaro_alonso94@hotmail.com',4,1,'INSCRITO'),(3,'Jeferson','MEndoza','2004-01-12','JEferson@gmail.com',2,1,'INSCRITO'),(4,'zzzzzzzzzzzzzz','aaaaaaa','2023-05-31','aaaaa@hotmail.com',3,12,'INSCRITO'),(6,'ggggggg','gggggggggg','2023-06-13','aaaaa@hotmail.com',3,12,'REGISTRADO'),(9,'PEPE','CARLOS','2004-02-12','wwwwww@gmail.com',2,1,'REGISTRADO');
/*!40000 ALTER TABLE `tb_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carrera`
--

DROP TABLE IF EXISTS `tb_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carrera` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `nom_carrera` varchar(50) NOT NULL,
  `ciclo_fac` varchar(50) NOT NULL,
  `creditos_fac` int DEFAULT NULL,
  `cod_facultad` int NOT NULL,
  `costo` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `FK01` (`cod_facultad`),
  CONSTRAINT `FK01` FOREIGN KEY (`cod_facultad`) REFERENCES `tb_facultad` (`cod_facultad`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carrera`
--

LOCK TABLES `tb_carrera` WRITE;
/*!40000 ALTER TABLE `tb_carrera` DISABLE KEYS */;
INSERT INTO `tb_carrera` VALUES (1,'ADMINISTRACIÓN DE EMPRESAS','1',6,1,400.00),(2,'COMUNICACIÓN Y ARTE DIGITAL','2',6,2,400.00),(3,'COMPUTACIÓN E INFORMÁTICA','3',6,3,400.00),(4,'ADMINISTRACIÓN DE REDES Y COMUNICACIONES','3',6,3,400.00),(5,'MECATRÓNICA INDUSTRIAL','4',6,4,400.00),(13,'saaaaaa','6',6000,2,600.00);
/*!40000 ALTER TABLE `tb_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ciudad`
--

DROP TABLE IF EXISTS `tb_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ciudad` (
  `cod_cid` int NOT NULL AUTO_INCREMENT,
  `nom_cid` varchar(50) DEFAULT NULL,
  `cod_pais` int DEFAULT NULL,
  PRIMARY KEY (`cod_cid`),
  KEY `1` (`cod_pais`),
  CONSTRAINT `1` FOREIGN KEY (`cod_pais`) REFERENCES `tb_pais` (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ciudad`
--

LOCK TABLES `tb_ciudad` WRITE;
/*!40000 ALTER TABLE `tb_ciudad` DISABLE KEYS */;
INSERT INTO `tb_ciudad` VALUES (1,'Lima',1),(2,'Arequipa',1),(3,'Cusco',1),(4,'Trujillo',1),(5,'Huaraz',1),(6,'Buenos Aires',2),(7,'Córdoba',2),(8,'Rosario',2),(9,'Mendoza',2),(10,'La Plata',2),(11,'Guayaquil',3),(12,'Quito',3),(13,'Cuenca',3),(14,'Ambato',3),(15,'Loja',3),(16,'Santiago de Chile',5),(17,'Iquique',5),(18,'Antofagasta',5),(19,'La Serena',5),(20,'Viña del mar',5),(21,'La paz',4),(22,'Sucre',4),(23,'Cochabamba',4),(24,'Oruro',4),(25,'El alto',4),(31,'Bogotá',6),(32,'Medellín',6),(33,'Cartagena',6),(34,'Cali',6),(35,'Barranquilla',6),(36,'Caracas',7),(37,'Ciudad Bolivar',7),(38,'Marcaibo',7),(39,'Maracay',7),(40,'Maturin',7);
/*!40000 ALTER TABLE `tb_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comprobante_pago`
--

DROP TABLE IF EXISTS `tb_comprobante_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comprobante_pago` (
  `id_compago` char(5) NOT NULL,
  `fecha_comp` date NOT NULL,
  `monto_comp` decimal(10,0) NOT NULL,
  `id_inscripcion` char(5) NOT NULL,
  `estado_comp` varchar(30) NOT NULL,
  PRIMARY KEY (`id_compago`),
  KEY `id_inscripcion` (`id_inscripcion`),
  CONSTRAINT `tb_comprobante_pago_ibfk_1` FOREIGN KEY (`id_inscripcion`) REFERENCES `tb_inscripcion` (`id_inscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comprobante_pago`
--

LOCK TABLES `tb_comprobante_pago` WRITE;
/*!40000 ALTER TABLE `tb_comprobante_pago` DISABLE KEYS */;
INSERT INTO `tb_comprobante_pago` VALUES ('C0001','2023-05-05',250,'I0001','PAGADO'),('C0002','2023-05-26',1500,'I0002','PAGADO'),('C0003','2023-06-26',400,'I0003','PAGADO'),('C0004','2023-06-26',400,'I0004','PAGADO');
/*!40000 ALTER TABLE `tb_comprobante_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_curso`
--

DROP TABLE IF EXISTS `tb_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_curso` (
  `cod_cur` int NOT NULL AUTO_INCREMENT,
  `nom_curso` varchar(200) NOT NULL,
  `id_carrera` int NOT NULL,
  `credito` int NOT NULL,
  PRIMARY KEY (`cod_cur`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `tb_curso_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `tb_carrera` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_curso`
--

LOCK TABLES `tb_curso` WRITE;
/*!40000 ALTER TABLE `tb_curso` DISABLE KEYS */;
INSERT INTO `tb_curso` VALUES (1,'GESTIÓN COMERCIAL',1,5),(2,'MARKETING DIGITAL',1,5),(3,'INNOVACIÓN',1,5),(4,'OPERACIONES Y LOGÍSTICA',1,5),(5,'DISEÑO DIGITAL',2,5),(6,'INTRODUCCION A LAS INDUSTRIAS DEL EN ENTRETENIMIENTO',2,5),(7,'LENGUAJE AUDIOVISULA',2,5),(8,'TEORIA DE LA COMUNICACION',2,5),(9,'INTRODUCCION A LA ALGORITMIA',3,5),(10,'ARQUITECTURA DE ENTORNOS WEB',3,5),(11,'FUNDAMENTOS DE GESTION EMPRESARIAL',3,5),(12,'MATEMATICA 1',3,5),(13,'SOPORTE DE HARDWARE Y SOFTWARE',4,5),(14,'TECNOLOGIAS DE LA INFORMACION',4,5),(15,'FUNDAMENTOS DE GESTION EMPRESARIAL',4,5),(16,'MATEMATICA 1',4,5),(17,'CALCULO',5,5),(18,'FISICA',5,5),(19,'CIRCUITOS LOGICOS DIGITALES',5,5),(20,'INTRODUCCION A LA MECATRONICA',5,5);
/*!40000 ALTER TABLE `tb_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enlace`
--

DROP TABLE IF EXISTS `tb_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enlace` (
  `idenlace` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idenlace`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enlace`
--

LOCK TABLES `tb_enlace` WRITE;
/*!40000 ALTER TABLE `tb_enlace` DISABLE KEYS */;
INSERT INTO `tb_enlace` VALUES (1,'Inscripcion','/inscripcion/lista'),(2,'Carrera','/Carrera/lista'),(3,'Alumno','/alumno/lista'),(4,'Boleta','/ordenpago/lista'),(5,'FichaInscripcion','/FichaInscripcion/lista'),(6,'Reportes','/reportes/lista');
/*!40000 ALTER TABLE `tb_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_facultad`
--

DROP TABLE IF EXISTS `tb_facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_facultad` (
  `cod_facultad` int NOT NULL AUTO_INCREMENT,
  `nom_facultad` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_facultad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_facultad`
--

LOCK TABLES `tb_facultad` WRITE;
/*!40000 ALTER TABLE `tb_facultad` DISABLE KEYS */;
INSERT INTO `tb_facultad` VALUES (1,'GESTION Y NEGOCIOS'),(2,'COMUNICACIONES'),(3,'TECNOLOGIA DE LA INFORMACION'),(4,'INGENIERIA');
/*!40000 ALTER TABLE `tb_facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_inscripcion`
--

DROP TABLE IF EXISTS `tb_inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_inscripcion` (
  `id_inscripcion` char(5) NOT NULL,
  `id_carrera` int NOT NULL,
  `id_alu` int NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `estado_insc` varchar(30) NOT NULL,
  `costo` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_inscripcion`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_alu` (`id_alu`),
  CONSTRAINT `tb_inscripcion_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `tb_carrera` (`id_carrera`),
  CONSTRAINT `tb_inscripcion_ibfk_2` FOREIGN KEY (`id_alu`) REFERENCES `tb_alumno` (`id_alu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_inscripcion`
--

LOCK TABLES `tb_inscripcion` WRITE;
/*!40000 ALTER TABLE `tb_inscripcion` DISABLE KEYS */;
INSERT INTO `tb_inscripcion` VALUES ('I0001',1,1,'2023-06-13','PAGADO',400.00),('I0002',1,2,'2023-05-25','PAGADO',400.00),('I0003',2,3,'2023-06-26','PAGADO',400.00),('I0004',3,4,'2023-06-26','PAGADO',400.00);
/*!40000 ALTER TABLE `tb_inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pais`
--

DROP TABLE IF EXISTS `tb_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pais` (
  `cod_pais` int NOT NULL AUTO_INCREMENT,
  `nom_pais` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pais`
--

LOCK TABLES `tb_pais` WRITE;
/*!40000 ALTER TABLE `tb_pais` DISABLE KEYS */;
INSERT INTO `tb_pais` VALUES (1,'PERU'),(2,'ARGENTINA'),(3,'ECUADOR'),(4,'BOLIVIA'),(5,'CHILE'),(6,'COLOMBIA'),(7,'VENEZUELA');
/*!40000 ALTER TABLE `tb_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol`
--

DROP TABLE IF EXISTS `tb_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol` (
  `idrol` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol`
--

LOCK TABLES `tb_rol` WRITE;
/*!40000 ALTER TABLE `tb_rol` DISABLE KEYS */;
INSERT INTO `tb_rol` VALUES (1,'Administrador'),(2,'Secretaria');
/*!40000 ALTER TABLE `tb_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol_enlace`
--

DROP TABLE IF EXISTS `tb_rol_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol_enlace` (
  `idrol` int NOT NULL,
  `idenlace` int NOT NULL,
  PRIMARY KEY (`idrol`,`idenlace`),
  KEY `fk25` (`idenlace`),
  CONSTRAINT `fk24` FOREIGN KEY (`idrol`) REFERENCES `tb_rol` (`idrol`),
  CONSTRAINT `fk25` FOREIGN KEY (`idenlace`) REFERENCES `tb_enlace` (`idenlace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol_enlace`
--

LOCK TABLES `tb_rol_enlace` WRITE;
/*!40000 ALTER TABLE `tb_rol_enlace` DISABLE KEYS */;
INSERT INTO `tb_rol_enlace` VALUES (1,1),(2,1),(1,2),(2,2),(2,3),(2,4),(2,5),(1,6);
/*!40000 ALTER TABLE `tb_rol_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `cod_usu` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `idrol` int DEFAULT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `apellido` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`cod_usu`),
  KEY `fk23` (`idrol`),
  CONSTRAINT `fk23` FOREIGN KEY (`idrol`) REFERENCES `tb_rol` (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'admin','$2a$10$5NHRHkv1G7cBBVZyPxuKhOy/eib9H0ScjEgRiRD1FCCtnY7.j72TS',1,'Ana Maria','Sanchez Lopez'),(2,'elena','$2a$10$5NHRHkv1G7cBBVZyPxuKhOy/eib9H0ScjEgRiRD1FCCtnY7.j72TS',2,'Elena Sofia','Chavez Cortez');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_proyectolunes'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_generar_codBoleta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_generar_codBoleta`()
BEGIN
	declare num int;
    set num=(select count(id_compago)from tb_comprobante_pago);
    if(num=0) then
    select'C0001';
    else
    select concat('C',right(concat('0000',cast(right(max(id_compago),4)as SIGNED)+1),4))
    from tb_comprobante_pago;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_generar_codInscrip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_generar_codInscrip`()
BEGIN
	declare num int;
    set num=(select count(id_inscripcion)from tb_inscripcion);
    if(num=0) then
    select'I0001';
    else
    select concat('I',right(concat('0000',cast(right(max(id_inscripcion),4)as SIGNED)+1),4))
    from tb_inscripcion;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 12:02:51

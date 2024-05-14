CREATE DATABASE  IF NOT EXISTS `bdemployes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdemployes`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdemployes
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `idEmployees` int NOT NULL AUTO_INCREMENT,
  `primer_apellido` varchar(20) NOT NULL,
  `segundo_apellido` varchar(20) NOT NULL,
  `primer_nombre` varchar(20) NOT NULL,
  `otros_nombres` varchar(50) DEFAULT NULL,
  `pais_empleo` varchar(50) NOT NULL,
  `tipo_identificacion` varchar(50) NOT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `correo_electronico` varchar(300) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `area` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`idEmployees`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Doe','Smith','John','','Estados Unidos','DNI','123456789','john.doe@global.com.us','2024-05-13','IT','Inactivo','2024-05-13 02:49:32'),(2,'Gonzalez','Martinez','Maria','','Colombia','Cedula','987654321','maria.gonzalez@global.com.co','2024-05-13','HR','Inactivo','2024-05-13 02:49:32'),(3,'Kim','Lee','Ji','','Estados Unidos','SSN','456789123','ji.kim@global.com.us','2024-05-13','Finance','Activo','2024-05-13 02:49:32'),(4,'Silva','Rodriguez','Juan','','Colombia','Cedula','654321987','juan.silva@global.com.co','2024-05-13','Marketing','Activo','2024-05-13 02:49:32'),(5,'Johnson','Williams','Emily','','Estados Unidos','SSN','789123456','emily.johnson@global.com.us','2024-05-13','Sales','Activo','2024-05-13 02:49:32'),(6,'Lopez','Perez','Luis','','Colombia','Cedula','321987654','luis.lopez@global.com.co','2024-05-13','IT','Activo','2024-05-13 02:49:32'),(7,'Choi','Park','Min','','Estados Unidos','SSN','159263478','min.choi@global.com.us','2024-05-13','HR','Activo','2024-05-13 02:49:32'),(8,'Martinez','Garcia','Ana','','Colombia','Cedula','852741963','ana.martinez@global.com.co','2024-05-13','Finance','Activo','2024-05-13 02:49:32'),(9,'Brown','Davis','Michael','','Estados Unidos','SSN','369852147','michael.brown@global.com.us','2024-05-13','Marketing','Activo','2024-05-13 02:49:32'),(10,'Rodriguez','Hernandez','Carlos','','Colombia','Cedula','147258369','carlos.rodriguez@global.com.co','2024-05-13','Sales','Activo','2024-05-13 02:49:32'),(11,'Doe','Smith','John','','Estados Unidos','DNI','123456789','john.doe@global.com.us.2','2024-05-13','IT','Activo','2024-05-13 06:57:23'),(12,'Gonzalez','Martinez','Maria','','Colombia','Cedula','987654321','maria.gonzalez@global.com.co.3','2024-05-13','HR','Activo','2024-05-13 06:57:23'),(13,'Kim','Lee','Ji','','Estados Unidos','SSN','456789123','ji.kim@global.com.us.4','2024-05-13','Finance','Activo','2024-05-13 06:57:23'),(14,'Silva','Rodriguez','Juan','','Colombia','Cedula','654321987','juan.silva@global.com.co.5','2024-05-13','Marketing','Activo','2024-05-13 06:57:23'),(15,'Johnson','Williams','Emily','','Estados Unidos','SSN','789123456','emily.johnson@global.com.us.6','2024-05-13','Sales','Activo','2024-05-13 06:57:23'),(16,'Lopez','Perez','Luis','','Colombia','Cedula','321987654','luis.lopez@global.com.co.7','2024-05-13','IT','Activo','2024-05-13 06:57:23'),(17,'Choi','Park','Min','','Estados Unidos','SSN','159263478','min.choi@global.com.us.8','2024-05-13','HR','Activo','2024-05-13 06:57:23'),(18,'Martinez','Garcia','Ana','','Colombia','Cedula','852741963','ana.martinez@global.com.co.9','2024-05-13','Finance','Activo','2024-05-13 06:57:23'),(19,'Brown','Davis','Michael','','Estados Unidos','SSN','369852147','michael.brown@global.com.us.10','2024-05-13','Marketing','Activo','2024-05-13 06:57:23'),(20,'Rodriguez','Hernandez','Carlos','','Colombia','Cedula','147258369','carlos.rodriguez@global.com.co.11','2024-05-13','Sales','Activo','2024-05-13 06:57:24'),(21,'Doe1','Smith','John','','Estados Unidos','DNI','123456789','john.doe1@global.com.us','2024-05-13','IT','Activo','2024-05-13 06:57:55'),(22,'Gonzalez123','Mart23inez','Maria','','Colombia','Cedula','987654321','maria.gonzalez123@global.com.co','2024-05-13','HR','Activo','2024-05-13 06:57:55'),(23,'Kim123','Lee','Ji23','','Estados Unidos','SSN','456789123','ji23.kim123@global.com.us','2024-05-13','Finance','Activo','2024-05-13 06:57:55'),(24,'Silv123','Rodriguez','Juan','','Colombia','Cedula','654321987','juan.silv123@global.com.co','2024-05-13','Marketing','Activo','2024-05-13 06:57:55'),(25,'John123son','Will123iams','Emily','','Estados Unidos','SSN','789123456','emily.john123son@global.com.us','2024-05-13','Sales','Activo','2024-05-13 06:57:55'),(26,'Lopez','Pere123z','Lui123s','','Colombia','Cedula','321987654','lui123s.lopez@global.com.co','2024-05-13','IT','Activo','2024-05-13 06:57:55'),(27,'Choi123','Park','Min','','Estados Unidos','SSN','159263478','min.choi123@global.com.us','2024-05-13','HR','Activo','2024-05-13 06:57:55'),(28,'Mar123tinez','Garcia','An213a','','Colombia','Cedula','852741963','an213a.mar123tinez@global.com.co','2024-05-13','Finance','Activo','2024-05-13 06:57:55'),(29,'Br123own','Davis','Mi23chael','','Estados Unidos','SSN','369852147','mi23chael.br123own@global.com.us','2024-05-13','Marketing','Activo','2024-05-13 06:57:55'),(30,'Rod123riguez','Hernan23dez','Carlos','','Colombia','Cedula','147258369','carlos.rod123riguez@global.com.co','2024-05-13','Sales','Activo','2024-05-13 06:57:55');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeess`
--

DROP TABLE IF EXISTS `employeess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeess` (
  `idEmployees` int NOT NULL AUTO_INCREMENT,
  `primer_apellido` varchar(20) NOT NULL,
  `segundo_apellido` varchar(20) NOT NULL,
  `primer_nombre` varchar(20) NOT NULL,
  `otros_nombres` varchar(50) DEFAULT NULL,
  `pais_empleo` enum('Colombia','Estados Unidos') NOT NULL,
  `tipo_identificacion` varchar(50) NOT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `correo_electronico` varchar(300) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `area` varchar(50) NOT NULL,
  `estado` enum('Activo') NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`idEmployees`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeess`
--

LOCK TABLES `employeess` WRITE;
/*!40000 ALTER TABLE `employeess` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `idlog` int NOT NULL AUTO_INCREMENT,
  `idEmployees` int DEFAULT NULL,
  `accion` varchar(255) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`idlog`),
  KEY `idEmployees` (`idEmployees`),
  CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`idEmployees`) REFERENCES `employees` (`idEmployees`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1B29u70WPdE32tPdWdBHn2lChb9lIpv876lZzy3L',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3JaT3RIQ3NianJ3U1UxTElPcWw4QnJXRkRReEE3M1lOODZoM3BIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660742),('3EhR1oCo6gpWpDCS8DJLNhFQ5VynHzA2bJhUe7XQ',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicWRxYlkyaEZrSDZtaUV1OWdlUjN0UlVpa200WTZBOHpvNkI2SzdTWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660722),('4d0Blr0UL2iD3q2gV4A9nnjtRFzSzLUFVupU8MNO',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiak9aYkxmcFBmcjV5cGV1a3RCN0tiZ2Q2NGQ2bGltb2JzRklKbThMSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660662),('4pVpy8sGsnEgmkxSXYeyc8UZj0tCuKu3JwqHvmF4',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdjck5CeGV5T080bk9BbTVON2M1MGNsNUFIUU81TFd5MTFtWG1DMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660662),('5PwGNZi5wcg4UkTVqyzml2kz0Oldb4ijmRUeuIT8',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieEh4SFozTkIxRnQybHNTbmxtdUlzS0Y4aXFza0I2bjg3WFlVTkhpUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660577),('a2J9jcPJZGmcQPJEeaj7BKSeuXerP4cKZQNx6wQZ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0w2cDFCeE52WXo0T1FnOGpyRk5MNHpFMTdua1lOQTdKcVQxM3BUNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715661557),('AnUx3O1HXCR2Jq6UnQLH12z3nOMVOXsFj778jDdR',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDM4SWFnTVptMXFleWRaenM2cEh6dnp0aGhkaDM0QXVYVWdTMTdQNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660717),('azi3Lbj4P5j336PUWsbUERVGWZLTTZTpPUiSKxXP',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFFoaFUwYTM1OThNTWxOSGF6eUlJOWRwbDBKVXg5ajNabEdXdlJuOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660662),('B0rkmmyTCyGAFy2AFba7pvsglj3sUObrinT9vKYR',NULL,'127.0.0.1','PostmanRuntime/7.37.3','YTozOntzOjY6Il90b2tlbiI7czo0MDoia3pUeUtKaWl5M3d0dkhiNEhjcm9yc3o2QjFONjRjbmtEOWpyUUN0TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjEzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP2NvcnJlb19lbGVjdHJvbmljbz0mZXN0YWRvPUFjdGl2byZsaW1pdD0xMCZudW1lcm9faWRlbnRpZmljYWNpb249Jm9mZnNldD0wJm90cm9zX25vbWJyZXM9JnBhaXNfZW1wbGVvPUNvbG9tYmlhJnByaW1lcl9hcGVsbGlkbz0mcHJpbWVyX25vbWJyZT0mc2VndW5kb19hcGVsbGlkbz0mdGlwb19pZGVudGlmaWNhY2lvbj0iO319',1715660179),('DryOGnuW3rpvnNEFbi7zF9L8fiznEaQWnO0LZxYc',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicHVkT0dMblVnUktweXhTaVlyd0lFSmN0bU13dVR6cjh5OTE1cVJWTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9MSZwX3NlZ3VuZG9fYXBlbGxpZG89JnBfdGlwb19pZGVudGlmaWNhY2lvbj0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1715660727),('ffrlSKxXxPQvh0xlValgeEkhdSyeAmZzivd5tH78',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2c3V2xVb1ZPeTZETWVlN0J4eDRvbUVMaHQ2OTNDY1I2clRoZ1FQMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9MSZwX3NlZ3VuZG9fYXBlbGxpZG89JnBfdGlwb19pZGVudGlmaWNhY2lvbj0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1715660726),('HXlzk3cr5leMztpkcmVGx2PBJENsD5ozC8eZOSwl',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRpZU9oSXhPMlFjWEJzRkRkZmE1TlBRMzBNUVQzVTRFVEVQRk50MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660602),('IF1BNqg3RuFZumjoqN5I4YFUv4zjohdWVkgNlJhB',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibVJoaXRQZUZYQ2ozeWllM3NGcTFjRWFUdEZnT2JuemZPdkY1SEpWRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660661),('Im7L501VZqcaa2RWYIe0H1bPXzvkNkJKhZW8sWzr',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidThSZzZPakFjd25saUlxTE5sbUxMR21lTTdFUXZJMGJSbFpOWXhQYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660663),('K4jMI69HiaAPNhaSKUUOiqpkq2FZVHC9wpseEERM',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGoxMnpzdE5oZVI2cTB2bzdyRkdLQU92VzZKMktEVERKamxUOGhKQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660717),('nUJwvf2K2ZVhUe9xUL0mDKjZfXYGYrAakwdvdDxn',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTl2YjhLVU9SODE2WWRCd2U4SEJDV3RMWFNjWFE5aFg3TFVIalVtNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660603),('NVMp04BCzcXUw4j9NBhOz2vBAUw6saIMGrhayj4Z',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BIZnI2ZXlpdXlVOVJPZkJnMGlxaHZKNlljVjB2cDJEVUx0UXBMcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660746),('Od5txpQPSOPrPqb89Z1QtUub7TzNSFOCLTmJKwOi',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoic29KbVl1eGhwRlltRXpPUHRFVUZPZEgxZm9uSGpTaXVJZ3hYNm1pNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660662),('oIza2RUUcDRdOGUjl1cCo3I6LrmISdKRCDuyYrWt',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTNlRUgzbnJOUXBscnFBMlRmR01kclduMU9OWThzUmk2eUZ6RFROQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715661552),('QBI8fHnGjetUZYPctRk2scRBdTmjtnZgvNVyJSWr',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWN6RkpmeTFSOGxjbGhLQjV1UDJWcmVhSHRqT081cHQ1V2xEZHI1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660448),('QMZ64BJJsT8mvy8NsDAwsTQ3nTKNUPyCKFUll6pI',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3ZGdFJ3czN2UVlRdWlYM09hM1NwclIxZkFSYllERHFYVGtCVzJKUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660662),('QwVVfeXdoWeTS70PpY1phyTMKtIPGJubXXbTnTyC',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmthQ09FRWRka2RSNlZlbkhPYVJmVFlIbUZ4OEtXMHNFaWlabE1lSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660602),('sdNbBvhCVOYMxolQ83rwKJ0l5b9toq9mGzihxt4F',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlNaT0NValBCZm9EbjMyMzdZRzBoaWx1eDRxZTRvNkJHUHA0MEFKWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660603),('SPL7F38Q31WE6LVrsTlQ9HlBMWvga9bFlg7gce1O',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dYU0NGdElxRDE1d0p4dm5pMjJWZTZaR09qbzJqUU9qTzF2cjFNUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660675),('StgA1GuXuj1z2UBdsgfoEEqlnRQI58FFOTxjMyDY',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnViOFZyOURUS1pqVEtCWE15cmNaeVFKSEVGTkppWXhtVW9CbEZUaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660605),('TAgEIFSmNc7UC85Q0D95KriFNytqR14ag7tKv6pq',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWFQT2VkeHphSzZQcG9TVGhHZFJWS2sxNEJNSEJkUTdJbFQwU3d6QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660716),('tlUkOOMOngfg09L53ZfZ6GbulVE98MieMODOoXUy',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUxMOWZNWlFTendBVnFyZDVGY1ZYNTlMcnp5MU43aUhRMUE0cW5MeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660543),('tQMg6XGY1iNUfpLoNJGeW0AXCHrR1a7qIfIZ4aFg',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDVWSVlMS3VSZ1liejNzaHlaclp1UjhSQkNKakQzUkZwTmJOQmxTWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660717),('vbcMtMX5RJbRyuPaRZzseXKCpw0ZKOBhhYMz6FVR',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlMSjVtNnhreDlQMEltTG5ZVzAyakE4UkpjQ0RsSVZtaE9Zd0VhdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660717),('WgJldVmf6kw4kR3fDSUJ74Xayf5SsGgvM8Huf6ig',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2ZFeGFwSWExNDVTVFU3WHBvNVFsV0MwRjBQRk03dFYxeHVRcG90QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660575),('yNjn7FNuMbP9gtGVht0WTGkiQhvRLqTjzclsP65f',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlhLQkdBR1ZQQnNRbDd0blQ1blk3Z0Q1SWRSNHptV2pUcEY4SHVTMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZWVzP3BfY29ycmVvX2VsZWN0cm9uaWNvPSZwX2VzdGFkbz1BY3Rpdm8mcF9saW1pdD0xMCZwX251bWVyb19pZGVudGlmaWNhY2lvbj0mcF9vZmZzZXQ9MCZwX290cm9zX25vbWJyZXM9JnBfcGFpc19lbXBsZW89JnBfcHJpbWVyX2FwZWxsaWRvPSZwX3ByaW1lcl9ub21icmU9JnBfc2VndW5kb19hcGVsbGlkbz0mcF90aXBvX2lkZW50aWZpY2FjaW9uPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1715660661);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdemployes'
--

--
-- Dumping routines for database 'bdemployes'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_empleado`(
    IN p_id INT,
    IN p_primer_apellido VARCHAR(20),
    IN p_segundo_apellido VARCHAR(20),
    IN p_primer_nombre VARCHAR(20),
    IN p_otros_nombres VARCHAR(50),
    IN p_pais_empleo ENUM('Colombia', 'Estados Unidos'),
    IN p_tipo_identificacion VARCHAR(50),
    IN p_numero_identificacion VARCHAR(20),
    IN p_fecha_ingreso DATE,
    IN p_area VARCHAR(50)
)
BEGIN
    DECLARE v_correo_electronico VARCHAR(300);
    DECLARE v_id_existente INT;
    
    SET v_correo_electronico = CONCAT(
        LOWER(REPLACE(p_primer_nombre, ' ', '.')),
        '.',
        LOWER(REPLACE(p_primer_apellido, ' ', '.')),
        '@',
        IF(p_pais_empleo = 'Colombia', 'global.com.co', 'global.com.us')
    );
    
    -- Verificar si el correo electrónico ya existe
    SELECT idEmployees INTO v_id_existente FROM employees WHERE correo_electronico = v_correo_electronico AND idEmployees != p_id;
    
    IF v_id_existente IS NOT NULL THEN
        SET v_correo_electronico = CONCAT(v_correo_electronico, '.', v_id_existente + 1);
    END IF;
    
    -- Actualizar empleado
    UPDATE employees SET
        primer_apellido = p_primer_apellido,
        segundo_apellido = p_segundo_apellido,
        primer_nombre = p_primer_nombre,
        otros_nombres = p_otros_nombres,
        pais_empleo = p_pais_empleo,
        tipo_identificacion = p_tipo_identificacion,
        numero_identificacion = p_numero_identificacion,
        correo_electronico = v_correo_electronico,
        fecha_ingreso = p_fecha_ingreso,
        area = p_area,
        fecha_registro = NOW()
    WHERE idEmployees = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_empleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_empleados`(
    IN p_offset INT,
    IN p_limit INT,
    IN p_primer_nombre VARCHAR(20),
    IN p_otros_nombres VARCHAR(50),
    IN p_primer_apellido VARCHAR(20),
    IN p_segundo_apellido VARCHAR(20),
    IN p_tipo_identificacion VARCHAR(50),
    IN p_numero_identificacion VARCHAR(20),
    IN p_pais_empleo VARCHAR(50),
    IN p_correo_electronico VARCHAR(300),
    IN p_estado VARCHAR(50)
)
BEGIN
    SELECT *
    FROM employees
    WHERE (p_primer_nombre IS NULL OR primer_nombre = p_primer_nombre)
        AND (p_otros_nombres IS NULL OR otros_nombres LIKE CONCAT('%', p_otros_nombres, '%'))
        AND (p_primer_apellido IS NULL OR primer_apellido = p_primer_apellido)
        AND (p_segundo_apellido IS NULL OR segundo_apellido = p_segundo_apellido)
        AND (p_tipo_identificacion IS NULL OR tipo_identificacion = p_tipo_identificacion)
        AND (p_numero_identificacion IS NULL OR numero_identificacion = p_numero_identificacion)
        AND (p_pais_empleo IS NULL OR pais_empleo = p_pais_empleo)
        AND (p_correo_electronico IS NULL OR correo_electronico = p_correo_electronico)
        AND (p_estado IS NULL OR estado = p_estado)
    ORDER BY fecha_registro DESC
    LIMIT p_offset, p_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deactivateEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deactivateEmployee`(
    IN empID INT
)
BEGIN
    -- Actualizar el estado del empleado a 'Inactivo'
    UPDATE employees
    SET estado = 'Inactivo'
    WHERE idEmployees = empID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_empleado`(
    IN p_primer_apellido VARCHAR(20),
    IN p_segundo_apellido VARCHAR(20),
    IN p_primer_nombre VARCHAR(20),
    IN p_otros_nombres VARCHAR(50),
    IN p_pais_empleo ENUM('Colombia', 'Estados Unidos'),
    IN p_tipo_identificacion VARCHAR(50),
    IN p_numero_identificacion VARCHAR(20),
    IN p_fecha_ingreso DATE,
    IN p_area VARCHAR(50)
)
BEGIN
    DECLARE v_correo_electronico VARCHAR(300);
    DECLARE v_id_existente INT;
    
    SET v_correo_electronico = CONCAT(
        LOWER(REPLACE(p_primer_nombre, ' ', '.')),
        '.',
        LOWER(REPLACE(p_primer_apellido, ' ', '.')),
        '@',
        IF(p_pais_empleo = 'Colombia', 'global.com.co', 'global.com.us')
    );
    
    -- Verificar si el correo electrónico ya existe
    SELECT idEmployees INTO v_id_existente FROM employees WHERE correo_electronico = v_correo_electronico;
    
    IF v_id_existente IS NOT NULL THEN
        SET v_correo_electronico = CONCAT(v_correo_electronico, '.', v_id_existente + 1);
    END IF;
    
    -- Insertar empleado
    INSERT INTO employees (
        primer_apellido,
        segundo_apellido,
        primer_nombre,
        otros_nombres,
        pais_empleo,
        tipo_identificacion,
        numero_identificacion,
        correo_electronico,
        fecha_ingreso,
        area,
        estado,
        fecha_registro
    ) VALUES (
        p_primer_apellido,
        p_segundo_apellido,
        p_primer_nombre,
        p_otros_nombres,
        p_pais_empleo,
        p_tipo_identificacion,
        p_numero_identificacion,
        v_correo_electronico,
        p_fecha_ingreso,
        p_area,
        'Activo',
        NOW()
    );
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

-- Dump completed on 2024-05-14  0:01:37

CREATE DATABASE  IF NOT EXISTS `db_lojagames` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_lojagames`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_lojagames
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao_categoria` varchar(255) DEFAULT NULL,
  `nome_categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (1,'Todos os Jogos de luta estão aqui.','Luta'),(2,'Jogos de tiro em primeira pessoa.','FPS'),(3,'Todos os jogos de corrida estão aqui.','Corrida'),(4,NULL,'Aventura ATT');
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_produtos`
--

DROP TABLE IF EXISTS `tb_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produtos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime(6) DEFAULT NULL,
  `descricao` varchar(1000) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK555mlvcyvwis1o07pywhrr83p` (`categoria_id`),
  CONSTRAINT `FK555mlvcyvwis1o07pywhrr83p` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produtos`
--

LOCK TABLES `tb_produtos` WRITE;
/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
INSERT INTO `tb_produtos` VALUES (1,'2024-07-10 00:00:00.000000','Mortal Kombat X combina uma apresentação cinematográfica sem igual com uma jogabilidade nova, formando os Kombates mais brutais da história. Pela primeira vez, Mortal Kombat X possibilita a escolha entre múltiplas variações para cada personagem, afetando tanto a estratégia como também as técnicas de luta.','Mortal Kombat X',1),(2,'2024-07-10 00:00:00.000000','Midnight Club 3: DUB Edition é um jogo eletrônico de corrida tridimensional que possui uma jogabilidade no estilo arcade. O jogo se concentra em corridas de rua, que acontecem em três cidades dos Estados Unidos — San Diego, Atlanta e Detroit.','Mid Night Club 3',3),(3,'2024-07-10 00:00:00.000000','Counter-Strike (também abreviado por CS) é um popular jogo eletrônico de tiro em primeira pessoa. Inicialmente criado como um \"mod\" de Half-Life para jogos online, foi desenvolvido por Minh Le e Jess Cliffe e depois adquirido pela Valve Corporation.','Counter Strike',2);
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_lojagames'
--

--
-- Dumping routines for database 'db_lojagames'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  1:17:50

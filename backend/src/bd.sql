-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `nivel` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Alan','Biz','adiegobiz@gmail.com','123456',2),(2,'Esdras','teste','esdras@gmail.com','123456',2);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `produto` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `cor` varchar(45) NOT NULL,
  KEY `produto` (`produto`),
  CONSTRAINT `produto` FOREIGN KEY (`produto`) REFERENCES `produto` (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'geladeira','branca'),(2,'geladeira','cinza'),(3,'geladeira','amarela'),(4,'fogao','cinza'),(5,'fogao','preto'),(6,'fogao','branco'),(7,'microondas','cinza'),(8,'microondas','branco'),(9,'maquinadelavar','branca'),(10,'maquinadelavar','cinza'),(11,'lavalouca','cinza '),(12,'lavalouca','branco');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'Ariane Gariso Carlo','Espero que dessa vez dê certo!','2020-10-30 11:37:56'),(2,'lula',NULL,'2021-02-06 19:32:54'),(3,'Fatima','testando','2021-02-06 20:09:30'),(4,'Cele Bonjorno','Node é vida','2021-02-06 20:14:25'),(5,'Vitoria','Itau é nosso','2021-02-06 20:17:35'),(6,'Debora Seco','testando','2021-02-06 23:42:59'),(7,'Gloria','É uma benção','2021-02-07 00:15:06'),(8,'Gloria','É uma benção','2021-02-07 00:21:51');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `telefone` int NOT NULL,
  `produto` varchar(150) NOT NULL,
  `valor` int NOT NULL,
  `quantidade` int NOT NULL,
  `preco_final` int NOT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpedido`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'Ariane Gariso Carlo','Rua Ana Perena, 55, apartamento 22 A, Conjunto José Bonifácio',0,'geladeira1',0,1,0,'2020-10-31 15:23:43'),(2,'Ariane Gariso Carlo','Rua Ana Perena, 55, apartamento 22 A, Conjunto José Bonifácio',0,'geladeira1',0,1,0,'2020-10-31 15:24:18'),(3,'Ariane Gariso Carlo','Rua Ana Perena, 55, apartamento 22 A, Conjunto José Bonifácio',0,'geladeira1',0,1,0,'2020-10-31 15:26:36');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(245) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'geladeira','Geladeira Frost Free Brastemp Side Iverse 540 litros',6389.00,5019.00,'geladeira.png','/geladeira1.php'),(2,'geladeira','Geladeira Consul Frost Free Duplex 405 litros cor Inox com Filtro Bem Estar',6389.00,5750.00,'geladeira2.jpg','/geladeira2.php'),(3,'geladeira','Geladeira Brastemp Retrô Frost Free',3409.00,2564.05,'geladeira3.jpg','/geladeira3.php'),(4,'fogao','Fogão de Piso 4 Bocas Cinza Brastemp Clean BFO4NAR - Bivolt',1570.00,1099.00,'fogao.jpg','/fogao1.php'),(5,'fogao','Fogão Atlas 4 Bocas Tropical Glass com Acendimento Automático – Preto',890.00,719.00,'fogao2.webp','/fogao2.php'),(6,'fogao','Fogão 5 Bocas Supreme Timer Glass Dako - Bivolt',1650.00,1299.90,'foga3.jpg','/fogao3.php'),(7,'microondas','Micro-ondas Philco 30 Litros PME31',537.00,429.00,'microondas2.png','/microondas1.php'),(8,'microondas','Micro-ondas Electrolux MTD30 20 Litros Branco 110V',650.00,599.00,'microondas3.png','/microondas2.php'),(9,'maquinadelavar','Máquina de Lavar Consul 14Kg branca com Dosagem Extra Econômica e Ciclo Edredom',3743.00,2850.00,'maquina.png','/maquina1.php'),(10,'maquinadelavar','Máquina de Lavar Brastemp 12Kg titânio com Ciclo Tira Manchas Advanced e Ciclo Antibolinha • 110V',2539.00,2200.50,'maquina2.png','/maquina2.php'),(11,'lavalouca','Lava-Louças de Piso Brastemp BLF08AS 5 Programas Inox - 220V',2300.00,2089.00,'lavalouca.jpg','/lavalouca1.php'),(12,'lavalouca','Lava-louças 8 Serviços Brastemp Ative! BLF08AB',1800.00,1619.00,'lavalouca2.jpg','/lavalouca2.php');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `mensagem` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,'Alan','adiegobiz@gmail.com','(11)98680-7140','Teste 2'),(2,'Pedro','pedro@gmail.com','(11)98680-7141','teste 3'),(3,'João','joao@gmail.com','(11)98680-7142','teste4'),(4,'Andre','andre@gmail.com','(11)98680-7144','teste 4'),(5,'Andre2','andre@gmail.com','(11)98680-7145','teste 5'),(6,'Alan Biz','adiegobiz@gmail.com','(11)98680-7140','ola pessoal!');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(150) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (12,'Alan','Biz','adiegobiz@gmail.com','e10adc3949ba59abbe56e057f20f883e'),(13,'Paulo','Biz','paulo@gmail.com','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fseletro'
--

--
-- Dumping routines for database 'fseletro'
--
/*!50003 DROP PROCEDURE IF EXISTS `hora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hora`(IN fuso INT)
begin 

                select now() as hora, 

                              DATE_ADD(NOW(), INTERVAL fuso HOUR) as hora_fuso;

end ;;
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

-- Dump completed on 2021-02-07  9:58:05

CREATE DATABASE  IF NOT EXISTS `engineer_software` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `engineer_software`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: engineer_software
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
-- Table structure for table `acertos`
--

DROP TABLE IF EXISTS `acertos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acertos` (
  `id` int NOT NULL,
  `contador` int DEFAULT NULL,
  `acertos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acertos`
--

LOCK TABLES `acertos` WRITE;
/*!40000 ALTER TABLE `acertos` DISABLE KEYS */;
INSERT INTO `acertos` VALUES (1,1,0);
/*!40000 ALTER TABLE `acertos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `id` int NOT NULL,
  `questao` varchar(300) DEFAULT NULL,
  `a` varchar(300) DEFAULT NULL,
  `b` varchar(300) DEFAULT NULL,
  `c` varchar(300) DEFAULT NULL,
  `d` varchar(300) DEFAULT NULL,
  `resposta` varchar(10) DEFAULT NULL,
  `acertos` int DEFAULT NULL,
  `contador` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'Qual o significado da sigla UML?','Linguagem de Modifica????o Unida','Unifica????o de Modelagem Liter??ria','Linguagem de Modelagem Unificada','Unifica????o de Linguagem Modificada','c',0,1),(2,'O que ?? UML?','?? uma linguagem-padr??o para a elabora????o da estrutura de projetos de software','?? um aplicativo de caixas de texto','?? uma linguagem para desenvolver sites','?? um software para criar projetos de outros softwares','a',NULL,NULL),(3,'Qual dos softwares abaixo pode-se utilizar UML?','NetBeans','Astah','PowerPoint','VSCode','b',NULL,NULL),(4,'Um diagrama de atividade ?? um tipo especial de diagrama de _______.','casos de uso','classes','estados','pacotes','c',NULL,NULL),(5,'Um diagrama de atividade pode conter fluxo de controle _______. Isso significa que pode haver dois ou mais fluxos de controle sendo executados simultaneamente.','paralelos','iguais','duplo','??nico','a',NULL,NULL),(6,'Quais os dois tipos de barras de sincroniza????o?','barra de bifurca????o (fork) e barra de jun????o (join)','barra de transi????o (fork) e barra de interliga????o (join)','barra de dados (join) e barra de conjuntos (fork)','barra de jun????o (join) e barra de transi????o (fork)','a',NULL,NULL),(7,'No diagrama de atividades qual a fun????o das Raias?','As raias faz a liga????o de duas atividades','As raias s??o usadas em casos de condi????o de guarda (decis??o)','As raias dividem o diagrama de atividade em compartimentos','As raias s??o as partes finais do diagrama de atividades','c',NULL,NULL),(8,'O diagrama de caso de uso consiste em quatro objetos. Quais s??o eles?','caso de uso, sistema, pacote e classe','ator, caso de uso, sistema e pacote','sistema, pacote, usu??rio e ator',' ator, caso de uso, classe e agrega????o','b',NULL,NULL),(9,'No diagrama de atividade o que ?? utilizado para sincronizar dois ou mais fluxos paralelos?','barras de coordena????o','barras de igualdade','barras de combina????o','barras de sincroniza????o','d',NULL,NULL),(10,'O que ?? um diagrama de classes?','Diagrama de classes ?? um software para criar projetos UML','Diagrama de classes ?? uma representa????o est??tica para descrever a estrutura de um sistema, apresentando suas classes, atributos, opera????es e as rela????es entre os objetos','Diagrama de classes ?? um tipo especial de diagrama de estados',' Diagrama de classes ?? uma representa????o gr??fica utilizada na ??rea da matem??tica para solucionar problemas do dia a dia','b',NULL,NULL),(11,'No diagrama de caso de uso, o que representa o ???<< extend >>??? ?','Descreve cen??rios obrigat??rios de um caso de uso','Descreve cen??rios opcionais de um caso de uso','Descreve cen??rios aleat??rios de um caso de uso','Nenhuma das alternativas','b',NULL,NULL),(12,'No diagrama de classes o que ?? um atributo?','O atributo define as caracter??sticas da classe, como visibilidade, nome e etc','O atributo ?? respons??vel pela capacidade das classes de se relacionar','O atributo trata da fun????o requerida a um objeto abstrato','O atributo representa um conjunto de objetos','a',NULL,NULL),(13,'O _______ permite compartilhar informa????es e colaborar com a execu????o dos processos do sistema, sendo seus tipos: associa????o, generaliza????o e depend??ncia.','objeto','relacionamento','m??todo','atributo','b',NULL,NULL),(14,'Qual das alternativas abaixo melhor descreve um diagrama de caso de uso?','?? uma representa????o est??tica para descrever a estrutura de um sistema, apresentando suas classes, atributos, opera????es e as rela????es entre os objetos',' Representa uma perspectiva, orientada por tempo, da colabora????o entre os objetos',' Representa o conjunto de comportamentos de alto n??vel que o sistema deve executar para um determinado ator','Representa uma cole????o de outros elementos de modelagem e diagramas','c',NULL,NULL),(15,'No diagrama de classes o que ?? visibilidade?',' representa caracter??sticas de uma classe','?? respons??vel por dividir o diagrama de classes em compartimentos','descreve um conjunto de v??nculos entre elementos de modelo','indica o n??vel de acessibilidade de um atributo ou m??todo, podendo ser p??blica, privada e protegida','d',NULL,NULL),(16,'A ________ ?? um relacionamento entre um elemento geral e um outro mais espec??fico. Tamb??m chamada de heran??a, permite a cria????o de elementos especializados em outros.','generaliza????o','agrega????o','classe','visibilidade','a',NULL,NULL),(17,'No diagrama de classes o que ?? um m??todo?','O m??todo indica o n??vel de acessibilidade de um atributo','O m??todo descreve um conjunto de v??nculos entre elementos de modelo','O m??todo representa caracter??sticas de uma classe','O m??todo representa atividades que um objeto de uma classe pode executar','d',NULL,NULL),(18,'Qual das alternativas abaixo, est?? indicando melhor um m??todo para uma classe Produto?','nome','descricao','inserir','codigo','c',NULL,NULL),(19,'No diagrama de caso de uso, o que ?? uma associa????o?','?? a representa????o do n??vel de acessibilidade de um caso de uso','?? a representa????o de uma linha que liga o ator ao caso de uso',' Define as caracter??sticas de um caso de uso','?? a divis??o do diagrama em compartimentos','b',NULL,NULL),(20,'A ________ nada mais ?? do que os limites inferior e superior da quantidade de objetos aos quais outro objeto est?? associado. Esses limites podem receber os valores: apenas um; zero ou muitos; um ou muitos; zero ou um; ou at?? um intervalo espec??fico.','agrega????o','associa????o','classe','multiplicidade','d',NULL,NULL);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'engineer_software'
--

--
-- Dumping routines for database 'engineer_software'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-07  9:52:14

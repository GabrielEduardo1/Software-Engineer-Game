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
INSERT INTO `game` VALUES (1,'Qual o significado da sigla UML?','Linguagem de Modificação Unida','Unificação de Modelagem Literária','Linguagem de Modelagem Unificada','Unificação de Linguagem Modificada','c',0,1),(2,'O que é UML?','É uma linguagem-padrão para a elaboração da estrutura de projetos de software','É um aplicativo de caixas de texto','É uma linguagem para desenvolver sites','É um software para criar projetos de outros softwares','a',NULL,NULL),(3,'Qual dos softwares abaixo pode-se utilizar UML?','NetBeans','Astah','PowerPoint','VSCode','b',NULL,NULL),(4,'Um diagrama de atividade é um tipo especial de diagrama de _______.','casos de uso','classes','estados','pacotes','c',NULL,NULL),(5,'Um diagrama de atividade pode conter fluxo de controle _______. Isso significa que pode haver dois ou mais fluxos de controle sendo executados simultaneamente.','paralelos','iguais','duplo','único','a',NULL,NULL),(6,'Quais os dois tipos de barras de sincronização?','barra de bifurcação (fork) e barra de junção (join)','barra de transição (fork) e barra de interligação (join)','barra de dados (join) e barra de conjuntos (fork)','barra de junção (join) e barra de transição (fork)','a',NULL,NULL),(7,'No diagrama de atividades qual a função das Raias?','As raias faz a ligação de duas atividades','As raias são usadas em casos de condição de guarda (decisão)','As raias dividem o diagrama de atividade em compartimentos','As raias são as partes finais do diagrama de atividades','c',NULL,NULL),(8,'O diagrama de caso de uso consiste em quatro objetos. Quais são eles?','caso de uso, sistema, pacote e classe','ator, caso de uso, sistema e pacote','sistema, pacote, usuário e ator',' ator, caso de uso, classe e agregação','b',NULL,NULL),(9,'No diagrama de atividade o que é utilizado para sincronizar dois ou mais fluxos paralelos?','barras de coordenação','barras de igualdade','barras de combinação','barras de sincronização','d',NULL,NULL),(10,'O que é um diagrama de classes?','Diagrama de classes é um software para criar projetos UML','Diagrama de classes é uma representação estática para descrever a estrutura de um sistema, apresentando suas classes, atributos, operações e as relações entre os objetos','Diagrama de classes é um tipo especial de diagrama de estados',' Diagrama de classes é uma representação gráfica utilizada na área da matemática para solucionar problemas do dia a dia','b',NULL,NULL),(11,'No diagrama de caso de uso, o que representa o “<< extend >>” ?','Descreve cenários obrigatórios de um caso de uso','Descreve cenários opcionais de um caso de uso','Descreve cenários aleatórios de um caso de uso','Nenhuma das alternativas','b',NULL,NULL),(12,'No diagrama de classes o que é um atributo?','O atributo define as características da classe, como visibilidade, nome e etc','O atributo é responsável pela capacidade das classes de se relacionar','O atributo trata da função requerida a um objeto abstrato','O atributo representa um conjunto de objetos','a',NULL,NULL),(13,'O _______ permite compartilhar informações e colaborar com a execução dos processos do sistema, sendo seus tipos: associação, generalização e dependência.','objeto','relacionamento','método','atributo','b',NULL,NULL),(14,'Qual das alternativas abaixo melhor descreve um diagrama de caso de uso?','É uma representação estática para descrever a estrutura de um sistema, apresentando suas classes, atributos, operações e as relações entre os objetos',' Representa uma perspectiva, orientada por tempo, da colaboração entre os objetos',' Representa o conjunto de comportamentos de alto nível que o sistema deve executar para um determinado ator','Representa uma coleção de outros elementos de modelagem e diagramas','c',NULL,NULL),(15,'No diagrama de classes o que é visibilidade?',' representa características de uma classe','é responsável por dividir o diagrama de classes em compartimentos','descreve um conjunto de vínculos entre elementos de modelo','indica o nível de acessibilidade de um atributo ou método, podendo ser pública, privada e protegida','d',NULL,NULL),(16,'A ________ é um relacionamento entre um elemento geral e um outro mais específico. Também chamada de herança, permite a criação de elementos especializados em outros.','generalização','agregação','classe','visibilidade','a',NULL,NULL),(17,'No diagrama de classes o que é um método?','O método indica o nível de acessibilidade de um atributo','O método descreve um conjunto de vínculos entre elementos de modelo','O método representa características de uma classe','O método representa atividades que um objeto de uma classe pode executar','d',NULL,NULL),(18,'Qual das alternativas abaixo, está indicando melhor um método para uma classe Produto?','nome','descricao','inserir','codigo','c',NULL,NULL),(19,'No diagrama de caso de uso, o que é uma associação?','É a representação do nível de acessibilidade de um caso de uso','É a representação de uma linha que liga o ator ao caso de uso',' Define as características de um caso de uso','É a divisão do diagrama em compartimentos','b',NULL,NULL),(20,'A ________ nada mais é do que os limites inferior e superior da quantidade de objetos aos quais outro objeto está associado. Esses limites podem receber os valores: apenas um; zero ou muitos; um ou muitos; zero ou um; ou até um intervalo específico.','agregação','associação','classe','multiplicidade','d',NULL,NULL);
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

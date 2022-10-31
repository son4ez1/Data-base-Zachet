-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id_Book` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Amount` int DEFAULT NULL,
  `buy` int NOT NULL,
  PRIMARY KEY (`id_Book`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Мастер и Маргарита','Булгаков М.А.',671.00,3,0),(2,'Белая гвардия','Булгаков М.А.',354.95,5,0),(3,'Идиот','Достоевский Ф.М.',301.81,10,0),(4,'Братья Карамазовы','Достоевский Ф.М.',799.00,2,0),(8,'Стихотворения и поэмы','Есенин С.А.',650.00,15,0),(12,'Лирика','Пастернак Б.Л.',518.99,2,0),(13,'Черный человек','Есенин С.А.',374.10,6,0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,'Лирика','Пастернак Б.Л.',518.99,2),(2,'Черный человек','Есенин С.А.',570.20,6),(3,'Белая гвардия','Булгаков М.А.',540.50,7),(4,'Идиот','Достоевский Ф.М.',360.80,3);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28 11:37:30

Задание
Вывести из таблицы trip информацию о командировках тех сотрудников, фамилия которых заканчивается на букву «а», в отсортированном по убыванию даты последнего дня командировки виде. В результат включить столбцы name, city, per_diem, date_first, date_last.
use book;
SELECT name, citi, per_diem, date_first, date_last FROM trip WHERE name like '%а %' ORDER BY date_last desc;
select * from trip;

Задание
Вывести в алфавитном порядке фамилии и инициалы тех сотрудников, которые были в командировке в Москве.
use book;
SELECT DISTINCT name FROM trip WHERE citi = 'Москва' ORDER BY name;
select * from trip;

Задание
Для каждого города посчитать, сколько раз сотрудники в нем были.  Информацию вывести в отсортированном в алфавитном порядке по названию городов. Вычисляемый столбец назвать Количество. 
use book;
SELECT citi, count(citi) AS 'Количество'  FROM trip  GROUP BY citi ORDER BY citi;
select * from trip;

Задание
Вывести два города, в которых чаще всего были в командировках сотрудники. Вычисляемый столбец назвать Количество.
use book;
SELECT citi, count(name) as 'Количество' FROM trip GROUP BY 1 ORDER BY 2 DESC LIMIT 2;
select * from trip;

Задание
Вывести информацию о командировках во все города кроме Москвы и Санкт-Петербурга (фамилии и инициалы сотрудников, город ,  длительность командировки в днях, при этом первый и последний день относится к периоду командировки). Последний столбец назвать Длительность. Информацию вывести в упорядоченном по убыванию длительности поездки, а потом по убыванию названий городов (в обратном алфавитном порядке).
use book;
SELECT name, citi, (DATEDIFF(date_last, date_first)+1) AS Длительность FROM trip WHERE citi NOT IN ('Москва', 'Санкт-Петербург') ORDER BY Длительность DESC,  citi DESC;
select * from trip;

Задание
Вывести информацию о командировках сотрудника(ов), которые были самыми короткими по времени. В результат включить столбцы name, city, date_first, date_last.
use book;
SELECT name, citi, date_first, date_last FROM trip WHERE ABS(DATEDIFF(date_first, date_last) - 1) = (SELECT MIN(ABS(DATEDIFF(date_first, date_last) - 1))FROM trip);
select * from trip;

Задание
Вывести информацию о командировках, начало и конец которых относятся к одному месяцу (год может быть любой). В результат включить столбцы name, city, date_first, date_last. Строки отсортировать сначала  в алфавитном порядке по названию города, а затем по фамилии сотрудника .
use book;
SELECT name, citi, date_first, date_last FROM trip WHERE MONTH(date_first) = MONTH(date_last) ORDER BY citi, name;
select * from trip;

Задание
Вывести название месяца и количество командировок для каждого месяца. Считаем, что командировка относится к некоторому месяцу, если она началась в этом месяце. Информацию вывести сначала в отсортированном по убыванию количества, а потом в алфавитном порядке по названию месяца виде. Название столбцов – Месяц и Количество.
use book;
SELECT MONTHNAME(date_first) AS Месяц, COUNT(MONTHNAME(date_first)) AS Количество FROM trip GROUP BY MONTHNAME(date_first) ORDER BY Количество DESC, Месяц;
select * from trip;

Задание
Вывести сумму суточных (произведение количества дней командировки и размера суточных) для командировок, первый день которых пришелся на февраль или март 2020 года. Значение суточных для каждой командировки занесено в столбец per_diem. Вывести фамилию и инициалы сотрудника, город, первый день командировки и сумму суточных. Последний столбец назвать Сумма. Информацию отсортировать сначала  в алфавитном порядке по фамилиям сотрудников, а затем по убыванию суммы суточных.
use book;
SELECT name, citi, date_first, DATEDIFF(date_last+1, date_first)*per_diem AS Сумма FROM trip WHERE YEAR(date_first)=2020 AND MONTH(date_first)=3 OR MONTH(date_first)=2 ORDER BY name, Сумма DESC;
select * from trip;

Задание
Вывести фамилию с инициалами и общую сумму суточных, полученных за все командировки для тех сотрудников, которые были в командировках больше чем 3 раза, в отсортированном по убыванию сумм суточных виде. Последний столбец назвать Сумма.
use book;
SELECT name, SUM((DATEDIFF(date_last, date_first) + 1) * per_diem) AS Сумма FROM trip GROUP BY name HAVING COUNT(date_first) > 3 ORDER BY name;
select * from trip;

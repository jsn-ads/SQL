-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.23 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php03
CREATE DATABASE IF NOT EXISTS `php03` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php03`;

-- Copiando estrutura para tabela php03.token
CREATE TABLE IF NOT EXISTS `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '0',
  `estado` tinyint(1) DEFAULT '0',
  `expirado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php03.token: 12 rows
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` (`id`, `id_user`, `hash`, `estado`, `expirado`) VALUES
	(1, 1, '72d5b41c7e46e5bebaef9cf61911bde2', 0, '2019-07-08 14:41:00'),
	(2, 2, '612e74957520c7fd0747ac5f752b8396', 0, '2019-07-08 14:41:00'),
	(3, 1, 'c78f5ff8bafdb1cd2f0b9c7db2970e63', 0, '2019-07-08 14:55:00'),
	(4, 1, '8944855589d5815f074b5de7be0b1f59', 0, '2019-07-10 13:07:00'),
	(5, 1, '7d0abc8adbde20ce38b2df7780414431', 0, '2019-07-10 13:08:00'),
	(6, 1, 'f8ec05b3f911a61d958f51f103cddf6c', 0, '2019-07-10 13:08:00'),
	(7, 1, '23f1608e48fa77bb9eee109072b21ca4', 0, '2019-07-10 13:08:00'),
	(8, 1, '45312f05b041cfbb59656888780d7874', 0, '2019-07-10 13:09:00'),
	(9, 1, '84c682d92f9531b474d7d15cf7683bc5', 0, '2019-07-10 13:09:00'),
	(10, 1, 'b540ac905b3461816a67508a254f5240', 0, '2019-07-13 12:30:00'),
	(11, 2, 'da31e09563fd8dc007d6f1e244c9c818', 0, '2019-07-13 14:31:00'),
	(12, 1, '36502fdbe5afd43c756219e632764f82', 1, '2019-07-13 14:54:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;

-- Copiando estrutura para tabela php03.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php03.user: 2 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `senha`) VALUES
	(1, 'jsn.ads@gmail.com', '80f06da7676377f7eea4f0d05423a7d5'),
	(2, 'jsn.ads@outlook.com', '80f06da7676377f7eea4f0d05423a7d5');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

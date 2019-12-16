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


-- Copiando estrutura do banco de dados para php19
CREATE DATABASE IF NOT EXISTS `php19` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php19`;

-- Copiando estrutura para tabela php19.filme
CREATE TABLE IF NOT EXISTS `filme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT '0',
  `media` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php19.filme: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` (`id`, `titulo`, `media`) VALUES
	(1, 'senhor dos aneis', 0),
	(2, 'fate stay night', 0);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;

-- Copiando estrutura para tabela php19.votos
CREATE TABLE IF NOT EXISTS `votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_filme` int(11) DEFAULT '0',
  `nota` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_votos_filme` (`id_filme`),
  CONSTRAINT `FK_votos_filme` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php19.votos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

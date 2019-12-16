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


-- Copiando estrutura do banco de dados para php17
CREATE DATABASE IF NOT EXISTS `php17` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php17`;

-- Copiando estrutura para tabela php17.carro
CREATE TABLE IF NOT EXISTS `carro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) NOT NULL DEFAULT '0',
  `marca` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela php17.carro: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` (`id`, `modelo`, `marca`) VALUES
	(1, 'HB20', 'Hyundai'),
	(2, 'Voyage', 'Volkswagen'),
	(3, 'Honda Civic', 'Honda'),
	(4, 'Strada', 'Fiat'),
	(5, 'Corolla', 'Toyota');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;

-- Copiando estrutura para tabela php17.reserva
CREATE TABLE IF NOT EXISTS `reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carro` int(11) NOT NULL DEFAULT '0',
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_reserva_carro` (`id_carro`),
  KEY `FK_reserva_usuario` (`id_usuario`),
  CONSTRAINT `FK_reserva_carro` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id`),
  CONSTRAINT `FK_reserva_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php17.reserva: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` (`id`, `id_carro`, `id_usuario`, `data_inicio`, `data_fim`) VALUES
	(1, 2, 3, '2019-05-28', '2019-06-01'),
	(2, 5, 1, '2019-05-30', '2019-06-03'),
	(3, 4, 6, '2019-06-04', '2019-06-05');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;

-- Copiando estrutura para tabela php17.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `cpf` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela php17.usuario: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `cpf`) VALUES
	(1, 'José Alves de Souza Neto', '03322941108'),
	(2, 'Cristina Monik França e Costa', '02495203161'),
	(3, 'Giselle Alves de Oliveira', '37141861076'),
	(4, 'Rodrigo Carneiro Vieira', '92018809016'),
	(5, 'Anderson Souza Rocha', '48091121016'),
	(6, 'Estephania Almeida Mariano', '21417534060');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

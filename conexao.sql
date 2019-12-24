-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.37-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para conexao
CREATE DATABASE IF NOT EXISTS `conexao` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `conexao`;

-- Copiando estrutura para tabela conexao.estado
CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela conexao.estado: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` (`id`, `estado`) VALUES
	(1, 'AC'),
	(2, 'AL'),
	(3, 'AP'),
	(4, 'AM'),
	(5, 'BA'),
	(6, 'CE'),
	(7, 'DF'),
	(8, 'ES'),
	(9, 'GO'),
	(10, 'MA'),
	(11, 'MT'),
	(12, 'MS'),
	(13, 'MG'),
	(14, 'PA'),
	(15, 'PB'),
	(16, 'PR'),
	(17, 'PE'),
	(18, 'PI'),
	(19, 'RJ'),
	(20, 'RN'),
	(21, 'RS'),
	(22, 'RO'),
	(23, 'RR'),
	(24, 'SC'),
	(25, 'SP'),
	(26, 'SE'),
	(27, 'TO');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;

-- Copiando estrutura para tabela conexao.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(20) NOT NULL DEFAULT '0',
  `sobrenome` varchar(30) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '0',
  `tel` varchar(15) NOT NULL DEFAULT '0',
  `cel` varchar(15) NOT NULL DEFAULT '0',
  `cidade` varchar(25) NOT NULL DEFAULT '0',
  `dataHora` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela conexao.usuario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `id_estado`, `nome`, `sobrenome`, `email`, `tel`, `cel`, `cidade`, `dataHora`) VALUES
	(2, 13, 'Jose ', 'Souza Neto', 'jsn.ads@gmail.com', '(62)3434-5353', '(62)9 9351-8323', 'Belo Horizonte', '2019-12-05 02:06:08'),
	(5, 9, 'Cristina', 'Monik', 'cris@gmail.com', '(84)7759-7593', '(43)9 8357-9375', 'Israelandia', '2019-12-05 11:20:47'),
	(6, 25, 'Raissa', 'Souza', 'raissa@gmail.com', '(98)4585-8967', '(48)9 0850-9358', 'Sao Paulo', '2019-12-05 11:21:49');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

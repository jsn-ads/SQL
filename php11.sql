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


-- Copiando estrutura do banco de dados para php11
CREATE DATABASE IF NOT EXISTS `php11` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php11`;

-- Copiando estrutura para tabela php11.historico
CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL DEFAULT '0',
  `data_evento` datetime NOT NULL,
  `evento` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php11.historico: 10 rows
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` (`id`, `ip`, `data_evento`, `evento`) VALUES
	(1, '192.168.0.255', '2019-05-14 09:45:48', 'acesso sistema bancario'),
	(2, '::1', '2019-05-14 13:59:50', 'Entrou na pagina...'),
	(3, '::1', '2019-05-14 14:03:07', 'Entrou na pagina...'),
	(4, '::1', '2019-05-14 14:03:08', 'Entrou na pagina...'),
	(5, '::1', '2019-05-14 14:03:23', 'Entrou na pagina...'),
	(6, '::1', '2019-05-14 14:03:48', 'Entrou na pagina...'),
	(7, '::1', '2019-05-14 14:03:49', 'Entrou na pagina...'),
	(8, '::1', '2019-05-14 14:03:49', 'Entrou na pagina...'),
	(9, '::1', '2019-05-14 14:03:59', 'Entrou na pagina...'),
	(10, '::1', '2019-05-14 14:07:46', 'Entrou na pagina...');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

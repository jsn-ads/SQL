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


-- Copiando estrutura do banco de dados para php39
CREATE DATABASE IF NOT EXISTS `php39` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php39`;

-- Copiando estrutura para tabela php39.cadastro
CREATE TABLE IF NOT EXISTS `cadastro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `rg` varchar(7) NOT NULL DEFAULT '0',
  `cpf` varchar(11) NOT NULL DEFAULT '0',
  `pai` varchar(30) NOT NULL DEFAULT '0',
  `mae` varchar(30) NOT NULL DEFAULT '0',
  `data_` date NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '0',
  `tel` varchar(15) NOT NULL DEFAULT '0',
  `cel` varchar(17) NOT NULL DEFAULT '0',
  `profissao` varchar(30) NOT NULL DEFAULT '0',
  `escolaridade` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php39.cadastro: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` (`id`, `nome`, `rg`, `cpf`, `pai`, `mae`, `data_`, `email`, `tel`, `cel`, `profissao`, `escolaridade`) VALUES
	(3, 'Giselle Soares', '9374837', '49038503850', 'Silvio', 'Maria', '1982-03-31', 'gi@gmail.com', '(83) 4829-7598', '(38) 4 9028-4982', 'Empresaria', 'Superior'),
	(27, 'JOSE ALVES DE SOUZA NETO', '5362121', '03322941108', 'Neto', 'Maria', '1989-11-20', 'jsn.ads@gmail.com', '(62) 3201-2191', '(62) 9 9351-8323', 'Ti', 'Superior'),
	(30, 'Cristina Monik França e Costa', '8475893', '02495206131', 'Jose Neto', 'Maria', '1987-12-11', 'jsn.ads@gmail.com', '(62) 3201-2191', '(62) 9 9351-8323', 'Fisioterapeuta', 'Superior');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.37-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php27
CREATE DATABASE IF NOT EXISTS `php27` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php27`;

-- Copiando estrutura para tabela php27.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php27.usuarios: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`) VALUES
	(1, 'Jose Alves de Souza Neto'),
	(2, 'Cristina Monik França e Costa'),
	(3, 'Rodrigo Caneiro Vieira'),
	(4, 'Giselle Alves Soares'),
	(5, 'Ludmilla Alves Soares'),
	(7, 'ARTHUR DA SILVA PEQUENO '),
	(8, 'EMIVAL PEDROSO DA SILVA FILHO'),
	(9, 'HO 181066029354 649,87\r\nGABRIELE DIAS GONCALVES'),
	(10, 'KRISLLA HIASNAIA COSTA'),
	(11, 'PEDRO CAETANO DE OLIVEIRA GUSMAO '),
	(12, 'CAROLINA DUQUE SANTOS'),
	(13, 'INGRID MARCILIO SILVA DE SOUZA'),
	(14, 'LUCAS ANDRADE CALDEIRA BRANT'),
	(15, 'ANA CLARA SILVA DOS SANTOS '),
	(16, 'BARBARA LINHARES FRIES'),
	(17, 'GABRIEL VITOR DA SILVA LOPES'),
	(18, 'KAREN MARTA BORGES PROENCA'),
	(19, 'YURI BATISTA DA SILVA'),
	(20, 'GEDEAO CARLOS CORAZZA'),
	(21, 'JESSICA DA SILVA TEIXEIRA'),
	(22, 'GRASIELE ALVES COSTA'),
	(23, 'SUZANA PEREIRA VANIQUE GOMES'),
	(24, 'IAN DE JESUS SILVA'),
	(25, 'JHONATHAN VAZ FERNANDES'),
	(26, 'GABRIEL DE SOUZA CARNEIRO'),
	(27, 'LARISSA RODRIGUES DE SOUSA'),
	(28, 'LARISSA RODRIGUES DE SOUSA'),
	(29, 'LEANDRO TEIXEIRA DA SILVA'),
	(30, 'JUAN CHAVES FALCAO DE OLIVEIRA');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

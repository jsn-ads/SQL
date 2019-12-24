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


-- Copiando estrutura do banco de dados para php28
CREATE DATABASE IF NOT EXISTS `php28` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php28`;

-- Copiando estrutura para tabela php28.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `fone_com` varchar(13) DEFAULT NULL,
  `fone_res` varchar(13) DEFAULT NULL,
  `celular` varchar(13) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela php28.cliente: 0 rows
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela php28.fotos
CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php28.fotos: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` (`id`, `titulo`, `url`) VALUES
	(1, 'Resident Evil 2', 're2.jpg'),
	(2, 'The Last of US', 'lastofus.jpg'),
	(3, 'Red Dead 2', 'reddead2.jpg'),
	(4, 'Sombras da Guerra', 'sombrasguerra.jpg'),
	(5, 'Uncharted 4', 'uncharted4.jpg'),
	(6, 'Dark Souls 2', 'darksouls2.jpg'),
	(7, 'Bloodborme', 'bloodborne.jpg'),
	(8, 'Guears Of War 4', 'guears2.png'),
	(16, 'Dark Souls 1', '93f967cfb13eeaca47c6d1ad17d6e60d.jpg'),
	(17, 'Halo 5', 'a23b5baa70f18f766adca15551d818c7.jpg'),
	(18, 'God of War', '253b589f4083ba9f6485534ef9d4470d.jpg'),
	(19, 'chelsea', '471f42c88daf7a353428fd552d7453c3.jpg');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;

-- Copiando estrutura para tabela php28.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `apelido` varchar(15) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `rg` varchar(25) DEFAULT NULL,
  `ctps` varchar(30) DEFAULT NULL,
  `data_nasc` varchar(10) DEFAULT NULL,
  `estado_civil` varchar(12) DEFAULT NULL,
  `numero_filhos` varchar(5) DEFAULT NULL,
  `tipo_sanguineo` varchar(15) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `fone_com` varchar(13) DEFAULT NULL,
  `fone_res` varchar(13) DEFAULT NULL,
  `celular` varchar(13) DEFAULT NULL,
  `escolaridade` varchar(15) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT NULL,
  `ano` varchar(5) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `nivel` varchar(1) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela php28.funcionario: 1 rows
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`codigo`, `nome`, `apelido`, `cargo`, `setor`, `cpf`, `rg`, `ctps`, `data_nasc`, `estado_civil`, `numero_filhos`, `tipo_sanguineo`, `email`, `fone_com`, `fone_res`, `celular`, `escolaridade`, `situacao`, `ano`, `endereco`, `bairro`, `cidade`, `estado`, `cep`, `login`, `senha`, `nivel`) VALUES
	(1, 'AUGUSTO CESAR DA COSTA MARQUES', NULL, NULL, NULL, '95173684100', NULL, NULL, NULL, 'SOLTEIRO(a)', NULL, NULL, 'costamarques@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RJ', NULL, 'admin', 'admin', '1');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela php28.ordemservico
CREATE TABLE IF NOT EXISTS `ordemservico` (
  `Cod_Equipamento` int(11) NOT NULL AUTO_INCREMENT,
  `Funcionario` varchar(50) DEFAULT NULL,
  `Data_Entrada` varchar(10) DEFAULT NULL,
  `Hora_Entrada` varchar(10) DEFAULT NULL,
  `Cliente` varchar(50) DEFAULT NULL,
  `Equipamento` varchar(255) DEFAULT NULL,
  `Modelo` varchar(255) DEFAULT NULL,
  `Marca` varchar(255) DEFAULT NULL,
  `Patrimonio` varchar(100) DEFAULT NULL,
  `Serie` varchar(100) DEFAULT NULL,
  `Setor` varchar(200) DEFAULT NULL,
  `Garantia` varchar(5) DEFAULT NULL,
  `Problemacliente` text,
  `Data_Agenda` varchar(10) DEFAULT NULL,
  `Hora_Agenda` varchar(50) DEFAULT NULL,
  `DiagnosticoTecnico` text,
  `Solucao` text,
  `Previsaoentrega` varchar(10) DEFAULT NULL,
  `Dataentrega` varchar(10) DEFAULT NULL,
  `Recebido` varchar(150) DEFAULT NULL,
  `Arquivo` varchar(1) DEFAULT 'n',
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Equipamento`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela php28.ordemservico: 0 rows
/*!40000 ALTER TABLE `ordemservico` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordemservico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

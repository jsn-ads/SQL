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


-- Copiando estrutura do banco de dados para amg
CREATE DATABASE IF NOT EXISTS `amg` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amg`;

-- Copiando estrutura para tabela amg.associados
CREATE TABLE IF NOT EXISTS `associados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `ativo` int(2) DEFAULT NULL,
  `data_cad` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.associados: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `associados` DISABLE KEYS */;
INSERT INTO `associados` (`id`, `nome`, `email`, `usuario`, `senha`, `ativo`, `data_cad`) VALUES
	(6, 'Jamario', 'jamario@gmail.com', 'jamal', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-12-16 11:35:15'),
	(8, 'Anderson Rocha', 'asr@gmail.com', 'asrocha', '202cb962ac59075b964b07152d234b70', 1, '2019-12-16 17:21:33'),
	(9, 'Luis Henrique', 'luis@gmail.com', 'luis@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2019-12-16 17:22:19'),
	(10, 'Rodrigo Carneiro', 'dk@gmail.com', 'dk', '202cb962ac59075b964b07152d234b70', 1, '2019-12-16 17:23:10'),
	(11, 'Neto', 'neto@gmail.com', 'netojsn', '202cb962ac59075b964b07152d234b70', 1, '2019-12-16 17:23:48'),
	(12, 'Mateus', 'mat@gmail.com', 'matt', '202cb962ac59075b964b07152d234b70', 1, '2019-12-16 17:24:26'),
	(13, 'Cristina Monik França E Costa', 'cris@gmail.com', 'cris', '1cc39ffd758234422e1f75beadfc5fb2', 0, '2019-12-16 17:24:58'),
	(16, 'Lenonel', 'leonel@gmail.com', 'leonel', '202cb962ac59075b964b07152d234b70', 1, '2019-12-17 09:04:38'),
	(29, 'José Alves De Souza Neto', 'Jsn.ads@gmail.com', 'Neto', '123', 1, '2019-12-17 15:46:37'),
	(30, 'Milene', 'Milene@gmail.com', 'Milene', '12345', 1, '2019-12-19 13:51:47');
/*!40000 ALTER TABLE `associados` ENABLE KEYS */;

-- Copiando estrutura para tabela amg.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.groups: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(2, 'members', 'General User');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Copiando estrutura para tabela amg.info_associados
CREATE TABLE IF NOT EXISTS `info_associados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Coluna 2` int(11) NOT NULL DEFAULT '0',
  `id_associado` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL DEFAULT '',
  `crm` varchar(10) NOT NULL DEFAULT '',
  `data_nascimento` date NOT NULL,
  `estado_civil` varchar(15) NOT NULL DEFAULT '',
  `nacionalidade` varchar(25) NOT NULL DEFAULT '',
  `tel_res` varchar(14) NOT NULL DEFAULT '',
  `cel_res` varchar(16) NOT NULL DEFAULT '',
  `rua_res` varchar(40) NOT NULL DEFAULT '',
  `num_res` varchar(4) NOT NULL DEFAULT '',
  `compl_res` varchar(30) NOT NULL DEFAULT '',
  `corr_res` varchar(2) NOT NULL DEFAULT '',
  `cep_res` varchar(9) NOT NULL DEFAULT '',
  `bairro_res` varchar(30) NOT NULL DEFAULT '',
  `cidade_res` varchar(30) NOT NULL DEFAULT '',
  `estado_res` varchar(2) NOT NULL DEFAULT '',
  `tel_com` varchar(14) NOT NULL DEFAULT '',
  `cel_com` varchar(16) NOT NULL DEFAULT '',
  `rua_com` varchar(40) NOT NULL DEFAULT '',
  `num_com` varchar(4) NOT NULL DEFAULT '',
  `compl_com` varchar(30) NOT NULL DEFAULT '',
  `corr_com` varchar(2) NOT NULL DEFAULT '',
  `cep_com` varchar(9) NOT NULL DEFAULT '',
  `bairro_com` varchar(30) NOT NULL DEFAULT '',
  `cidade_com` varchar(30) NOT NULL DEFAULT '',
  `estado_com` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `id_associado` (`id_associado`),
  CONSTRAINT `id_associado` FOREIGN KEY (`id_associado`) REFERENCES `associados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.info_associados: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `info_associados` DISABLE KEYS */;
INSERT INTO `info_associados` (`id`, `Coluna 2`, `id_associado`, `cpf`, `crm`, `data_nascimento`, `estado_civil`, `nacionalidade`, `tel_res`, `cel_res`, `rua_res`, `num_res`, `compl_res`, `corr_res`, `cep_res`, `bairro_res`, `cidade_res`, `estado_res`, `tel_com`, `cel_com`, `rua_com`, `num_com`, `compl_com`, `corr_com`, `cep_com`, `bairro_com`, `cidade_com`, `estado_com`) VALUES
	(1, 0, 11, '033.229.411-08', '43839849', '1989-11-20', 'Casado', 'Brasileiro', '(43)5678-9765', '(62)9 9351-8323', 'Rua 222', '2234', 'Qd 100 Lt 02', '98', '74603-160', 'Leste Universitário', 'Goiânia', 'go', '(58)7947-5983', '(83)9 4085-9734', 'Rua 251', '3223', 'Qd 200 Lt 02', '43', '74607-456', 'Leste Universitário', 'Goiânia', 'go');
/*!40000 ALTER TABLE `info_associados` ENABLE KEYS */;

-- Copiando estrutura para tabela amg.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.login_attempts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Copiando estrutura para tabela amg.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
	(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1576841074, 1, 'Admin', 'istrator', 'ADMIN', '0'),
	(2, '', 'Neto', '4444444', NULL, 'jsn.ads@gmail.com', NULL, NULL, NULL, NULL, 0, NULL, 1, 'Jose Alves De Souza Neto', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Copiando estrutura para tabela amg.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela amg.users_groups: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(2, 1, 2);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

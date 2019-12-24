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


-- Copiando estrutura do banco de dados para wfesta
CREATE DATABASE IF NOT EXISTS `wfesta` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wfesta`;

-- Copiando estrutura para tabela wfesta.banco
CREATE TABLE IF NOT EXISTS `banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.banco: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` (`id`, `nome`) VALUES
	(1, 'Banco Do Brasil'),
	(3, 'Banco Inter'),
	(4, 'Banco Nubank'),
	(5, 'Banco Itau'),
	(6, 'Banco Caixa');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.cargo
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) DEFAULT NULL,
  `valor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.cargo: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (`id`, `descricao`, `valor`) VALUES
	(1, 'Supervisor', '1.500,00'),
	(2, 'Vendedor', '1.200,00'),
	(3, 'Garçom ', '1.100,00'),
	(4, 'Supervisor de ti', '1.600,00');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.cidade
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.cidade: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`id`, `nome`) VALUES
	(3, 'Goiânia'),
	(5, 'Rio Verde'),
	(6, 'Aparecida De Goiania'),
	(8, 'Inhumas'),
	(9, 'Ipora'),
	(10, 'Jaragua'),
	(11, 'Caldas Novas'),
	(15, 'Rio Quente'),
	(16, 'Teresopolis');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `instagran` varchar(30) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `cel` varchar(17) DEFAULT NULL,
  `cel2` varchar(17) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(4) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `id_setor_cliente` int(11) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_setor_cliente` (`id_setor_cliente`),
  CONSTRAINT `id_setor_cliente` FOREIGN KEY (`id_setor_cliente`) REFERENCES `setor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.cliente: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `nome`, `cpf`, `cnpj`, `email`, `instagran`, `tel`, `cel`, `cel2`, `rua`, `numero`, `complemento`, `id_setor_cliente`, `obs`) VALUES
	(2, 'Marina Barbosa', '024.952.061-31', '43.798/7549-37', 'mari@gmail.com', 'mari@gmail.com', '(54)6455-4764', '(36)5 6464-5764', '(45)3 4646-5476', 'Rua Minas Gerais', '5656', 'Qd 120', 37, 'Festa sera no feriado numa chacara'),
	(3, 'Raissa Souza', '033.229.411-08', '99.999.999/9999-99', 'rai@gmail.com', 'rai@gmail.com', '(54)3676-7585', '(98)9 7675-7575', '(47)4 5747-4674', 'Agua Fria', '4555', 'Qd 145', 27, 'A festa sera em local particular'),
	(4, 'Wandre', '839.058.094-73', '74.289.749/4275-94', 'wcast@gmail.com', 'wcast@gmail.com', '(48)3908-4028', '(98)3 2402-8340', '(49)2 3084-3028', 'Rua 2938', '545', 'Qd 33', 26, 'Criando um sistema de eventos com \r\n20% concluÃƒÂ­do'),
	(5, 'José Alves De Souza Neto', '646.464.564-65', '64.563.636/5656-56', '', '', '(56)4765-5878', '(76)8 6787-8678', '(67)8 6786-7867', 'Rua 222', '5646', 'Hospital', 37, '20/11/1989'),
	(6, 'França', '850.489.375-98', '48.095.890/3850-34', '', '', '(35)4765-8978', '(78)9 0987-6543', '(79)0 9876-5342', 'Rua 222', '5646', 'Hospital', 40, 'Jogador de futebol chelsea'),
	(7, 'Leonel Messi', '489.408.849-48', '45.982.988/4928-35', 'leonel@gmail.com', 'leonel@gmail.com', '(90)4989-4392', '(84)7 5897-9243', '(89)4 0749-8225', 'Rua 222', '5646', 'Hospital', 26, 'Jogador de futebol do barcelona');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.cliente_evento
CREATE TABLE IF NOT EXISTS `cliente_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cliente_evento_cliente` (`idcliente`),
  CONSTRAINT `FK_cliente_evento_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.cliente_evento: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_evento` DISABLE KEYS */;
INSERT INTO `cliente_evento` (`id`, `nome`, `data_evento`, `idcliente`) VALUES
	(1, 'Aniversario do Luan', '2019-10-29', 2),
	(3, 'Natal ', '2019-12-24', 2),
	(6, 'Dia Do Pagamento', '2019-09-16', 4),
	(7, 'Dia das crianças', '2019-10-12', 4),
	(8, 'Aniversario', '2019-10-30', 3),
	(9, 'Dia do Pagamento', '2019-11-04', 5),
	(10, 'Buscar computadores no csc', '2019-11-07', 4),
	(11, 'Aniversario ana julia', '2010-10-30', 4);
/*!40000 ALTER TABLE `cliente_evento` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.contrato
CREATE TABLE IF NOT EXISTS `contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_setor` int(11) NOT NULL DEFAULT '0',
  `id_cliente_contrato` int(11) NOT NULL DEFAULT '0',
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente_contrato` (`id_cliente_contrato`),
  KEY `id_setor` (`id_setor`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `FK_contrato_setor` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente_contrato` FOREIGN KEY (`id_cliente_contrato`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.contrato: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL DEFAULT '0',
  `contato` varchar(45) NOT NULL DEFAULT '0',
  `rg` varchar(6) NOT NULL DEFAULT '0',
  `cpf` varchar(15) NOT NULL DEFAULT '0',
  `cnpj` varchar(20) NOT NULL DEFAULT '0',
  `tel` varchar(13) NOT NULL DEFAULT '0',
  `cel` varchar(15) NOT NULL DEFAULT '0',
  `cel2` varchar(15) NOT NULL DEFAULT '0',
  `rua` varchar(45) NOT NULL DEFAULT '0',
  `numero` varchar(4) NOT NULL DEFAULT '0',
  `complemento` varchar(25) NOT NULL DEFAULT '0',
  `id_setor_empresa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_setor_empresa` (`id_setor_empresa`),
  CONSTRAINT `id_setor_empresa` FOREIGN KEY (`id_setor_empresa`) REFERENCES `setor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.empresa: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`id`, `nome`, `contato`, `rg`, `cpf`, `cnpj`, `tel`, `cel`, `cel2`, `rua`, `numero`, `complemento`, `id_setor_empresa`) VALUES
	(1, 'Cia De Lazer E Eventos', 'Alexandre Simon Neto', '401029', '950.816.581-20', '15.157.502/0001-06', '(43)5678-9765', '(62)9 8491-5026', '(67)8 6786-7867', 'Rua 333', '5646', 'Hospital', 45),
	(2, 'Neto Sistemas', 'Jose Alves De Souza Neto', '536212', '033.229.411-08', '48.095.890/3850-34', '(67)8764-4545', '(78)9 0987-6547', '(65)7 8798-7654', 'Rua 222', '223', 'Posto', 24);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.fornecedor
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `contato` varchar(50) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `municipal` varchar(12) DEFAULT NULL,
  `estadual` varchar(12) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `cel` varchar(17) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(4) DEFAULT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `id_setor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_setor` (`id_setor`),
  CONSTRAINT `id_setor` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.fornecedor: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` (`id`, `nome`, `contato`, `cnpj`, `municipal`, `estadual`, `tel`, `cel`, `rua`, `numero`, `complemento`, `id_setor`) VALUES
	(2, 'Wandre Castanheira', 'WCast', '75.894.759/3794-79', '', '', '(62)3207-1245', '(62)9 8118-6620', 'Av Anhanguera', '4567', 'Qd:34 Lt:03', 20),
	(3, 'Coelgo Engenharia Ltda', 'WCast', '01.863.515/0001-88', '543635747656', '568567587878', '(62)3218-4120', '(62)9 8118-6620', 'Av Setima Avenida', '129', 'Qd:29 Lt:25', 26),
	(4, 'Joule Engenharia ', 'Marly', '08.578.575/0001-06', '409353753274', '487589374593', '(62)3269-1661', '(62)9 9351-8323', 'RUA MARACA', '306', 'Quadra 161 Lote', 37),
	(5, 'Santtíssima Underwear', 'Giselle', '53.674.596/0001-89', '', '', '(62)3645-9983', '(62)9 9321-1445', 'Av. T-15, Número', '1597', 'Quadra 158 Lote', 43),
	(6, 'Cris Modas', 'Cristina', '45.398.759/8347-95', '656464654646', '456456455645', '(46)4564-5645', '(46)4 5645-6654', 'Rua 222', '5567', 'Posto', 36),
	(7, 'Coca Cola', 'Mateu Kovacit', '84.985.968/5909-86', '543534534534', '534534543543', '(45)4543-5345', '(43)5 3453-6547', 'Rua 222', '5646', 'Hospital', 34);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `cel` varchar(17) DEFAULT NULL,
  `cel2` varchar(17) DEFAULT NULL,
  `obs` varchar(150) DEFAULT NULL,
  `agencia` varchar(6) DEFAULT NULL,
  `conta` varchar(10) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_banco` (`id_banco`),
  CONSTRAINT `id_banco` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.funcionario: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`id`, `nome`, `cpf`, `cel`, `cel2`, `obs`, `agencia`, `conta`, `id_banco`) VALUES
	(1, 'Jose Alves De Souza Neto', '033.229.411-08', '(62)9 9351-832', '(67)8 6786-7867', 'Trabalha apenas meio período entre 14:00 as 16:00 com crianças de 6 anos', '543535', '535453656', 1),
	(2, 'Cristina Monik França E Costa', '024.952.061-31', '(62)9 9351-832', '(67)8 6786-7867', 'Teste', '445465', '5364765787', 1),
	(9, 'Wadre Castanheira', '478.937.598-67', '(62)9 9351-832', '(67)8 6786-7867', '', NULL, NULL, NULL),
	(10, 'Kaio Rise', '094.809.584-38', '(76)8 6787-8678', '(89)7 8675-6567', '', NULL, NULL, NULL),
	(11, 'Unchaterd Lost Legacy', '389.587.948-37', '(76)8 6787-8678', '(76)8 6786-7868', '', NULL, NULL, NULL),
	(12, 'Rodrigo Carneiro', '908.348.439-75', '(62)9 9351-832', '(89)7 8675-6567', '', NULL, NULL, NULL),
	(13, 'Anderson Souza Rocha', '904.398.038-94', '(83)4 9834-938', '(58)9 0348-5093', '', NULL, NULL, NULL),
	(14, 'Vitor', '058.349.759-83', '(49)0 8509-3480', '(33)5 9094-3639', 'Tentando receber', '445465', '5364765787', 4);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.funcionario_cargo
CREATE TABLE IF NOT EXISTS `funcionario_cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario_cargo` int(11) DEFAULT NULL,
  `id_cargo_funcionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_funcionario_cargo` (`id_funcionario_cargo`),
  KEY `id_cargo_funcionario` (`id_cargo_funcionario`),
  CONSTRAINT `id_cargo_funcionario` FOREIGN KEY (`id_cargo_funcionario`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_funcionario_cargo` FOREIGN KEY (`id_funcionario_cargo`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.funcionario_cargo: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario_cargo` DISABLE KEYS */;
INSERT INTO `funcionario_cargo` (`id`, `id_funcionario_cargo`, `id_cargo_funcionario`) VALUES
	(1, 13, 1),
	(2, 1, 4),
	(5, 13, 4),
	(6, 13, 2),
	(7, 2, 2),
	(8, 1, 3),
	(9, 14, 1);
/*!40000 ALTER TABLE `funcionario_cargo` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.funcionario_contrato
CREATE TABLE IF NOT EXISTS `funcionario_contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario_contrato` int(11) DEFAULT NULL,
  `Id_contrato_funcionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_funcionario_contrato` (`id_funcionario_contrato`),
  KEY `id_contrato_funcionario` (`Id_contrato_funcionario`),
  CONSTRAINT `id_contrato_funcionario` FOREIGN KEY (`Id_contrato_funcionario`) REFERENCES `contrato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_funcionario_contrato` FOREIGN KEY (`id_funcionario_contrato`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.funcionario_contrato: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario_contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario_contrato` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(40) DEFAULT NULL,
  `preco` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.produto: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `descricao`, `preco`) VALUES
	(1, 'Coca-cola 600ml', '5,00'),
	(2, 'Agua Mineral', '2,00'),
	(3, 'Cerveja Skol 600ml', '7,00'),
	(4, 'Paçoca', '1,00'),
	(5, 'Sorvete 200ml', '3,00'),
	(6, 'Guarana Antartica 600ml', '4,50'),
	(7, 'Cerveja Antartica ', '7,20'),
	(8, 'Pipoca Grande', '5,00'),
	(9, 'Salgado', '4,00'),
	(10, 'Doce', '1,00'),
	(11, 'Canjica', '3,00'),
	(13, 'Jujuba', '2,00'),
	(16, 'Pave', '2,00');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.prod_fornecedor
CREATE TABLE IF NOT EXISTS `prod_fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(11) DEFAULT NULL,
  `idproduto` int(11) DEFAULT NULL,
  `valor_custo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_prod_fornecedor_fornecedor` (`idfornecedor`),
  KEY `FK_prod_fornecedor_produto` (`idproduto`),
  CONSTRAINT `FK_prod_fornecedor_fornecedor` FOREIGN KEY (`idfornecedor`) REFERENCES `fornecedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prod_fornecedor_produto` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.prod_fornecedor: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `prod_fornecedor` DISABLE KEYS */;
INSERT INTO `prod_fornecedor` (`id`, `idfornecedor`, `idproduto`, `valor_custo`) VALUES
	(1, 3, 4, '0,50'),
	(2, 5, 13, '1.00'),
	(3, 4, 3, '6,00'),
	(4, 3, 11, '2,13'),
	(5, 2, 4, '0,49'),
	(10, 2, 2, '0,90'),
	(11, 2, 1, '4,00'),
	(12, 7, 2, '0,99');
/*!40000 ALTER TABLE `prod_fornecedor` ENABLE KEYS */;

-- Copiando estrutura para tabela wfesta.setor
CREATE TABLE IF NOT EXISTS `setor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_setor_cidade` (`idcidade`),
  CONSTRAINT `FK_setor_cidade` FOREIGN KEY (`idcidade`) REFERENCES `cidade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela wfesta.setor: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` (`id`, `nome`, `idcidade`) VALUES
	(20, 'Centro', 3),
	(21, 'Madre Germana', 6),
	(23, 'Centro', 10),
	(24, 'Leste Universitário', 3),
	(25, 'Centro', 6),
	(26, 'Setor Bancários', 8),
	(27, 'Vila Floresta', 8),
	(29, 'Centro', 8),
	(31, 'Campus Centro', 3),
	(32, 'Garavelo', 6),
	(33, 'Centro', 11),
	(34, 'Rio Quente', 11),
	(35, 'Centro', 9),
	(36, 'Israelandia', 9),
	(37, 'Colina Parque', 10),
	(38, 'Parque Acácias', 5),
	(39, 'Centro', 5),
	(40, 'HotPark', 15),
	(41, 'Centro', 15),
	(42, 'Santa Genoveva', 3),
	(43, 'Bueno', 3),
	(44, 'Centro', 16),
	(45, 'Verendas Dos Buritis', 3);
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

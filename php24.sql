-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.37-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php24
CREATE DATABASE IF NOT EXISTS `php24` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php24`;

-- Copiando estrutura para tabela php24.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticias` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php24.posts: ~51 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `noticias`) VALUES
	(1, 'Líder do governo admite mudanças na PEC da Previdência, mas \'sem aventura\' no plenário'),
	(2, 'Reforma da Previdência: veja as próximas etapas da tramitação após a comissão especial'),
	(3, 'Chuva em SP causa alagamentos e interdita Marginal Tietê e trecho da Anhanguera'),
	(4, 'Rodovia dos Tamoios é interditada no trecho de serra por risco de queda de barreiras'),
	(5, 'Cidades de SC registram temperaturas negativas e geada nesta sexta-feira'),
	(6, '91% das empresas contratariam profissionais com mais de 50 anos, diz pesquisa'),
	(7, 'Consumidor poderá bloquear ligações de telemarketing; veja como funciona'),
	(8, 'Casal faz pacientes e funcionários de clínica reféns em assalto na Zona Norte de SP; veja vídeo'),
	(9, 'Explosão de um carro deixa três mortos na Turquia'),
	(10, 'A rede de falsários que explora imigrantes haitianos no Brasil'),
	(11, 'Novos diálogos sugerem que Moro teria orientado Lava Jato, diz revista'),
	(12, 'Aérea argentina Flybondi começa operar no Brasil a partir de outubro'),
	(13, 'Acordo com UE já traz impacto positivo, diz chanceler'),
	(14, 'Acordo com UE já traz impacto positivo, diz chanceler'),
	(15, 'Reforma pode incluir Estados e Municípios no plenário'),
	(16, 'Em 6 meses de Doria, poucos projetos saem do papel em SP'),
	(17, 'Comissão da reforma da Previdência rejeita mais mudanças em parecer'),
	(18, 'Presidentes de TREs se reúnem para debater o sistema político-eleitoral'),
	(19, 'Bolsonaro indica Carlos Velloso Filho para o Tribunal Superior Eleitoral'),
	(20, 'STF vai julgar em agosto recurso de Lula de ação sobre instituto'),
	(21, 'Relator do pacote anticrime relata homens armados perto de sua casa'),
	(22, 'Comissão tira bombeiros e policiais militares da reforma da Previdência'),
	(23, 'Maia: Plenário inicia discussão e vota reforma na semana que vem'),
	(24, 'Comissão rejeita destaque sobre aposentadoria de professores'),
	(25, 'Senador pede que Moro e Guedes expliquem ação contra jornalista'),
	(26, 'Bolsonaro foi \'ingênuo\' ao tentar regra suave para polícia, diz Guedes'),
	(27, 'Comissão rejeita dois destaques sobre aposentadoria de policiais'),
	(28, '\'Temos dois anos para reduzir e eliminar impostos\', diz Guedes'),
	(29, 'Noruega rejeita proposta de Salles para mudar Fundo Amazônia'),
	(30, 'Guedes vê potência fiscal na reforma para tentar capitalização'),
	(31, 'Guedes vê potência fiscal na reforma para tentar capitalização'),
	(32, 'Ramos abre processo de votação de relatório da Previdência'),
	(33, 'Ramos abre processo de votação de relatório da Previdência'),
	(34, 'Bolsonaro, à bancada ruralista: \'Este governo é de vocês\''),
	(35, 'Lamborghini de Eike e lancha de Cabral vão a leilão hoje no Rio'),
	(36, 'PF abre inquérito para investigar sargento da FAB preso com cocaína'),
	(37, 'Comissão abre sessão para tentar votar texto da Previdência'),
	(38, 'General de Exército Marcos Amaro assume Comando Militar do Sudeste'),
	(39, 'Desmatamento na Amazônia aumenta 15% e chega a 4.565 km²'),
	(40, 'Em carta, Léo Pinheiro diz que não sofreu coação para delatar Lula'),
	(41, 'Reforma da Previdência tem dia decisivo nesta quinta após pressão'),
	(42, 'Fiz "excelente proposta" e policiais não aceitaram, lamenta Bolsonaro'),
	(43, 'Prêmio de R$ 35 milhões da Mega-Sena sai para aposta de São Paulo'),
	(44, 'Relator mantém em 55 anos idade para aposentadoria de policiais'),
	(45, 'Texto da reforma não trará regra mais branda para policiais, diz Maia'),
	(46, 'Bolsonaro fez chegar a Maia \'percepção\' sobre policiais'),
	(47, 'Congresso autoriza compra de carros blindados para a Presidência'),
	(48, 'Congresso autoriza crédito para bônus a servidores do INSS'),
	(49, 'Acordo prevê mudanças para policiais, a pedido de Bolsonaro'),
	(50, 'Projeto obriga motorista bêbado que causar acidente a pagar o SUS '),
	(51, 'Agricultura analisa alta de 88% no desmate da Amazônia, diz ministra');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

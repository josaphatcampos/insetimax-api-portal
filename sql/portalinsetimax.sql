-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 25-Abr-2022 às 11:22
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portalinsetimax`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `titulo`, `imagem`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `url`) VALUES
(1, 'Teste Portal', 'banners\\April2022\\a2vXrhU3dEnlGlvee4A1.png', 1, '2022-04-25 11:51:39', '2022-04-25 12:19:35', NULL, 'https://jocampos.com.br'),
(2, 'Home Garden', 'banners\\April2022\\7Hc1csnWrPUJLheZG5Uf.png', 5, '2022-04-25 12:42:53', '2022-04-25 12:45:59', NULL, 'https://jocampos.com.br'),
(3, 'Home Garden', 'banners\\April2022\\2VidH3fGbUlfp29eXQLm.png', 5, '2022-04-25 12:56:40', '2022-04-25 12:56:40', NULL, 'https://jocampos.com.br'),
(4, 'Insetimax pro', 'banners\\April2022\\YSPUGRpFngimKrubuoMC.webp', 4, '2022-04-25 13:45:05', '2022-04-25 13:45:05', NULL, NULL),
(5, 'ourogarden', 'banners\\April2022\\5xuSor18NivBGxQpCXQj.webp', 2, '2022-04-25 14:00:11', '2022-04-25 14:00:11', NULL, NULL),
(6, 'ouropet', 'banners\\April2022\\ZZMYrGZVkxmjmEJTXG7X.webp', 3, '2022-04-25 14:07:50', '2022-04-25 14:07:50', NULL, NULL),
(7, 'ouropet', 'banners\\April2022\\5DZrSXR54qHZcz1DR9CL.webp', 3, '2022-04-25 14:08:03', '2022-04-25 14:08:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo_pt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo_es` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo_pt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo_es` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo_pt` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo_en` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo_es` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_pt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_es` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tempo_leitura` int(11) DEFAULT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `blogs`
--

INSERT INTO `blogs` (`id`, `titulo_pt`, `titulo_en`, `titulo_es`, `subtitulo_pt`, `subtitulo_en`, `subtitulo_es`, `conteudo_pt`, `conteudo_en`, `conteudo_es`, `tags_pt`, `tags_en`, `tags_es`, `imagem`, `created_at`, `updated_at`, `deleted_at`, `tempo_leitura`, `site_id`, `slug`) VALUES
(1, 'BARATA NO LANCHE: CLIENTE DIZ TER MORDIDO INSETO EM REDE DE FAST-FOOD EM PORTO ALEGRE; \'FIQUEI SEM REAÇÃO\'', NULL, NULL, 'A primeira experiência em uma unidade da rede de fast-food KFC, no shopping Iguatemi, em Porto Alegre, não terminou como o servidor público Carlo Felipe Sardi, de 54 anos, esperava. Na segunda-feira (27/12), ele afirma que foi à lanchonete com a sobrinha Júlia Penha e, ao comer um sanduíche, alega ter mordido uma barata.  \'Incrédulo, ainda mastigava o sanduíche bestificado. Fiquei sem reação. Isso é o tipo de coisa que só se vê acontecer com outras pessoas, na televisão. Ninguém prepara você para um momento desses\', diz.', NULL, NULL, '<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">A primeira experi&ecirc;ncia em uma unidade da rede de fast-food KFC, no shopping Iguatemi, em Porto Alegre, n&atilde;o terminou como o servidor p&uacute;blico Carlo Felipe Sardi, de 54 anos, esperava. Na segunda-feira (27/12), ele afirma que foi &agrave; lanchonete com a sobrinha J&uacute;lia Penha e, ao comer um sandu&iacute;che, alega ter mordido uma barata.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">\'Incr&eacute;dulo, ainda mastigava o sandu&iacute;che bestificado. Fiquei sem rea&ccedil;&atilde;o. Isso &eacute; o tipo de coisa que s&oacute; se v&ecirc; acontecer com outras pessoas, na televis&atilde;o. Ningu&eacute;m prepara voc&ecirc; para um momento desses\', diz.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">O KFC Brasil diz ao g1 que j&aacute; acionou os protocolos de verifica&ccedil;&atilde;o para apurar o ocorrido e que todos os restaurantes da marca passam por auditorias constantes, sendo a &uacute;ltima realizada na unidade em quest&atilde;o em 10 de dezembro. Uma nova auditoria interna e outra, independente, ser&atilde;o realizadas nesta quarta-feira (29).</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;\'A marca reafirma o compromisso com a qualidade dos seus produtos e com a seguran&ccedil;a dos processos de qualidade\', disse, em nota. (Leia a &iacute;ntegra ao fim da reportagem)</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">O caso passou a repercutir logo que a jovem e o tio comentaram nas redes sociais sobre o assunto. \'O objetivo das postagens, antes de tudo, foi para chamar a aten&ccedil;&atilde;o do p&uacute;blico, para que n&atilde;o passem pela mesma experi&ecirc;ncia que tive, e dos &oacute;rg&atilde;os de fiscaliza&ccedil;&atilde;o\', aponta Carlo.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">De acordo com Carlo, ambos foram conhecer o restaurante, mas ela n&atilde;o pediu nada e ele acatou a sugest&atilde;o do balconista, que teria indicado o sandu&iacute;che com salada e batatas fritas.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Conforme o servidor p&uacute;blico, ele estava comendo as batatas e o sandu&iacute;che quando, ao dar uma mordida, sentiu cair da boca o que pensou ser um peda&ccedil;o de frango.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">\'A barata n&atilde;o estava nas batatas fritas, pois essas vieram soltas, servidas ao lado do sandu&iacute;che. E, pelo tamanho do animal, inteiro, seria imposs&iacute;vel n&atilde;o v&ecirc;-la e eu, mais ainda, de mord&ecirc;-la\', descreve. \'Por alguns momentos ficamos, eu e J&uacute;lia, em choque olhando aquilo, quando ela resolveu tirar fotos e eu, reclamar ao gerente\', acrescenta.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Apesar da estupefa&ccedil;&atilde;o, Carlo afirma que reclamou e ainda tentou dissuadir outras pessoas na fila a comerem no local mostrando a barata na bandeja.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">A KFC afirma que ressarciu o cliente e tenta contato para esclarecer o assunto. Carlo diz que procurou atendimento m&eacute;dico para verificar se havia algo de errado, j&aacute; que mesmo escovando os dentes e fazendo gargarejos com enxaguante bucal, n&atilde;o se desfaz da sensa&ccedil;&atilde;o de morder o inseto.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">\'Tive diarreia, c&oacute;lica intestinal e forte azia. Falei com minha m&eacute;dica, que me aconselhou a fazer exames e tomar verm&iacute;fugo e antibi&oacute;tico\', relata.</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Contudo, ele foi tranquilizado pelo m&eacute;dico do posto de sa&uacute;de, que, segundo Carlo, indicou um antibi&oacute;tico, para prevenir qualquer poss&iacute;vel infec&ccedil;&atilde;o, juntamente com soro, para hidrata&ccedil;&atilde;o. Ap&oacute;s longa conversa com o m&eacute;dico, ele afirma, conseguiu voltar a comer.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" />FONTE: G1 RIO GRANDE DO SUL</p>', NULL, NULL, '#barata #fastfood', NULL, NULL, 'blogs\\April2022\\ZYZZd68B2iRRur0W7okO.jpg', '2022-04-25 06:45:00', '2022-04-25 08:08:35', NULL, 10, 1, 'barata-no-lanche-cliente-diz-ter-mordido-inseto-em-rede-de-fast-food-em-porto-alegre-fiquei-sem-reacao');
INSERT INTO `blogs` (`id`, `titulo_pt`, `titulo_en`, `titulo_es`, `subtitulo_pt`, `subtitulo_en`, `subtitulo_es`, `conteudo_pt`, `conteudo_en`, `conteudo_es`, `tags_pt`, `tags_en`, `tags_es`, `imagem`, `created_at`, `updated_at`, `deleted_at`, `tempo_leitura`, `site_id`, `slug`) VALUES
(2, 'VEJA COMO AS BARATAS TRANSMITEM DOENÇAS AOS HUMANOS', 'VEJA COMO AS BARATAS TRANSMITEM DOENÇAS AOS HUMANOS', 'VEJA COMO AS BARATAS TRANSMITEM DOENÇAS AOS HUMANOS', 'Esses insetos de corpo achatado são sinônimos de sujeira e falta de higiene. Além disso, seus hábitos de alimentação e nidificação podem acumular uma variedade de organismos patogênicos que transmitem aos alimentos e às superfícies por onde passam. Dessa forma, não é de surpreender que eles transmitam muitas doenças, por isso é melhor tomar as medidas necessárias para se livrar das baratas.', 'Esses insetos de corpo achatado são sinônimos de sujeira e falta de higiene. Além disso, seus hábitos de alimentação e nidificação podem acumular uma variedade de organismos patogênicos que transmitem aos alimentos e às superfícies por onde passam. Dessa forma, não é de surpreender que eles transmitam muitas doenças, por isso é melhor tomar as medidas necessárias para se livrar das baratas.', 'Esses insetos de corpo achatado são sinônimos de sujeira e falta de higiene. Além disso, seus hábitos de alimentação e nidificação podem acumular uma variedade de organismos patogênicos que transmitem aos alimentos e às superfícies por onde passam. Dessa forma, não é de surpreender que eles transmitam muitas doenças, por isso é melhor tomar as medidas necessárias para se livrar das baratas.', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Esses insetos de corpo achatado s&atilde;o sin&ocirc;nimos de sujeira e falta de higiene. Al&eacute;m disso, seus h&aacute;bitos de alimenta&ccedil;&atilde;o e nidifica&ccedil;&atilde;o podem acumular uma variedade de organismos patog&ecirc;nicos que transmitem aos alimentos e &agrave;s superf&iacute;cies por onde passam. Dessa forma, n&atilde;o &eacute; de surpreender que eles transmitam muitas doen&ccedil;as, por isso &eacute; melhor tomar as medidas necess&aacute;rias para se livrar das baratas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Como as baratas transmitem doen&ccedil;as aos humanos?</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Geralmente, as baratas podem transmitir doen&ccedil;as de v&aacute;rias maneiras. No entanto, os mais comuns s&atilde;o tr&ecirc;s:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas ou seus excrementos</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Por contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Na maioria dos casos, a transmiss&atilde;o da doen&ccedil;a ocorre pelo contato com elementos contaminados pelas baratas. Dessa maneira, a transmiss&atilde;o geralmente ocorre ao comer ou beber algo que tenha estado recentemente em contato com baratas ou colocando utens&iacute;lios ou objetos que possam ter saliva ou fezes de barata em nossa boca.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Devido a seus h&aacute;bitos alimentares inadequados, as baratas podem transmitir pat&oacute;genos nocivos por meio de seus excrementos. Assim, quando uma barata come algo contaminado, ele entra em seu corpo e pode permanecer em seu sistema digestivo. O pat&oacute;geno fica l&aacute; e aparece nas fezes das baratas, passando para as superf&iacute;cies ou alimentos em que esses insetos excretam.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito &eacute; um dos meios pelos quais as baratas tamb&eacute;m podem espalhar doen&ccedil;as. Forma muito semelhante &agrave; das fezes das baratas, pois a saliva ou o v&ocirc;mito podem abrigar pat&oacute;genos acumulados ao comer alimentos em mau estado.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas vivem em esgotos, fossas, ralos e recipientes de lixo. L&aacute; eles costumam entrar em contato com uma grande variedade de organismos, especialmente bact&eacute;rias e v&iacute;rus, que aderem ao corpo desses insetos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As pernas de uma barata, por exemplo, t&ecirc;m espinhos sens&iacute;veis ao toque e fornecem uma superf&iacute;cie ideal para a coleta de pat&oacute;genos . Dessa maneira, se entrarmos em contato f&iacute;sico com uma barata, podemos receber os v&iacute;rus e bact&eacute;rias que v&ecirc;m com ela.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Doen&ccedil;as que as baratas transmitem &agrave;s pessoas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Existem v&aacute;rias doen&ccedil;as transmitidas por baratas, embora geralmente as mais comuns sejam as seguintes.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Salmonelose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas transmitem a bact&eacute;ria Salmonella causadora da salmonelose, doen&ccedil;a que nas pessoas apresenta sintomas muito semelhantes aos de uma intoxica&ccedil;&atilde;o alimentar (febre, diarreia e v&ocirc;mitos). Al&eacute;m diso, as baratas acumulam bact&eacute;rias rastejando na sujeira e se alimentando de comida estragada. A bact&eacute;ria Salmonella pode permanecer no sistema digestivo desses insetos por at&eacute; um m&ecirc;s e &eacute; depositada por meio de ovos de baratas ou de seus excrementos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Listeriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A listeriose &eacute; uma infec&ccedil;&atilde;o grave causada pela bact&eacute;ria Listeria monocytogenes. &Eacute; contra&iacute;da pelo consumo de alimentos e bebidas em m&aacute;s condi&ccedil;&otilde;es e afeta principalmente pessoas com sistema imunol&oacute;gico debilitado, mulheres gr&aacute;vidas, rec&eacute;m-nascidos e idosos. Os sintomas geralmente s&atilde;o febre, dores musculares e diarreia . Em casos mais graves, a listeriose pode causar aborto espont&acirc;neo ou parto prematuro em mulheres gr&aacute;vidas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose &eacute; uma infec&ccedil;&atilde;o causada pela bact&eacute;ria Campylobacter. Muito comum em humanos, &eacute; uma infec&ccedil;&atilde;o transmitida por alimentos e bebidas em mau estado que entraram em contato com baratas. Os sintomas s&atilde;o diarreia, c&oacute;licas, dor abdominal e febre. A doen&ccedil;a pode durar entre 2 e 10 dias.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Infec&ccedil;&atilde;o por E. col</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Escherichia coli (E. coli) &eacute; uma bact&eacute;ria geralmente encontrada no intestino das pessoas. Embora a maioria das cepas dessa bact&eacute;ria sejam inofensivas, algumas podem causar intoxica&ccedil;&otilde;es alimentares graves. Os sintomas mais comuns s&atilde;o diarreia e c&oacute;licas abdominais, que podem ser acompanhadas por febre, n&aacute;useas e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Febre tif&oacute;ide</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A febre tif&oacute;ide &eacute; uma infec&ccedil;&atilde;o bacteriana causada pela bact&eacute;ria Salmonella typhi. Acredita-se que as baratas carregam essa bact&eacute;ria ao consumir as fezes contaminadas nas quais viveram. No entanto, a febre tif&oacute;ide &eacute; uma doen&ccedil;a mais comum em pa&iacute;ses com saneamento prec&aacute;rio e acesso limitado a &aacute;gua pot&aacute;vel. Os sintomas desta doen&ccedil;a s&atilde;o febre, dor de cabe&ccedil;a, diarreia, cansa&ccedil;o geral e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">C&oacute;lera</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A c&oacute;lera &eacute; uma infec&ccedil;&atilde;o diarreica aguda causada pela bact&eacute;ria Vibrio cholerae. Contudo, &eacute; mais comum em pa&iacute;ses menos desenvolvidos e se espalha por meio de alimentos e bebidas estragados. Dessa forma, as fezes de baratas nesses alimentos podem fazer com que as bact&eacute;rias entrem no corpo das pessoas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\"><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; um tipo de gastroenterite que pode ocorrer de duas maneiras diferentes:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria bacilar : tamb&eacute;m conhecida como shigelose, &eacute; causada pela bact&eacute;ria Shigella.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria amebiana : ocorre em &aacute;reas tropicais e &eacute; causada por um parasita unicelular chamado Entamoeba.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; transmitida por meio da m&aacute; higiene das m&atilde;os e do consumo de alimentos e bebidas contaminados ou estragados . Os sintomas s&atilde;o diarreia, congest&atilde;o nasal, c&oacute;licas estomacais dolorosas, n&aacute;useas, v&ocirc;mitos e febre alta.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Em resumo, as baratas s&atilde;o insetos que podem espalhar doen&ccedil;as para as pessoas. &Eacute; por isso que voc&ecirc; deve prestar aten&ccedil;&atilde;o especial em casa se vir uma barata. Provavelmente haver&aacute; mais alguns, portanto, precisamos resolver o problema antes que se torne uma praga.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-size: 13px;\">Fonte: https://www.pragaseeventos.com.br/saude-ambiental/veja-como-as-baratas-transmitem-doencas-aos-humanos/</span></p>', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Esses insetos de corpo achatado s&atilde;o sin&ocirc;nimos de sujeira e falta de higiene. Al&eacute;m disso, seus h&aacute;bitos de alimenta&ccedil;&atilde;o e nidifica&ccedil;&atilde;o podem acumular uma variedade de organismos patog&ecirc;nicos que transmitem aos alimentos e &agrave;s superf&iacute;cies por onde passam. Dessa forma, n&atilde;o &eacute; de surpreender que eles transmitam muitas doen&ccedil;as, por isso &eacute; melhor tomar as medidas necess&aacute;rias para se livrar das baratas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Como as baratas transmitem doen&ccedil;as aos humanos?</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Geralmente, as baratas podem transmitir doen&ccedil;as de v&aacute;rias maneiras. No entanto, os mais comuns s&atilde;o tr&ecirc;s:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas ou seus excrementos</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Por contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Na maioria dos casos, a transmiss&atilde;o da doen&ccedil;a ocorre pelo contato com elementos contaminados pelas baratas. Dessa maneira, a transmiss&atilde;o geralmente ocorre ao comer ou beber algo que tenha estado recentemente em contato com baratas ou colocando utens&iacute;lios ou objetos que possam ter saliva ou fezes de barata em nossa boca.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Devido a seus h&aacute;bitos alimentares inadequados, as baratas podem transmitir pat&oacute;genos nocivos por meio de seus excrementos. Assim, quando uma barata come algo contaminado, ele entra em seu corpo e pode permanecer em seu sistema digestivo. O pat&oacute;geno fica l&aacute; e aparece nas fezes das baratas, passando para as superf&iacute;cies ou alimentos em que esses insetos excretam.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito &eacute; um dos meios pelos quais as baratas tamb&eacute;m podem espalhar doen&ccedil;as. Forma muito semelhante &agrave; das fezes das baratas, pois a saliva ou o v&ocirc;mito podem abrigar pat&oacute;genos acumulados ao comer alimentos em mau estado.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas vivem em esgotos, fossas, ralos e recipientes de lixo. L&aacute; eles costumam entrar em contato com uma grande variedade de organismos, especialmente bact&eacute;rias e v&iacute;rus, que aderem ao corpo desses insetos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As pernas de uma barata, por exemplo, t&ecirc;m espinhos sens&iacute;veis ao toque e fornecem uma superf&iacute;cie ideal para a coleta de pat&oacute;genos . Dessa maneira, se entrarmos em contato f&iacute;sico com uma barata, podemos receber os v&iacute;rus e bact&eacute;rias que v&ecirc;m com ela.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Doen&ccedil;as que as baratas transmitem &agrave;s pessoas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Existem v&aacute;rias doen&ccedil;as transmitidas por baratas, embora geralmente as mais comuns sejam as seguintes.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Salmonelose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas transmitem a bact&eacute;ria Salmonella causadora da salmonelose, doen&ccedil;a que nas pessoas apresenta sintomas muito semelhantes aos de uma intoxica&ccedil;&atilde;o alimentar (febre, diarreia e v&ocirc;mitos). Al&eacute;m diso, as baratas acumulam bact&eacute;rias rastejando na sujeira e se alimentando de comida estragada. A bact&eacute;ria Salmonella pode permanecer no sistema digestivo desses insetos por at&eacute; um m&ecirc;s e &eacute; depositada por meio de ovos de baratas ou de seus excrementos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Listeriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A listeriose &eacute; uma infec&ccedil;&atilde;o grave causada pela bact&eacute;ria Listeria monocytogenes. &Eacute; contra&iacute;da pelo consumo de alimentos e bebidas em m&aacute;s condi&ccedil;&otilde;es e afeta principalmente pessoas com sistema imunol&oacute;gico debilitado, mulheres gr&aacute;vidas, rec&eacute;m-nascidos e idosos. Os sintomas geralmente s&atilde;o febre, dores musculares e diarreia . Em casos mais graves, a listeriose pode causar aborto espont&acirc;neo ou parto prematuro em mulheres gr&aacute;vidas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose &eacute; uma infec&ccedil;&atilde;o causada pela bact&eacute;ria Campylobacter. Muito comum em humanos, &eacute; uma infec&ccedil;&atilde;o transmitida por alimentos e bebidas em mau estado que entraram em contato com baratas. Os sintomas s&atilde;o diarreia, c&oacute;licas, dor abdominal e febre. A doen&ccedil;a pode durar entre 2 e 10 dias.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Infec&ccedil;&atilde;o por E. col</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Escherichia coli (E. coli) &eacute; uma bact&eacute;ria geralmente encontrada no intestino das pessoas. Embora a maioria das cepas dessa bact&eacute;ria sejam inofensivas, algumas podem causar intoxica&ccedil;&otilde;es alimentares graves. Os sintomas mais comuns s&atilde;o diarreia e c&oacute;licas abdominais, que podem ser acompanhadas por febre, n&aacute;useas e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Febre tif&oacute;ide</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A febre tif&oacute;ide &eacute; uma infec&ccedil;&atilde;o bacteriana causada pela bact&eacute;ria Salmonella typhi. Acredita-se que as baratas carregam essa bact&eacute;ria ao consumir as fezes contaminadas nas quais viveram. No entanto, a febre tif&oacute;ide &eacute; uma doen&ccedil;a mais comum em pa&iacute;ses com saneamento prec&aacute;rio e acesso limitado a &aacute;gua pot&aacute;vel. Os sintomas desta doen&ccedil;a s&atilde;o febre, dor de cabe&ccedil;a, diarreia, cansa&ccedil;o geral e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">C&oacute;lera</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A c&oacute;lera &eacute; uma infec&ccedil;&atilde;o diarreica aguda causada pela bact&eacute;ria Vibrio cholerae. Contudo, &eacute; mais comum em pa&iacute;ses menos desenvolvidos e se espalha por meio de alimentos e bebidas estragados. Dessa forma, as fezes de baratas nesses alimentos podem fazer com que as bact&eacute;rias entrem no corpo das pessoas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\"><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; um tipo de gastroenterite que pode ocorrer de duas maneiras diferentes:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria bacilar : tamb&eacute;m conhecida como shigelose, &eacute; causada pela bact&eacute;ria Shigella.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria amebiana : ocorre em &aacute;reas tropicais e &eacute; causada por um parasita unicelular chamado Entamoeba.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; transmitida por meio da m&aacute; higiene das m&atilde;os e do consumo de alimentos e bebidas contaminados ou estragados . Os sintomas s&atilde;o diarreia, congest&atilde;o nasal, c&oacute;licas estomacais dolorosas, n&aacute;useas, v&ocirc;mitos e febre alta.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Em resumo, as baratas s&atilde;o insetos que podem espalhar doen&ccedil;as para as pessoas. &Eacute; por isso que voc&ecirc; deve prestar aten&ccedil;&atilde;o especial em casa se vir uma barata. Provavelmente haver&aacute; mais alguns, portanto, precisamos resolver o problema antes que se torne uma praga.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-size: 13px;\">Fonte: https://www.pragaseeventos.com.br/saude-ambiental/veja-como-as-baratas-transmitem-doencas-aos-humanos/</span></p>', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Esses insetos de corpo achatado s&atilde;o sin&ocirc;nimos de sujeira e falta de higiene. Al&eacute;m disso, seus h&aacute;bitos de alimenta&ccedil;&atilde;o e nidifica&ccedil;&atilde;o podem acumular uma variedade de organismos patog&ecirc;nicos que transmitem aos alimentos e &agrave;s superf&iacute;cies por onde passam. Dessa forma, n&atilde;o &eacute; de surpreender que eles transmitam muitas doen&ccedil;as, por isso &eacute; melhor tomar as medidas necess&aacute;rias para se livrar das baratas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Como as baratas transmitem doen&ccedil;as aos humanos?</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Geralmente, as baratas podem transmitir doen&ccedil;as de v&aacute;rias maneiras. No entanto, os mais comuns s&atilde;o tr&ecirc;s:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas ou seus excrementos</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Por contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Na maioria dos casos, a transmiss&atilde;o da doen&ccedil;a ocorre pelo contato com elementos contaminados pelas baratas. Dessa maneira, a transmiss&atilde;o geralmente ocorre ao comer ou beber algo que tenha estado recentemente em contato com baratas ou colocando utens&iacute;lios ou objetos que possam ter saliva ou fezes de barata em nossa boca.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Fezes de baratas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Devido a seus h&aacute;bitos alimentares inadequados, as baratas podem transmitir pat&oacute;genos nocivos por meio de seus excrementos. Assim, quando uma barata come algo contaminado, ele entra em seu corpo e pode permanecer em seu sistema digestivo. O pat&oacute;geno fica l&aacute; e aparece nas fezes das baratas, passando para as superf&iacute;cies ou alimentos em que esses insetos excretam.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Saliva ou v&ocirc;mito &eacute; um dos meios pelos quais as baratas tamb&eacute;m podem espalhar doen&ccedil;as. Forma muito semelhante &agrave; das fezes das baratas, pois a saliva ou o v&ocirc;mito podem abrigar pat&oacute;genos acumulados ao comer alimentos em mau estado.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Contato f&iacute;sico</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas vivem em esgotos, fossas, ralos e recipientes de lixo. L&aacute; eles costumam entrar em contato com uma grande variedade de organismos, especialmente bact&eacute;rias e v&iacute;rus, que aderem ao corpo desses insetos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As pernas de uma barata, por exemplo, t&ecirc;m espinhos sens&iacute;veis ao toque e fornecem uma superf&iacute;cie ideal para a coleta de pat&oacute;genos . Dessa maneira, se entrarmos em contato f&iacute;sico com uma barata, podemos receber os v&iacute;rus e bact&eacute;rias que v&ecirc;m com ela.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Doen&ccedil;as que as baratas transmitem &agrave;s pessoas</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Existem v&aacute;rias doen&ccedil;as transmitidas por baratas, embora geralmente as mais comuns sejam as seguintes.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Salmonelose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">As baratas transmitem a bact&eacute;ria Salmonella causadora da salmonelose, doen&ccedil;a que nas pessoas apresenta sintomas muito semelhantes aos de uma intoxica&ccedil;&atilde;o alimentar (febre, diarreia e v&ocirc;mitos). Al&eacute;m diso, as baratas acumulam bact&eacute;rias rastejando na sujeira e se alimentando de comida estragada. A bact&eacute;ria Salmonella pode permanecer no sistema digestivo desses insetos por at&eacute; um m&ecirc;s e &eacute; depositada por meio de ovos de baratas ou de seus excrementos.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Listeriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A listeriose &eacute; uma infec&ccedil;&atilde;o grave causada pela bact&eacute;ria Listeria monocytogenes. &Eacute; contra&iacute;da pelo consumo de alimentos e bebidas em m&aacute;s condi&ccedil;&otilde;es e afeta principalmente pessoas com sistema imunol&oacute;gico debilitado, mulheres gr&aacute;vidas, rec&eacute;m-nascidos e idosos. Os sintomas geralmente s&atilde;o febre, dores musculares e diarreia . Em casos mais graves, a listeriose pode causar aborto espont&acirc;neo ou parto prematuro em mulheres gr&aacute;vidas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Campilobacteriose &eacute; uma infec&ccedil;&atilde;o causada pela bact&eacute;ria Campylobacter. Muito comum em humanos, &eacute; uma infec&ccedil;&atilde;o transmitida por alimentos e bebidas em mau estado que entraram em contato com baratas. Os sintomas s&atilde;o diarreia, c&oacute;licas, dor abdominal e febre. A doen&ccedil;a pode durar entre 2 e 10 dias.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Infec&ccedil;&atilde;o por E. col</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Escherichia coli (E. coli) &eacute; uma bact&eacute;ria geralmente encontrada no intestino das pessoas. Embora a maioria das cepas dessa bact&eacute;ria sejam inofensivas, algumas podem causar intoxica&ccedil;&otilde;es alimentares graves. Os sintomas mais comuns s&atilde;o diarreia e c&oacute;licas abdominais, que podem ser acompanhadas por febre, n&aacute;useas e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Febre tif&oacute;ide</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A febre tif&oacute;ide &eacute; uma infec&ccedil;&atilde;o bacteriana causada pela bact&eacute;ria Salmonella typhi. Acredita-se que as baratas carregam essa bact&eacute;ria ao consumir as fezes contaminadas nas quais viveram. No entanto, a febre tif&oacute;ide &eacute; uma doen&ccedil;a mais comum em pa&iacute;ses com saneamento prec&aacute;rio e acesso limitado a &aacute;gua pot&aacute;vel. Os sintomas desta doen&ccedil;a s&atilde;o febre, dor de cabe&ccedil;a, diarreia, cansa&ccedil;o geral e dores musculares.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">C&oacute;lera</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A c&oacute;lera &eacute; uma infec&ccedil;&atilde;o diarreica aguda causada pela bact&eacute;ria Vibrio cholerae. Contudo, &eacute; mais comum em pa&iacute;ses menos desenvolvidos e se espalha por meio de alimentos e bebidas estragados. Dessa forma, as fezes de baratas nesses alimentos podem fazer com que as bact&eacute;rias entrem no corpo das pessoas.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\"><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; um tipo de gastroenterite que pode ocorrer de duas maneiras diferentes:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria bacilar : tamb&eacute;m conhecida como shigelose, &eacute; causada pela bact&eacute;ria Shigella.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Disenteria amebiana : ocorre em &aacute;reas tropicais e &eacute; causada por um parasita unicelular chamado Entamoeba.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">A disenteria &eacute; transmitida por meio da m&aacute; higiene das m&atilde;os e do consumo de alimentos e bebidas contaminados ou estragados . Os sintomas s&atilde;o diarreia, congest&atilde;o nasal, c&oacute;licas estomacais dolorosas, n&aacute;useas, v&ocirc;mitos e febre alta.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.25em; padding: 0px; border: 0px; outline: none; position: relative; line-height: inherit; color: #000000; font-family: Roboto, sans-serif; font-size: 15px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #333333;\">Em resumo, as baratas s&atilde;o insetos que podem espalhar doen&ccedil;as para as pessoas. &Eacute; por isso que voc&ecirc; deve prestar aten&ccedil;&atilde;o especial em casa se vir uma barata. Provavelmente haver&aacute; mais alguns, portanto, precisamos resolver o problema antes que se torne uma praga.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /></span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-size: 13px;\">Fonte: https://www.pragaseeventos.com.br/saude-ambiental/veja-como-as-baratas-transmitem-doencas-aos-humanos/</span></p>', '#barata #fastfood', '#barata #fastfood', '#barata #fastfood', 'blogs\\April2022\\PwFuq2Zyj72lvevBO9qL.png', '2022-04-25 11:11:01', '2022-04-25 11:11:01', NULL, 5, 1, 'veja-como-as-baratas-transmitem-doencas-aos-humanos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_pt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_es` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome_pt`, `nome_en`, `nome_es`, `site_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gel', 'Gel', 'Gel', 1, '2022-04-25 06:54:14', '2022-04-25 06:54:14', NULL),
(2, 'Pó seco molhável', 'Whashed Dry Dust', 'Pó seco molhável', 1, '2022-04-25 06:55:07', '2022-04-25 06:55:07', NULL),
(3, 'Gel Home', 'Gel Home', 'Gel Home', 5, '2022-04-25 12:59:05', '2022-04-25 12:59:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'titulo_pt', 'text', 'Título Português', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'titulo_en', 'text', 'Título Inglês', 0, 0, 1, 1, 1, 1, '{}', 4),
(25, 4, 'titulo_es', 'text', 'Título Espanhol', 0, 0, 1, 1, 1, 1, '{}', 5),
(26, 4, 'subtitulo_pt', 'text', 'Subtítulo Português', 0, 1, 1, 1, 1, 1, '{}', 6),
(27, 4, 'subtitulo_en', 'text', 'Subtítulo Inglês', 0, 0, 1, 1, 1, 1, '{}', 7),
(28, 4, 'subtitulo_es', 'text', 'Subtítulo Espanhol', 0, 0, 1, 1, 1, 1, '{}', 8),
(29, 4, 'conteudo_pt', 'rich_text_box', 'Conteúdo Português', 0, 1, 1, 1, 1, 1, '{}', 10),
(30, 4, 'conteudo_en', 'rich_text_box', 'Conteúdo Inglês', 0, 0, 1, 1, 1, 1, '{}', 11),
(31, 4, 'conteudo_es', 'rich_text_box', 'Conteúdo Espanhol', 0, 0, 1, 1, 1, 1, '{}', 12),
(32, 4, 'tags_pt', 'text', 'Tags Português', 0, 1, 1, 1, 1, 1, '{}', 13),
(33, 4, 'tags_en', 'text', 'Tags Inglês', 0, 0, 1, 1, 1, 1, '{}', 14),
(34, 4, 'tags_es', 'text', 'Tags Espanhol', 0, 0, 1, 1, 1, 1, '{}', 15),
(35, 4, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 9),
(36, 4, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 17),
(37, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(38, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 19),
(39, 4, 'tempo_leitura', 'number', 'Tempo Leitura (em minutos)', 0, 1, 1, 1, 1, 1, '{}', 16),
(40, 4, 'site_id', 'text', 'Site Id', 1, 1, 1, 1, 1, 1, '{}', 20),
(41, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(42, 5, 'nome_pt', 'text', 'Nome Português', 0, 1, 1, 1, 1, 1, '{}', 2),
(43, 5, 'nome_en', 'text', 'Nome Ingles', 0, 0, 1, 1, 1, 1, '{}', 3),
(44, 5, 'nome_es', 'text', 'Nome Espanhol', 0, 0, 1, 1, 1, 1, '{}', 4),
(45, 5, 'site_id', 'text', 'Site Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(46, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(47, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(48, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 8),
(49, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(50, 6, 'nome_pt', 'text', 'Nome Português', 0, 1, 1, 1, 1, 1, '{}', 7),
(51, 6, 'nome_en', 'text', 'Nome Ingles', 0, 0, 1, 1, 1, 1, '{}', 9),
(52, 6, 'nome_es', 'text', 'Nome Espanhol', 0, 0, 1, 1, 1, 1, '{}', 10),
(53, 6, 'descricao_pt', 'rich_text_box', 'Descrição Português', 0, 0, 1, 1, 1, 1, '{}', 11),
(54, 6, 'descricao_en', 'rich_text_box', 'Descrição Inglês', 0, 0, 1, 1, 1, 1, '{}', 12),
(55, 6, 'descricao_es', 'rich_text_box', 'Descrição Espanhol', 0, 0, 1, 1, 1, 1, '{}', 13),
(56, 6, 'site_id', 'text', 'Site Id', 1, 1, 1, 1, 1, 1, '{}', 16),
(57, 6, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 17),
(58, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(59, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 19),
(60, 6, 'lancamento', 'checkbox', 'Lancamento', 0, 1, 1, 1, 1, 1, '{\"on\":\"Sim\",\"off\":\"N\\u00e3o\",\"checked\":false}', 14),
(61, 6, 'procurado', 'checkbox', 'Procurado', 0, 1, 1, 1, 1, 1, '{\"on\":\"Sim\",\"off\":\"N\\u00e3o\",\"checked\":false}', 15),
(62, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 7, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 7, 'logradouro', 'text', 'Logradouro', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 7, 'bairro', 'text', 'Bairro', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 7, 'cidade', 'text', 'Cidade', 0, 1, 1, 1, 1, 1, '{}', 5),
(67, 7, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 6),
(68, 7, 'pais', 'text', 'Pais', 0, 1, 1, 1, 1, 1, '{}', 7),
(69, 7, 'latitude', 'text', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 8),
(70, 7, 'longitude', 'text', 'Longitude', 0, 1, 1, 1, 1, 1, '{}', 9),
(71, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 10),
(72, 7, 'telefone', 'text', 'Telefone', 0, 1, 1, 1, 1, 1, '{}', 11),
(73, 7, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 13),
(74, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(75, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 15),
(76, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 8, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 8, 'created_at', 'timestamp', 'Criado em', 0, 0, 0, 0, 0, 0, '{}', 7),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(80, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 9),
(81, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 3),
(82, 8, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 4),
(83, 8, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 5),
(84, 8, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 6),
(85, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 9, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(87, 9, 'sobrenome', 'text', 'Sobrenome', 0, 1, 1, 1, 1, 1, '{}', 3),
(88, 9, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(89, 9, 'curriculo', 'text', 'Curriculo', 0, 0, 1, 1, 1, 1, '{}', 5),
(90, 9, 'departamento', 'text', 'Departamento', 0, 0, 1, 1, 1, 1, '{}', 6),
(91, 9, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 7),
(92, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(93, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 9),
(94, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 10, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 10, 'logradouro', 'text', 'Logradouro', 0, 0, 1, 1, 1, 1, '{}', 3),
(97, 10, 'bairro', 'text', 'Bairro', 0, 0, 1, 1, 1, 1, '{}', 4),
(98, 10, 'cidade', 'text', 'Cidade', 0, 1, 1, 1, 1, 1, '{}', 5),
(99, 10, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 6),
(100, 10, 'pais', 'text', 'Pais', 0, 0, 1, 1, 1, 1, '{}', 7),
(101, 10, 'cep', 'text', 'Cep', 0, 1, 1, 1, 1, 1, '{}', 8),
(102, 10, 'telefone', 'text', 'Telefone', 0, 1, 1, 1, 1, 1, '{}', 9),
(103, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 10),
(104, 10, 'latitude', 'text', 'Latitude', 0, 0, 1, 1, 1, 1, '{}', 11),
(105, 10, 'longitude', 'text', 'Longitude', 0, 0, 1, 1, 1, 1, '{}', 12),
(106, 10, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 13),
(107, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(108, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 15),
(109, 4, 'blog_belongsto_site_relationship', 'relationship', 'Site', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Site\",\"table\":\"sites\",\"type\":\"belongsTo\",\"column\":\"site_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(110, 5, 'categoria_belongsto_site_relationship', 'relationship', 'Site', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Site\",\"table\":\"sites\",\"type\":\"belongsTo\",\"column\":\"site_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(111, 6, 'produto_belongsto_site_relationship', 'relationship', 'Site', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Site\",\"table\":\"sites\",\"type\":\"belongsTo\",\"column\":\"site_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(112, 6, 'produto_belongsto_categoria_relationship', 'relationship', 'Categoria', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"categoria_id\",\"key\":\"id\",\"label\":\"nome_pt\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(113, 6, 'categoria_id', 'text', 'Categoria Id', 1, 1, 1, 1, 1, 1, '{}', 21),
(114, 6, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 2),
(115, 4, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"titulo_pt\",\"forceUpdate\":true}}', 3),
(116, 6, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nome_pt\",\"forceUpdate\":true}}', 8),
(117, 7, 'cep', 'number', 'Cep (somente números)', 0, 1, 1, 1, 1, 1, '{}', 12),
(118, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nome\",\"forceUpdate\":true}}', 10),
(119, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 11, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 11, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 11, 'site_id', 'text', 'Site Id', 1, 0, 1, 1, 1, 0, '{}', 5),
(123, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(124, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(125, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(127, 11, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(128, 11, 'banner_belongsto_site_relationship', 'relationship', 'Site', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Site\",\"table\":\"sites\",\"type\":\"belongsTo\",\"column\":\"site_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(129, 6, 'resumo_pt', 'text', 'Resumo Português', 0, 1, 1, 1, 1, 1, '{}', 3),
(130, 6, 'resumo_en', 'text', 'Resumo Inglês', 0, 1, 1, 1, 1, 1, '{}', 4),
(131, 6, 'resumo_es', 'text', 'Resumo Espanhol', 0, 1, 1, 1, 1, 1, '{}', 5),
(132, 6, 'cor', 'color', 'Cor', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(4, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-file-text', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:33:49', '2022-04-25 08:07:10'),
(5, 'categorias', 'categorias', 'Categoria de Produto', 'Categorias de Produtos', 'voyager-book', 'App\\Models\\Categoria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:35:36', '2022-04-25 06:54:02'),
(6, 'produtos', 'produtos', 'Produto', 'Produtos', 'voyager-backpack', 'App\\Models\\Produto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:39:00', '2022-04-25 13:04:13'),
(7, 'representantes', 'representantes', 'Representante', 'Representantes', 'voyager-people', 'App\\Models\\Representante', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:40:04', '2022-04-25 08:32:36'),
(8, 'sites', 'sites', 'Site', 'Sites', 'voyager-compass', 'App\\Models\\Site', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:41:15', '2022-04-25 08:50:42'),
(9, 'trabalheconoscos', 'trabalheconoscos', 'Trabalheconosco', 'Trabalheconoscos', 'voyager-receipt', 'App\\Models\\Trabalheconosco', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:42:04', '2022-04-25 07:13:26'),
(10, 'unidades', 'unidades', 'Unidade', 'Unidades', 'voyager-company', 'App\\Models\\Unidade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-24 01:43:29', '2022-04-25 07:11:49'),
(11, 'banners', 'banners', 'Banner', 'Banners', 'voyager-images', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-25 11:50:08', '2022-04-25 12:56:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-04-22 22:53:18', '2022-04-22 22:53:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-04-22 22:53:18', '2022-04-22 22:53:18', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-04-22 22:53:18', '2022-04-22 22:53:18', 'voyager.settings.index', NULL),
(11, 1, 'Blogs', '', '_self', 'voyager-file-text', NULL, NULL, 15, '2022-04-24 01:33:49', '2022-04-24 01:33:49', 'voyager.blogs.index', NULL),
(12, 1, 'Categorias de Produtos', '', '_self', 'voyager-book', NULL, NULL, 16, '2022-04-24 01:35:37', '2022-04-24 01:35:37', 'voyager.categorias.index', NULL),
(13, 1, 'Produtos', '', '_self', 'voyager-backpack', NULL, NULL, 17, '2022-04-24 01:39:00', '2022-04-24 01:39:00', 'voyager.produtos.index', NULL),
(14, 1, 'Representantes', '', '_self', 'voyager-people', NULL, NULL, 18, '2022-04-24 01:40:04', '2022-04-24 01:40:04', 'voyager.representantes.index', NULL),
(15, 1, 'Sites', '', '_self', 'voyager-compass', NULL, NULL, 19, '2022-04-24 01:41:15', '2022-04-24 01:41:15', 'voyager.sites.index', NULL),
(16, 1, 'Trabalheconoscos', '', '_self', 'voyager-receipt', NULL, NULL, 20, '2022-04-24 01:42:04', '2022-04-24 01:42:04', 'voyager.trabalheconoscos.index', NULL),
(17, 1, 'Unidades', '', '_self', 'voyager-company', NULL, NULL, 21, '2022-04-24 01:43:29', '2022-04-24 01:43:29', 'voyager.unidades.index', NULL),
(18, 1, 'Banners', '', '_self', 'voyager-images', NULL, NULL, 22, '2022-04-25 11:50:09', '2022-04-25 11:50:09', 'voyager.banners.index', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(2, 'browse_bread', NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(3, 'browse_database', NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(4, 'browse_media', NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(5, 'browse_compass', NULL, '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(6, 'browse_menus', 'menus', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(7, 'read_menus', 'menus', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(8, 'edit_menus', 'menus', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(9, 'add_menus', 'menus', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(10, 'delete_menus', 'menus', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(11, 'browse_roles', 'roles', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(12, 'read_roles', 'roles', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(13, 'edit_roles', 'roles', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(14, 'add_roles', 'roles', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(15, 'delete_roles', 'roles', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(16, 'browse_users', 'users', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(17, 'read_users', 'users', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(18, 'edit_users', 'users', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(19, 'add_users', 'users', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(20, 'delete_users', 'users', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(21, 'browse_settings', 'settings', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(22, 'read_settings', 'settings', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(23, 'edit_settings', 'settings', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(24, 'add_settings', 'settings', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(25, 'delete_settings', 'settings', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(26, 'browse_blogs', 'blogs', '2022-04-24 01:33:49', '2022-04-24 01:33:49'),
(27, 'read_blogs', 'blogs', '2022-04-24 01:33:49', '2022-04-24 01:33:49'),
(28, 'edit_blogs', 'blogs', '2022-04-24 01:33:49', '2022-04-24 01:33:49'),
(29, 'add_blogs', 'blogs', '2022-04-24 01:33:49', '2022-04-24 01:33:49'),
(30, 'delete_blogs', 'blogs', '2022-04-24 01:33:49', '2022-04-24 01:33:49'),
(31, 'browse_categorias', 'categorias', '2022-04-24 01:35:37', '2022-04-24 01:35:37'),
(32, 'read_categorias', 'categorias', '2022-04-24 01:35:37', '2022-04-24 01:35:37'),
(33, 'edit_categorias', 'categorias', '2022-04-24 01:35:37', '2022-04-24 01:35:37'),
(34, 'add_categorias', 'categorias', '2022-04-24 01:35:37', '2022-04-24 01:35:37'),
(35, 'delete_categorias', 'categorias', '2022-04-24 01:35:37', '2022-04-24 01:35:37'),
(36, 'browse_produtos', 'produtos', '2022-04-24 01:39:00', '2022-04-24 01:39:00'),
(37, 'read_produtos', 'produtos', '2022-04-24 01:39:00', '2022-04-24 01:39:00'),
(38, 'edit_produtos', 'produtos', '2022-04-24 01:39:00', '2022-04-24 01:39:00'),
(39, 'add_produtos', 'produtos', '2022-04-24 01:39:00', '2022-04-24 01:39:00'),
(40, 'delete_produtos', 'produtos', '2022-04-24 01:39:00', '2022-04-24 01:39:00'),
(41, 'browse_representantes', 'representantes', '2022-04-24 01:40:04', '2022-04-24 01:40:04'),
(42, 'read_representantes', 'representantes', '2022-04-24 01:40:04', '2022-04-24 01:40:04'),
(43, 'edit_representantes', 'representantes', '2022-04-24 01:40:04', '2022-04-24 01:40:04'),
(44, 'add_representantes', 'representantes', '2022-04-24 01:40:04', '2022-04-24 01:40:04'),
(45, 'delete_representantes', 'representantes', '2022-04-24 01:40:04', '2022-04-24 01:40:04'),
(46, 'browse_sites', 'sites', '2022-04-24 01:41:15', '2022-04-24 01:41:15'),
(47, 'read_sites', 'sites', '2022-04-24 01:41:15', '2022-04-24 01:41:15'),
(48, 'edit_sites', 'sites', '2022-04-24 01:41:15', '2022-04-24 01:41:15'),
(49, 'add_sites', 'sites', '2022-04-24 01:41:15', '2022-04-24 01:41:15'),
(50, 'delete_sites', 'sites', '2022-04-24 01:41:15', '2022-04-24 01:41:15'),
(51, 'browse_trabalheconoscos', 'trabalheconoscos', '2022-04-24 01:42:04', '2022-04-24 01:42:04'),
(52, 'read_trabalheconoscos', 'trabalheconoscos', '2022-04-24 01:42:04', '2022-04-24 01:42:04'),
(53, 'edit_trabalheconoscos', 'trabalheconoscos', '2022-04-24 01:42:04', '2022-04-24 01:42:04'),
(54, 'add_trabalheconoscos', 'trabalheconoscos', '2022-04-24 01:42:04', '2022-04-24 01:42:04'),
(55, 'delete_trabalheconoscos', 'trabalheconoscos', '2022-04-24 01:42:04', '2022-04-24 01:42:04'),
(56, 'browse_unidades', 'unidades', '2022-04-24 01:43:29', '2022-04-24 01:43:29'),
(57, 'read_unidades', 'unidades', '2022-04-24 01:43:29', '2022-04-24 01:43:29'),
(58, 'edit_unidades', 'unidades', '2022-04-24 01:43:29', '2022-04-24 01:43:29'),
(59, 'add_unidades', 'unidades', '2022-04-24 01:43:29', '2022-04-24 01:43:29'),
(60, 'delete_unidades', 'unidades', '2022-04-24 01:43:29', '2022-04-24 01:43:29'),
(61, 'browse_banners', 'banners', '2022-04-25 11:50:09', '2022-04-25 11:50:09'),
(62, 'read_banners', 'banners', '2022-04-25 11:50:09', '2022-04-25 11:50:09'),
(63, 'edit_banners', 'banners', '2022-04-25 11:50:09', '2022-04-25 11:50:09'),
(64, 'add_banners', 'banners', '2022-04-25 11:50:09', '2022-04-25 11:50:09'),
(65, 'delete_banners', 'banners', '2022-04-25 11:50:09', '2022-04-25 11:50:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_pt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_es` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao_pt` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao_en` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao_es` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `procurado` int(11) DEFAULT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resumo_pt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resumo_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resumo_es` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produtos_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome_pt`, `nome_en`, `nome_es`, `descricao_pt`, `descricao_en`, `descricao_es`, `site_id`, `created_at`, `updated_at`, `deleted_at`, `lancamento`, `procurado`, `categoria_id`, `imagem`, `slug`, `resumo_pt`, `resumo_en`, `resumo_es`, `cor`) VALUES
(1, 'Moskron', 'Moskron', 'Moskron', '<p><iframe style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/6KoPnBZ4TnY\" width=\"570\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">SPURION WP &eacute; um inseticida em p&oacute;, elaborado com Acetamiprido e Bifentrina, indicado para combater Cascudinhos (Alphitobius diaperinus), Baratas (Periplaneta americana), Moscas (Musca domestica) e Mosquitos (Aedes Aegypti) sendo indicado para aplica&ccedil;&atilde;o em locais onde h&aacute; a infesta&ccedil;&otilde;es.</div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\"><strong style=\"box-sizing: border-box;\">INSTRU&Ccedil;&Otilde;ES DE USO:</strong></div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">Moscas e mosquitos: Diluir 25g em 10L de &aacute;gua, pulverizar uniformemente a calda preparada no teto, paredes, janelas, portas, cantos e superf&iacute;cie onde as pragas pousam.</div>', '<p><iframe style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/6KoPnBZ4TnY\" width=\"570\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">SPURION WP &eacute; um inseticida em p&oacute;, elaborado com Acetamiprido e Bifentrina, indicado para combater Cascudinhos (Alphitobius diaperinus), Baratas (Periplaneta americana), Moscas (Musca domestica) e Mosquitos (Aedes Aegypti) sendo indicado para aplica&ccedil;&atilde;o em locais onde h&aacute; a infesta&ccedil;&otilde;es.</div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\"><strong style=\"box-sizing: border-box;\">INSTRU&Ccedil;&Otilde;ES DE USO:</strong></div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">Moscas e mosquitos: Diluir 25g em 10L de &aacute;gua, pulverizar uniformemente a calda preparada no teto, paredes, janelas, portas, cantos e superf&iacute;cie onde as pragas pousam.</div>', '<p><iframe style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\" title=\"YouTube video player\" src=\"https://www.youtube.com/embed/6KoPnBZ4TnY\" width=\"570\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">SPURION WP &eacute; um inseticida em p&oacute;, elaborado com Acetamiprido e Bifentrina, indicado para combater Cascudinhos (Alphitobius diaperinus), Baratas (Periplaneta americana), Moscas (Musca domestica) e Mosquitos (Aedes Aegypti) sendo indicado para aplica&ccedil;&atilde;o em locais onde h&aacute; a infesta&ccedil;&otilde;es.</div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\"><strong style=\"box-sizing: border-box;\">INSTRU&Ccedil;&Otilde;ES DE USO:</strong></div>\r\n<div style=\"box-sizing: border-box; color: #04428d; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: medium; background-color: #f5f5f5;\">Moscas e mosquitos: Diluir 25g em 10L de &aacute;gua, pulverizar uniformemente a calda preparada no teto, paredes, janelas, portas, cantos e superf&iacute;cie onde as pragas pousam.</div>', 3, '2022-04-25 07:04:00', '2022-04-25 14:07:33', NULL, 1, 1, 2, 'produtos\\April2022\\vrrwAfUUknoXFgZZSyDB.png', 'moskron', 'Produtos inovadores para o controle de pragas na sua casa.', 'Produtos inovadores para o controle de pragas na sua casa.', 'Produtos inovadores para o controle de pragas na sua casa.', '#e9cb35'),
(2, 'Asseptvir', 'Asseptvir Ingles', 'Asseptvir Espanhol', '<p>teste em <strong>portugues</strong></p>', '<p>teste <strong>Ingles</strong></p>', '<p>teste <strong>espanhol</strong></p>', 3, '2022-04-25 07:36:00', '2022-04-25 14:07:19', NULL, 1, 1, 1, 'produtos\\April2022\\k9MkDbTbl9lLv1ixZWWV.png', 'asseptvir', 'Produtos inovadores para o controle de pragas na sua casa.', 'Produtos inovadores para o controle de pragas na sua casa.', 'Produtos inovadores para o controle de pragas na sua casa.', '#c01616'),
(3, 'Roto Kill', 'Roto Kill', 'Roto Kill', '<p>&nbsp;</p>\r\n<div class=\"image-box\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><iframe style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-width: initial; border-style: none; outline: none;\" src=\"https://www.youtube.com/embed/hV0BtrEy9ao?rel=0\" width=\"100%\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Ingrediente Ativo:</span>&nbsp;Brodifacoum 0,005%</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Grupo Qu&iacute;mico:</span>&nbsp;Cumar&iacute;nico</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Formula&ccedil;&atilde;o:</span>&nbsp;Gr&atilde;os especiais</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">O poder do girassol no combate aos ratos, ratazanas e camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Indica&ccedil;&atilde;o:</span>&nbsp;RATICIDA RATOKILL GS, pronto para uso, &eacute; indicado para o controle de Ratos,</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Ratazanas e Camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Modo de Usar:</span>&nbsp;Colocar os gr&atilde;os dentro de caixas porta-iscas pr&oacute;ximo &agrave;s tocas e em outros locais onde os roedores vivem e transitam. Ap&oacute;s a ingest&atilde;o os roedores morrem no per&iacute;odo m&eacute;dio de 3 a 5 dias. Verificar ap&oacute;s uma semana e reaplicar RATICIDA RATOKILL GS nos locais onde as iscas foram consumidas.</div>\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n<div class=\"image-box\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><iframe style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-width: initial; border-style: none; outline: none;\" src=\"https://www.youtube.com/embed/hV0BtrEy9ao?rel=0\" width=\"100%\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Ingrediente Ativo:</span>&nbsp;Brodifacoum 0,005%</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Grupo Qu&iacute;mico:</span>&nbsp;Cumar&iacute;nico</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Formula&ccedil;&atilde;o:</span>&nbsp;Gr&atilde;os especiais</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">O poder do girassol no combate aos ratos, ratazanas e camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Indica&ccedil;&atilde;o:</span>&nbsp;RATICIDA RATOKILL GS, pronto para uso, &eacute; indicado para o controle de Ratos,</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Ratazanas e Camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Modo de Usar:</span>&nbsp;Colocar os gr&atilde;os dentro de caixas porta-iscas pr&oacute;ximo &agrave;s tocas e em outros locais onde os roedores vivem e transitam. Ap&oacute;s a ingest&atilde;o os roedores morrem no per&iacute;odo m&eacute;dio de 3 a 5 dias. Verificar ap&oacute;s uma semana e reaplicar RATICIDA RATOKILL GS nos locais onde as iscas foram consumidas.</div>\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n<div class=\"image-box\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><iframe style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-width: initial; border-style: none; outline: none;\" src=\"https://www.youtube.com/embed/hV0BtrEy9ao?rel=0\" width=\"100%\" height=\"343\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Ingrediente Ativo:</span>&nbsp;Brodifacoum 0,005%</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Grupo Qu&iacute;mico:</span>&nbsp;Cumar&iacute;nico</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Formula&ccedil;&atilde;o:</span>&nbsp;Gr&atilde;os especiais</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">O poder do girassol no combate aos ratos, ratazanas e camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Indica&ccedil;&atilde;o:</span>&nbsp;RATICIDA RATOKILL GS, pronto para uso, &eacute; indicado para o controle de Ratos,</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">Ratazanas e Camundongos.</div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n<div id=\"cke_pastebin\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #000000; font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; font-weight: bold;\">Modo de Usar:</span>&nbsp;Colocar os gr&atilde;os dentro de caixas porta-iscas pr&oacute;ximo &agrave;s tocas e em outros locais onde os roedores vivem e transitam. Ap&oacute;s a ingest&atilde;o os roedores morrem no per&iacute;odo m&eacute;dio de 3 a 5 dias. Verificar ap&oacute;s uma semana e reaplicar RATICIDA RATOKILL GS nos locais onde as iscas foram consumidas.</div>\r\n<p>&nbsp;</p>', 3, '2022-04-25 12:59:00', '2022-04-25 14:07:02', NULL, 1, 1, 3, 'produtos\\April2022\\zG00uU5FCd1Wtc7s9fGs.png', 'roto-kill', 'Produtos inovadores para o controle de pragas na sua casa.', 'Produtos inovadores para o controle de pragas na sua casa', 'Produtos inovadores para o controle de pragas na sua casa', '#08a118');

-- --------------------------------------------------------

--
-- Estrutura da tabela `representantes`
--

DROP TABLE IF EXISTS `representantes`;
CREATE TABLE IF NOT EXISTS `representantes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `representantes`
--

INSERT INTO `representantes` (`id`, `nome`, `logradouro`, `bairro`, `cidade`, `estado`, `pais`, `latitude`, `longitude`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`, `cep`) VALUES
(1, 'Evair - ECR Representações Eireli', 'Rua das Laranjeiras', 'Limoeiro', 'São Paulo', 'SP', 'Brasil', NULL, NULL, 'ecvr.rodrigues@gmail.com', '(11) 97337 - 1905', '2022-04-25 07:08:00', '2022-04-25 08:32:51', NULL, '14140000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-04-22 22:53:18', '2022-04-22 22:53:18'),
(2, 'user', 'Normal User', '2022-04-22 22:53:18', '2022-04-22 22:53:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Insetimax', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Insetimax Portal', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\1WVpd0InU7AiOXrwPFrp.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Insetimax', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Painel administrativo Insetimax', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2022\\fkcXoTia9Ufy4rvD6YCo.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2022\\q9VujwBJPe5lgQc4O4vt.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sites`
--

INSERT INTO `sites` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `url`, `facebook`, `instagram`, `youtube`, `slug`) VALUES
(1, 'Portal', '2022-04-25 06:40:11', '2022-04-25 08:50:55', NULL, 'http://dev.insetimaxportal', 'https://pt-br.facebook.com/Insetimax/', 'https://www.instagram.com/insetimax/', 'https://www.youtube.com/channel/UCvU1lfp2qzSMKR6atwA7YOA', 'portal'),
(2, 'Ouro Garden', '2022-04-25 12:29:18', '2022-04-25 12:29:45', NULL, NULL, 'facebook.com', 'instagram.com', 'youtube.com', 'ouro-garden'),
(3, 'Ouro Pet', '2022-04-25 12:30:20', '2022-04-25 12:30:20', NULL, NULL, 'https://pt-br.facebook.com/Insetimax/', 'https://www.instagram.com/insetimax/', 'https://www.youtube.com/channel/UCvU1lfp2qzSMKR6atwA7YOA', 'ouro-pet'),
(4, 'Insetimax Pro', '2022-04-25 12:30:44', '2022-04-25 12:30:44', NULL, NULL, 'https://pt-br.facebook.com/Insetimax/', 'https://www.instagram.com/insetimax/', 'https://www.youtube.com/channel/UCvU1lfp2qzSMKR6atwA7YOA', 'insetimax-pro'),
(5, 'Home Garden', '2022-04-25 12:31:00', '2022-04-25 12:31:00', NULL, NULL, 'https://pt-br.facebook.com/Insetimax/', 'https://www.instagram.com/insetimax/', 'https://www.youtube.com/channel/UCvU1lfp2qzSMKR6atwA7YOA', 'home-garden');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalheconoscos`
--

DROP TABLE IF EXISTS `trabalheconoscos`;
CREATE TABLE IF NOT EXISTS `trabalheconoscos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sobrenome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curriculo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

DROP TABLE IF EXISTS `unidades`;
CREATE TABLE IF NOT EXISTS `unidades` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `logradouro`, `bairro`, `cidade`, `estado`, `pais`, `cep`, `telefone`, `email`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cobasi', 'Av. Maurilio Biagi, 476', 'Ribeirânia', 'Ribeirão Preto', 'São Paulo', 'Brasil', NULL, '(16) 33256020', 'email@email.com', NULL, NULL, '2022-04-25 07:11:29', '2022-04-25 07:11:29', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Josaphat Campos Pereira', 'josaphat.campos@yahoo.com.br', 'users/default.png', NULL, '$2y$10$pP3GomkxnUk0Cw7zUCmSC.r7knEmyfQE40hqodU7bStFnnyXtuETu', NULL, NULL, '2022-04-22 23:01:25', '2022-04-22 23:01:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

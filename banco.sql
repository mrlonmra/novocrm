-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.4.28-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para studiokm
CREATE DATABASE IF NOT EXISTS `studiokm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `studiokm`;

-- Copiando estrutura para tabela studiokm.agendas
CREATE TABLE IF NOT EXISTS `agendas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(191) NOT NULL,
  `cliente_id` varchar(255) NOT NULL,
  `procedimento` varchar(191) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `hours` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.agendas: ~40 rows (aproximadamente)
INSERT INTO `agendas` (`id`, `nomeCliente`, `cliente_id`, `procedimento`, `valor`, `description`, `hours`, `start`, `end`, `status`, `created_at`, `updated_at`) VALUES
	(29, 'Pamela Bozza', '10', 'Cilios Volume Egípcio', 120.00, 'Primeiro agendamento!', 120, '2023-09-04 08:00:00', '2023-09-04 10:00:00', 'Concluido', '2023-09-04 18:56:51', '2023-09-04 18:56:51'),
	(30, 'Laís Cardoso', '12', 'Design de Sobrancelhas Tradicional', 30.00, 'Design simples.', 30, '2023-09-01 17:30:00', '2023-09-01 18:00:00', 'Concluido', '2023-09-04 19:00:31', '2023-09-04 19:00:31'),
	(31, 'Dayane Andrade', '13', 'Cilios Volume Brasileiro', 140.00, 'Volume Brasileiro', 120, '2023-09-01 18:00:00', '2023-09-01 20:00:00', 'Concluido', '2023-09-04 19:00:52', '2023-09-04 19:00:52'),
	(32, 'Vania Regina', '14', 'Cilios Volume Brasileiro', 140.00, 'Volume Brasileiro', 120, '2023-09-02 07:30:00', '2023-09-02 09:30:00', 'Concluido', '2023-09-04 19:08:02', '2023-09-04 19:08:02'),
	(33, 'Raquel Elisama', '15', 'Cilios Mega Brasileiro', 160.00, 'Mega Brasileiro', 138, '2023-09-02 10:00:00', '2023-09-02 12:18:00', 'Concluido', '2023-09-04 19:08:33', '2023-09-04 19:08:33'),
	(34, 'Carol Tininha', '16', 'Retoque Shadow', 150.00, 'Retoque Shadow', 78, '2023-09-02 16:00:00', '2023-09-02 17:18:00', 'Concluido', '2023-09-04 19:08:59', '2023-09-04 19:08:59'),
	(35, 'Priscilla Goncalves Regis', '17', 'Manutenção Mega Brasileiro', 100.00, 'Cilios, sobrancelhas e buço.', 120, '2023-09-12 08:00:00', '2023-09-12 10:00:00', 'Concluido', '2023-09-05 00:55:35', '2023-09-11 19:55:54'),
	(36, 'Hadassa Raquel', '18', 'Cilios Volume Brasileiro', 140.00, 'Valor no pix R$120,00\r\nTAM 10-11', 120, '2023-09-06 08:00:00', '2023-09-06 10:00:00', 'Concluido', '2023-09-05 01:07:46', '2023-09-05 01:07:46'),
	(39, 'Kallyne Moreira', '22', 'Design com Henna', 50.00, 'Design com henna', 40, '2023-09-05 19:00:00', '2023-09-05 19:40:00', 'Concluido', '2023-09-06 00:15:50', '2023-09-06 00:15:50'),
	(40, 'Gislane', '24', 'Design de Sobrancelhas Tradicional', 30.00, 'Somente design', 30, '2023-09-06 13:30:00', '2023-09-06 14:00:00', 'Concluido', '2023-09-06 00:19:12', '2023-09-08 18:59:11'),
	(44, 'Rosilda Camargo', '26', 'Manutenção Brasileiro', 90.00, 'Manutenção cílios', 78, '2023-09-09 07:30:00', '2023-09-09 08:48:00', 'Concluido', '2023-09-09 23:30:30', '2023-09-09 23:30:30'),
	(47, 'Priscilla Goncalves Regis', '17', 'Manutenção Mega Brasileiro', 100.00, 'manutenção', 120, '2023-10-12 08:00:00', '2023-10-12 10:00:00', 'Agendado', '2023-09-12 20:25:25', '2023-10-11 20:10:12'),
	(49, 'Thays Bueno', '31', 'Cilios Volume Brasileiro', 140.00, 'Atendimento a domicilio', 120, '2023-09-15 14:00:00', '2023-09-15 16:00:00', 'Concluido', '2023-09-12 23:41:06', '2023-09-12 23:41:06'),
	(52, 'Vania Regina', '14', 'Manutenção Mega Brasileiro', 100.00, 'Manutenção', 120, '2023-09-30 08:00:00', '2023-09-30 10:00:00', 'Concluido', '2023-09-15 05:21:39', '2023-09-15 05:21:39'),
	(57, 'Vitória Amorim', '34', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-09-15 10:30:00', '2023-09-15 11:00:00', 'Concluido', '2023-09-16 06:11:34', '2023-09-16 06:11:34'),
	(58, 'Nayara Cristina', '30', 'Design com Henna', 50.00, NULL, 40, '2023-09-15 13:00:00', '2023-09-15 13:40:00', 'Concluido', '2023-09-16 06:13:03', '2023-09-16 06:13:03'),
	(59, 'Vanessa', '35', 'Design com Henna', 50.00, NULL, 40, '2023-09-15 17:30:00', '2023-09-15 18:10:00', 'Concluido', '2023-09-16 06:16:40', '2023-09-16 06:16:40'),
	(60, 'Clécia', '36', 'Buço', 10.00, NULL, 10, '2023-09-16 08:00:00', '2023-09-16 08:10:00', 'Concluido', '2023-09-16 06:19:49', '2023-09-19 02:36:46'),
	(81, 'Adneusa Candido', '55', 'Cilios Volume Brasileiro', 140.00, NULL, 120, '2023-09-20 18:00:00', '2023-09-20 20:00:00', 'Concluido', '2023-09-22 21:09:29', '2023-09-22 21:09:29'),
	(82, 'Valéria Val', '56', 'Cilios Mega Brasileiro, Micropigmentação Shadow', 460.00, '$410,00', 258, '2023-09-21 09:00:00', '2023-09-21 13:18:00', 'Concluido', '2023-09-22 21:13:24', '2023-09-22 21:13:24'),
	(83, 'Marlon Gomes de Moura', '57', 'Buço, Cilios Volume Brasileiro, Design com Henna, Hydragloss', 300.00, 'https://startbootstrap.com/previews/sb-admin-2', 230, '2023-09-24 22:00:00', '2023-09-25 01:50:00', 'Concluido', '2023-09-25 05:35:56', '2023-09-25 05:35:56'),
	(84, 'Michelle Amorim', '58', 'Cilios Volume Brasileiro', 140.00, 'Troca em celular', 120, '2023-09-23 09:00:00', '2023-09-23 11:00:00', 'Concluido', '2023-09-25 20:12:36', '2023-09-25 20:12:36'),
	(85, 'Thays Bueno', '31', 'Manutenção Brasileiro', 90.00, 'Atendimento a domicilio', 78, '2023-10-03 13:30:00', '2023-10-03 14:48:00', 'Concluido', '2023-09-25 20:13:12', '2023-09-25 20:13:12'),
	(86, 'Cleide', '59', 'Cilios Mega Brasileiro', 160.00, 'Desconto R$140,00', 138, '2023-09-17 08:00:00', '2023-09-17 10:18:00', 'Concluido', '2023-09-25 20:16:40', '2023-09-25 20:16:40'),
	(87, 'Isabella Garces', '60', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-09-20 17:00:00', '2023-09-20 17:30:00', 'Concluido', '2023-09-25 20:18:58', '2023-09-25 20:18:58'),
	(90, 'Marcela Dias', '63', 'Buço, Design de Sobrancelhas Tradicional', 40.00, NULL, 40, '2023-09-29 08:00:00', '2023-09-29 08:40:00', 'Concluido', '2023-09-28 18:32:50', '2023-09-28 18:32:50'),
	(92, 'Jordhana Cristina Campos', '64', 'Design com Henna', 50.00, NULL, 40, '2023-09-29 11:30:00', '2023-09-29 12:10:00', 'Concluido', '2023-09-29 15:58:55', '2023-09-29 15:58:55'),
	(93, 'Vania Regina', '14', 'Manutenção Mega Brasileiro', 100.00, NULL, 120, '2023-10-28 08:00:00', '2023-10-28 10:00:00', 'Agendado', '2023-09-30 20:35:24', '2023-09-30 20:35:24'),
	(94, 'Rosilda Camargo', '26', 'Manutenção Brasileiro', 90.00, NULL, 78, '2023-10-03 18:30:00', '2023-10-03 19:48:00', 'Concluido', '2023-10-03 01:01:59', '2023-10-03 01:01:59'),
	(98, 'Izabel', '69', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-04 13:30:00', '2023-10-04 14:00:00', 'Concluido', '2023-10-04 23:26:11', '2023-10-04 23:26:11'),
	(99, 'Victoria Liz', '70', 'Buço, Design de Sobrancelhas Tradicional', 40.00, NULL, 40, '2023-10-04 10:00:00', '2023-10-04 10:40:00', 'Concluido', '2023-10-04 23:28:04', '2023-10-04 23:28:04'),
	(100, 'Gislane', '24', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-05 18:00:00', '2023-10-05 18:30:00', 'Concluido', '2023-10-06 19:45:26', '2023-10-06 19:45:26'),
	(101, 'Julhianne Alves', '66', 'Design com Henna', 50.00, NULL, 40, '2023-10-07 08:00:00', '2023-10-07 08:40:00', 'Concluido', '2023-10-06 19:46:43', '2023-10-06 19:46:43'),
	(102, 'Julhianne Alves', '66', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-07 09:00:00', '2023-10-07 09:30:00', 'Concluido', '2023-10-06 19:47:07', '2023-10-06 19:47:07'),
	(103, 'Thaís Marques', '72', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-07 10:00:00', '2023-10-07 10:30:00', 'Concluido', '2023-10-07 00:41:45', '2023-10-07 00:41:45'),
	(104, 'Katiuscia Moreira', '73', 'Design com Henna', 50.00, NULL, 40, '2023-10-07 13:00:00', '2023-10-07 13:40:00', 'Pendente', '2023-10-07 18:49:41', '2023-10-07 18:49:41'),
	(105, 'Marlon Gomes', '65', 'Combo (Brasileiro+Design+Labial)', 170.00, NULL, 138, '2023-10-11 10:30:00', '2023-10-11 12:48:00', 'Agendado', '2023-10-09 04:33:29', '2023-10-09 04:33:29'),
	(106, 'Marlon Gomes', '65', 'Combo Classico (Brasileiro+Henna+Labial), Combo Mega Brasileiro + Henna', 380.00, NULL, 318, '2023-10-29 15:00:00', '2023-10-29 20:18:00', 'Agendado', '2023-10-09 04:33:41', '2023-10-09 05:00:01'),
	(107, 'Carol Tininha', '16', 'Retoque Shadow', 150.00, 'R$100', 78, '2023-10-14 14:00:00', '2023-10-14 15:18:00', NULL, '2023-10-11 20:08:25', '2023-10-11 20:08:25'),
	(108, 'Cleide', '59', 'Manutenção Mega Brasileiro', 100.00, NULL, 120, '2023-10-14 16:30:00', '2023-10-14 18:30:00', NULL, '2023-10-11 20:09:17', '2023-10-11 20:09:17');

-- Copiando estrutura para tabela studiokm.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(191) NOT NULL,
  `telefone` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `bairro` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientes_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.clientes: ~35 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`, `data_nasc`, `bairro`, `created_at`, `updated_at`) VALUES
	(10, 'Pamela Bozza', '(62) 98216-6151', 'pegar@email.com.br2', '2023-09-04', 'Pegar Bairro', '2023-09-04 18:55:38', '2023-09-04 18:55:38'),
	(12, 'Laís Cardoso', '(62) 98156-4345', 'pegar@email2.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 18:58:29', '2023-09-04 18:58:29'),
	(13, 'Dayane Andrade', '(62) 99472-2018', 'pegar@email3.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 18:59:11', '2023-09-04 18:59:11'),
	(14, 'Vania Regina', '(62) 98405-2596', 'pegar@email4.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 19:02:49', '2023-09-04 19:02:49'),
	(15, 'Raquel Elisama', '(62) 98254-2201', 'pegar@email5.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 19:03:43', '2023-09-04 19:03:43'),
	(16, 'Carol Tininha', '(62) 99272-9163', 'pegar@email6.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 19:04:32', '2023-09-04 19:04:32'),
	(17, 'Priscilla Goncalves Regis', '(62) 99622-1506', 'priscillasiqueira85576@gmail.com', '1992-05-28', 'Parque Atheneu', '2023-09-05 00:54:16', '2023-09-05 00:54:16'),
	(18, 'Hadassa Raquel', '(62) 98531-0526', 'Hadassa.raquel@icloud.com', '2002-09-11', 'Volume Brasileiro 10-11', '2023-09-05 01:06:02', '2023-09-05 01:06:02'),
	(19, 'Lannara Lorrany', '(62) 99418-1544', 'naotem@gmail.com', '1999-02-01', 'Parque Atheneu', '2023-09-05 01:18:37', '2023-09-05 01:18:37'),
	(22, 'Kallyne Moreira', '(62) 99623-1245', 'naotememail@gmail.com', '2003-07-05', 'Residencial Brisas do cerrado', '2023-09-06 00:15:05', '2023-09-06 00:15:05'),
	(24, 'Gislane', '(62) 9805-6851', 'naotenhoemail@gmail.com', '1991-11-17', 'Ville de Franca', '2023-09-06 00:18:44', '2023-09-06 00:18:44'),
	(26, 'Rosilda Camargo', '(62) 98447-3161', 'rosildacamargo@gmail.com', '2023-09-09', 'Parque trindade', '2023-09-09 23:29:41', '2023-09-09 23:29:41'),
	(30, 'Nayara Cristina', '(62) 99652-3203', 'naotemnayara@gmail.com', '1998-01-05', 'Mariliza', '2023-09-12 23:37:24', '2023-09-12 23:37:24'),
	(31, 'Thays Bueno', '(62) 99853-9049', 'Thaysbueno@gmail.com', '1995-03-12', 'Parque Trindade', '2023-09-12 23:40:45', '2023-09-12 23:40:45'),
	(34, 'Vitória Amorim', '(62) 98519-5808', 'vitoriaamorim@gmail.com', '1989-04-12', 'Brisas do cerrado', '2023-09-16 06:10:42', '2023-09-16 06:10:42'),
	(35, 'Vanessa', '62 99291-5181', 'vanessa@gmail.com', '1997-06-15', 'Parque Atheneu', '2023-09-16 06:16:08', '2023-09-16 06:16:08'),
	(36, 'Clécia', '62 99624-5365', 'clecia@gmail.com', '1986-05-15', 'Parque Atheneu', '2023-09-16 06:19:05', '2023-09-16 06:19:05'),
	(55, 'Adneusa Candido', '(62) 9238-5286', NULL, NULL, NULL, '2023-09-22 21:09:13', '2023-09-22 21:09:13'),
	(56, 'Valéria Val', '(62) 9348-8812', NULL, NULL, NULL, '2023-09-22 21:12:34', '2023-09-22 21:12:34'),
	(58, 'Michelle Amorim', '(62) 9370-1952', NULL, NULL, 'Pq Atheneu', '2023-09-25 20:12:07', '2023-09-25 20:12:07'),
	(59, 'Cleide', '(62) 8422-8957', NULL, NULL, 'Pq Atheneu', '2023-09-25 20:15:51', '2023-09-25 20:15:51'),
	(60, 'Isabella Garces', '(62) 9354-8998', NULL, '2004-09-14', NULL, '2023-09-25 20:18:43', '2023-09-25 20:18:43'),
	(61, 'Franciele Glidsan', '(62) 8626-1734', NULL, NULL, NULL, '2023-09-25 20:21:46', '2023-09-25 20:21:46'),
	(62, 'Amanda Franco', '(62) 8501-7230', NULL, NULL, NULL, '2023-09-27 16:57:57', '2023-09-27 16:57:57'),
	(63, 'Marcela Dias', '62 99956-2343', NULL, NULL, NULL, '2023-09-28 18:32:16', '2023-09-28 18:32:16'),
	(64, 'Jordhana Cristina Campos', '62 99848-2330', NULL, NULL, 'Residencial brisas do cerrado', '2023-09-29 15:58:30', '2023-09-29 15:58:30'),
	(65, 'Marlon Gomes', '(62) 98500-9520', 'mrlon.mra@gmail.com', '1993-10-02', 'Parque Atheneu', '2023-09-29 21:38:41', '2023-09-29 21:38:41'),
	(66, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-03 02:07:35', '2023-10-03 02:07:35'),
	(67, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-03 02:07:35', '2023-10-03 02:07:35'),
	(68, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-03 02:07:36', '2023-10-03 02:07:36'),
	(69, 'Izabel', '(62) 8157-1179', NULL, NULL, NULL, '2023-10-04 23:25:58', '2023-10-04 23:25:58'),
	(70, 'Victoria Liz', '(62) 8402-0738', NULL, NULL, 'Jd mariliza', '2023-10-04 23:27:16', '2023-10-04 23:27:16'),
	(71, 'Julhianne Alves', '62 99241-2159', NULL, NULL, NULL, '2023-10-06 19:46:20', '2023-10-06 19:46:20'),
	(72, 'Thaís Marques', '62 98525-3065', NULL, NULL, NULL, '2023-10-07 00:41:29', '2023-10-07 00:41:29'),
	(73, 'Katiuscia Moreira', '62 981491248', NULL, NULL, NULL, '2023-10-07 18:49:27', '2023-10-07 18:49:27');

-- Copiando estrutura para tabela studiokm.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.migrations: ~4 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2023_08_22_144152_create_users_table', 1),
	(7, '2023_09_16_225250_create_tipos_de_usuarios_table', 1),
	(8, '2023_09_16_225515_create_usuario_tipos_table', 1);

-- Copiando estrutura para tabela studiokm.procedimentos
CREATE TABLE IF NOT EXISTS `procedimentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `procedimento` varchar(255) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `categoria` text NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela studiokm.procedimentos: ~38 rows (aproximadamente)
INSERT INTO `procedimentos` (`id`, `procedimento`, `valor`, `categoria`, `duration`, `created_at`, `updated_at`) VALUES
	(10, 'Buço', 10.00, 'Depilacao', '10', '2023-09-04 17:56:32', '2023-09-29 21:39:55'),
	(11, 'Combo (Brasileiro+Design+Labial)', 170.00, 'Combos', '138', '2023-09-04 17:57:37', '2023-09-04 17:57:37'),
	(12, 'Combo Classico (Brasileiro+Henna+Labial)', 180.00, 'Combos', '138', '2023-09-04 17:58:07', '2023-09-04 17:58:07'),
	(13, 'Combo Mega Brasileiro + Henna', 200.00, 'Combos', '180', '2023-09-04 17:58:46', '2023-09-04 17:58:46'),
	(14, 'Combo Cilios + Sobrancelhas', 150.00, 'Combos', '180', '2023-09-04 17:59:22', '2023-09-04 17:59:22'),
	(16, 'Curso Design de Sobrancelhas', 400.00, 'Cursos', '420', '2023-09-04 18:01:15', '2023-09-04 18:01:15'),
	(17, 'Curso Extensão de Cilios', 500.00, 'Cursos', '1440', '2023-09-04 18:01:45', '2023-10-03 04:22:01'),
	(18, 'Cilios Fio a Fio', 120.00, 'Cilios', '120', '2023-09-04 18:02:31', '2023-09-04 18:02:31'),
	(20, 'Cilios Volume Hibrido', 150.00, 'Cilios', '144', '2023-09-04 18:03:29', '2023-09-04 18:03:29'),
	(21, 'Cilios Volume Brasileiro', 140.00, 'Cilios', '120', '2023-09-04 18:04:17', '2023-09-04 18:04:17'),
	(22, 'Cilios Volume Light', 150.00, 'Cilios', '180', '2023-09-04 18:05:07', '2023-09-04 18:05:07'),
	(23, 'Cilios Volume Russo', 160.00, 'Cilios', '180', '2023-09-04 18:05:36', '2023-09-04 18:05:36'),
	(24, 'Design com Henna', 50.00, 'Sobrancelhas', '40', '2023-09-04 18:06:01', '2023-09-04 18:06:01'),
	(25, 'Design com Tintura', 55.00, 'Sobrancelhas', '40', '2023-09-04 18:06:27', '2023-09-04 18:06:27'),
	(26, 'Design de Sobrancelhas Tradicional', 30.00, 'Sobrancelhas', '30', '2023-09-04 18:06:46', '2023-09-04 18:06:46'),
	(28, 'Cilios Efeito Molhado', 150.00, 'Cilios', '120', '2023-09-04 18:08:21', '2023-09-04 18:08:21'),
	(29, 'Cilios Efeito Fox Y', 130.00, 'Cilios', '120', '2023-09-04 18:13:47', '2023-09-04 18:13:47'),
	(30, 'Hydragloss', 100.00, 'Facial', '60', '2023-09-04 18:15:32', '2023-09-04 18:15:32'),
	(31, 'Cilios Lash Lifting', 100.00, 'Cilios', '60', '2023-09-04 18:15:56', '2023-09-04 18:15:56'),
	(32, 'Limpeza de Pele', 100.00, 'Facial', '78', '2023-09-04 18:16:22', '2023-09-04 18:16:22'),
	(33, 'Manutenção Fio a Fio', 90.00, 'Manutencoes', '78', '2023-09-04 18:17:43', '2023-09-04 18:17:43'),
	(34, 'Manutenção Egípcio', 90.00, 'Manutencoes', '90', '2023-09-04 18:18:06', '2023-09-04 18:18:06'),
	(35, 'Manutenção Mega Brasileiro', 100.00, 'Manutencoes', '120', '2023-09-04 18:20:01', '2023-09-04 18:20:01'),
	(36, 'Manutenção Volume Russo', 110.00, 'Manutencoes', '180', '2023-09-04 18:20:30', '2023-09-04 18:20:30'),
	(37, 'Manutenção Brasileiro', 90.00, 'Manutencoes', '78', '2023-09-04 18:21:41', '2023-09-04 18:21:41'),
	(38, 'Manutenção Efeito Molhado', 100.00, 'Manutencoes', '120', '2023-09-04 18:22:17', '2023-09-04 18:22:17'),
	(39, 'Manutenção Eyes Fox', 100.00, 'Manutencoes', '120', '2023-09-04 18:22:56', '2023-09-04 18:22:56'),
	(40, 'Manutenção Volume Híbrido', 90.00, 'Manutencoes', '120', '2023-09-04 18:23:41', '2023-09-04 18:23:41'),
	(41, 'Cilios Mega Brasileiro', 160.00, 'Cilios', '138', '2023-09-04 18:24:28', '2023-09-04 18:24:28'),
	(42, 'Micropigmentação Fio a Fio', 300.00, 'Micropigmentação', '78', '2023-09-04 18:25:01', '2023-09-04 18:25:01'),
	(43, 'Neutralização Sobrancelhas', 150.00, 'Micropigmentação', '78', '2023-09-04 18:25:36', '2023-09-04 18:25:36'),
	(44, 'Remoção Cilios', 30.00, 'Cilios', '30', '2023-09-04 18:26:15', '2023-09-04 18:26:15'),
	(45, 'Retoque Fio a Fio', 150.00, 'Micropigmentação', '78', '2023-09-04 18:26:40', '2023-09-04 18:26:40'),
	(46, 'Retoque Shadow', 150.00, 'Micropigmentação', '78', '2023-09-04 18:26:57', '2023-09-04 18:26:57'),
	(47, 'Micropigmentação Shadow', 300.00, 'Micropigmentação', '120', '2023-09-04 18:28:11', '2023-09-04 18:28:11'),
	(48, 'Shadow + Retoque', 400.00, 'Micropigmentação', '120', '2023-09-04 18:28:55', '2023-09-04 18:28:55'),
	(49, 'Cilios Volume 5D', 150.00, 'Cilios', '120', '2023-09-04 18:29:19', '2023-09-04 18:29:19'),
	(50, 'Cilios Volume Egípcio', 120.00, 'Cilios', '120', '2023-09-04 18:29:52', '2023-09-04 18:29:52');

-- Copiando estrutura para tabela studiokm.tipos_de_usuarios
CREATE TABLE IF NOT EXISTS `tipos_de_usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('administrador','funcionario','cliente') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.tipos_de_usuarios: ~3 rows (aproximadamente)
INSERT INTO `tipos_de_usuarios` (`id`, `tipo`, `created_at`, `updated_at`) VALUES
	(1, 'administrador', NULL, NULL),
	(2, 'funcionario', NULL, NULL),
	(3, 'cliente', NULL, NULL);

-- Copiando estrutura para tabela studiokm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo_usuario` bigint(20) unsigned NOT NULL,
  `id_patrao` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.users: ~4 rows (aproximadamente)
INSERT INTO `users` (`id`, `id_tipo_usuario`, `id_patrao`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'Marlon gomes de Moura', 'mrlon.mra@gmail.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 07:51:28', '2023-10-13 07:51:28'),
	(2, 2, 1, 'Josefa', 'josefa@ileva.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 04:52:41', '2023-10-13 04:52:41'),
	(3, 2, 1, 'Silviane', 'silviane@ileva.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 04:52:41', '2023-10-13 04:52:41'),
	(5, 2, 1, 'Maria', 'maria@ileva.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 04:52:41', '2023-10-13 04:52:41');

-- Copiando estrutura para tabela studiokm.usuario_tipos
CREATE TABLE IF NOT EXISTS `usuario_tipos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_tipo` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_tipos_id_user_foreign` (`id_user`),
  KEY `usuario_tipos_id_tipo_foreign` (`id_tipo`),
  CONSTRAINT `usuario_tipos_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_de_usuarios` (`id`),
  CONSTRAINT `usuario_tipos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela studiokm.usuario_tipos: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

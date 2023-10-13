-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/10/2023 às 11:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `studiokm`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `agendas`
--

INSERT INTO `agendas` (`id`, `nomeCliente`, `cliente_id`, `procedimento`, `valor`, `description`, `hours`, `start`, `end`, `status`, `created_at`, `updated_at`) VALUES
(29, 'Pamela Bozza', '10', 'Cilios Volume Egípcio', 120.00, 'Primeiro agendamento!', 120, '2023-09-04 08:00:00', '2023-09-04 10:00:00', 'Concluido', '2023-09-04 15:56:51', '2023-09-04 15:56:51'),
(30, 'Laís Cardoso', '12', 'Design de Sobrancelhas Tradicional', 30.00, 'Design simples.', 30, '2023-09-01 17:30:00', '2023-09-01 18:00:00', 'Concluido', '2023-09-04 16:00:31', '2023-09-04 16:00:31'),
(31, 'Dayane Andrade', '13', 'Cilios Volume Brasileiro', 140.00, 'Volume Brasileiro', 120, '2023-09-01 18:00:00', '2023-09-01 20:00:00', 'Concluido', '2023-09-04 16:00:52', '2023-09-04 16:00:52'),
(32, 'Vania Regina', '14', 'Cilios Volume Brasileiro', 140.00, 'Volume Brasileiro', 120, '2023-09-02 07:30:00', '2023-09-02 09:30:00', 'Concluido', '2023-09-04 16:08:02', '2023-09-04 16:08:02'),
(33, 'Raquel Elisama', '15', 'Cilios Mega Brasileiro', 160.00, 'Mega Brasileiro', 138, '2023-09-02 10:00:00', '2023-09-02 12:18:00', 'Concluido', '2023-09-04 16:08:33', '2023-09-04 16:08:33'),
(34, 'Carol Tininha', '16', 'Retoque Shadow', 150.00, 'Retoque Shadow', 78, '2023-09-02 16:00:00', '2023-09-02 17:18:00', 'Concluido', '2023-09-04 16:08:59', '2023-09-04 16:08:59'),
(35, 'Priscilla Goncalves Regis', '17', 'Manutenção Mega Brasileiro', 100.00, 'Cilios, sobrancelhas e buço.', 120, '2023-09-12 08:00:00', '2023-09-12 10:00:00', 'Concluido', '2023-09-04 21:55:35', '2023-09-11 16:55:54'),
(36, 'Hadassa Raquel', '18', 'Cilios Volume Brasileiro', 140.00, 'Valor no pix R$120,00\r\nTAM 10-11', 120, '2023-09-06 08:00:00', '2023-09-06 10:00:00', 'Concluido', '2023-09-04 22:07:46', '2023-09-04 22:07:46'),
(39, 'Kallyne Moreira', '22', 'Design com Henna', 50.00, 'Design com henna', 40, '2023-09-05 19:00:00', '2023-09-05 19:40:00', 'Concluido', '2023-09-05 21:15:50', '2023-09-05 21:15:50'),
(40, 'Gislane', '24', 'Design de Sobrancelhas Tradicional', 30.00, 'Somente design', 30, '2023-09-06 13:30:00', '2023-09-06 14:00:00', 'Concluido', '2023-09-05 21:19:12', '2023-09-08 15:59:11'),
(44, 'Rosilda Camargo', '26', 'Manutenção Brasileiro', 90.00, 'Manutenção cílios', 78, '2023-09-09 07:30:00', '2023-09-09 08:48:00', 'Concluido', '2023-09-09 20:30:30', '2023-09-09 20:30:30'),
(47, 'Priscilla Goncalves Regis', '17', 'Manutenção Mega Brasileiro', 100.00, 'manutenção', 120, '2023-10-12 08:00:00', '2023-10-12 10:00:00', 'Agendado', '2023-09-12 17:25:25', '2023-10-11 17:10:12'),
(49, 'Thays Bueno', '31', 'Cilios Volume Brasileiro', 140.00, 'Atendimento a domicilio', 120, '2023-09-15 14:00:00', '2023-09-15 16:00:00', 'Concluido', '2023-09-12 20:41:06', '2023-09-12 20:41:06'),
(52, 'Vania Regina', '14', 'Manutenção Mega Brasileiro', 100.00, 'Manutenção', 120, '2023-09-30 08:00:00', '2023-09-30 10:00:00', 'Concluido', '2023-09-15 02:21:39', '2023-09-15 02:21:39'),
(57, 'Vitória Amorim', '34', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-09-15 10:30:00', '2023-09-15 11:00:00', 'Concluido', '2023-09-16 03:11:34', '2023-09-16 03:11:34'),
(58, 'Nayara Cristina', '30', 'Design com Henna', 50.00, NULL, 40, '2023-09-15 13:00:00', '2023-09-15 13:40:00', 'Concluido', '2023-09-16 03:13:03', '2023-09-16 03:13:03'),
(59, 'Vanessa', '35', 'Design com Henna', 50.00, NULL, 40, '2023-09-15 17:30:00', '2023-09-15 18:10:00', 'Concluido', '2023-09-16 03:16:40', '2023-09-16 03:16:40'),
(60, 'Clécia', '36', 'Buço', 10.00, NULL, 10, '2023-09-16 08:00:00', '2023-09-16 08:10:00', 'Concluido', '2023-09-16 03:19:49', '2023-09-18 23:36:46'),
(81, 'Adneusa Candido', '55', 'Cilios Volume Brasileiro', 140.00, NULL, 120, '2023-09-20 18:00:00', '2023-09-20 20:00:00', 'Concluido', '2023-09-22 18:09:29', '2023-09-22 18:09:29'),
(82, 'Valéria Val', '56', 'Cilios Mega Brasileiro, Micropigmentação Shadow', 460.00, '$410,00', 258, '2023-09-21 09:00:00', '2023-09-21 13:18:00', 'Concluido', '2023-09-22 18:13:24', '2023-09-22 18:13:24'),
(83, 'Marlon Gomes de Moura', '57', 'Buço, Cilios Volume Brasileiro, Design com Henna, Hydragloss', 300.00, 'https://startbootstrap.com/previews/sb-admin-2', 230, '2023-09-24 22:00:00', '2023-09-25 01:50:00', 'Concluido', '2023-09-25 02:35:56', '2023-09-25 02:35:56'),
(84, 'Michelle Amorim', '58', 'Cilios Volume Brasileiro', 140.00, 'Troca em celular', 120, '2023-09-23 09:00:00', '2023-09-23 11:00:00', 'Concluido', '2023-09-25 17:12:36', '2023-09-25 17:12:36'),
(85, 'Thays Bueno', '31', 'Manutenção Brasileiro', 90.00, 'Atendimento a domicilio', 78, '2023-10-03 13:30:00', '2023-10-03 14:48:00', 'Concluido', '2023-09-25 17:13:12', '2023-09-25 17:13:12'),
(86, 'Cleide', '59', 'Cilios Mega Brasileiro', 160.00, 'Desconto R$140,00', 138, '2023-09-17 08:00:00', '2023-09-17 10:18:00', 'Concluido', '2023-09-25 17:16:40', '2023-09-25 17:16:40'),
(87, 'Isabella Garces', '60', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-09-20 17:00:00', '2023-09-20 17:30:00', 'Concluido', '2023-09-25 17:18:58', '2023-09-25 17:18:58'),
(90, 'Marcela Dias', '63', 'Buço, Design de Sobrancelhas Tradicional', 40.00, NULL, 40, '2023-09-29 08:00:00', '2023-09-29 08:40:00', 'Concluido', '2023-09-28 15:32:50', '2023-09-28 15:32:50'),
(92, 'Jordhana Cristina Campos', '64', 'Design com Henna', 50.00, NULL, 40, '2023-09-29 11:30:00', '2023-09-29 12:10:00', 'Concluido', '2023-09-29 12:58:55', '2023-09-29 12:58:55'),
(93, 'Vania Regina', '14', 'Manutenção Mega Brasileiro', 100.00, NULL, 120, '2023-10-28 08:00:00', '2023-10-28 10:00:00', 'Agendado', '2023-09-30 17:35:24', '2023-09-30 17:35:24'),
(94, 'Rosilda Camargo', '26', 'Manutenção Brasileiro', 90.00, NULL, 78, '2023-10-03 18:30:00', '2023-10-03 19:48:00', 'Concluido', '2023-10-02 22:01:59', '2023-10-02 22:01:59'),
(98, 'Izabel', '69', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-04 13:30:00', '2023-10-04 14:00:00', 'Concluido', '2023-10-04 20:26:11', '2023-10-04 20:26:11'),
(99, 'Victoria Liz', '70', 'Buço, Design de Sobrancelhas Tradicional', 40.00, NULL, 40, '2023-10-04 10:00:00', '2023-10-04 10:40:00', 'Concluido', '2023-10-04 20:28:04', '2023-10-04 20:28:04'),
(100, 'Gislane', '24', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-05 18:00:00', '2023-10-05 18:30:00', 'Concluido', '2023-10-06 16:45:26', '2023-10-06 16:45:26'),
(101, 'Julhianne Alves', '66', 'Design com Henna', 50.00, NULL, 40, '2023-10-07 08:00:00', '2023-10-07 08:40:00', 'Concluido', '2023-10-06 16:46:43', '2023-10-06 16:46:43'),
(102, 'Julhianne Alves', '66', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-07 09:00:00', '2023-10-07 09:30:00', 'Concluido', '2023-10-06 16:47:07', '2023-10-06 16:47:07'),
(103, 'Thaís Marques', '72', 'Design de Sobrancelhas Tradicional', 30.00, NULL, 30, '2023-10-07 10:00:00', '2023-10-07 10:30:00', 'Concluido', '2023-10-06 21:41:45', '2023-10-06 21:41:45'),
(104, 'Katiuscia Moreira', '73', 'Design com Henna', 50.00, NULL, 40, '2023-10-07 13:00:00', '2023-10-07 13:40:00', 'Pendente', '2023-10-07 15:49:41', '2023-10-07 15:49:41'),
(105, 'Marlon Gomes', '65', 'Combo (Brasileiro+Design+Labial)', 170.00, NULL, 138, '2023-10-11 10:30:00', '2023-10-11 12:48:00', 'Agendado', '2023-10-09 01:33:29', '2023-10-09 01:33:29'),
(106, 'Marlon Gomes', '65', 'Combo Classico (Brasileiro+Henna+Labial), Combo Mega Brasileiro + Henna', 380.00, NULL, 318, '2023-10-29 15:00:00', '2023-10-29 20:18:00', 'Agendado', '2023-10-09 01:33:41', '2023-10-09 02:00:01'),
(107, 'Carol Tininha', '16', 'Retoque Shadow', 150.00, 'R$100', 78, '2023-10-14 14:00:00', '2023-10-14 15:18:00', NULL, '2023-10-11 17:08:25', '2023-10-11 17:08:25'),
(108, 'Cleide', '59', 'Manutenção Mega Brasileiro', 100.00, NULL, 120, '2023-10-14 16:30:00', '2023-10-14 18:30:00', NULL, '2023-10-11 17:09:17', '2023-10-11 17:09:17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) NOT NULL,
  `telefone` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `bairro` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`, `data_nasc`, `bairro`, `created_at`, `updated_at`) VALUES
(10, 'Pamela Bozza', '(62) 98216-6151', 'pegar@email.com.br2', '2023-09-04', 'Pegar Bairro', '2023-09-04 15:55:38', '2023-09-04 15:55:38'),
(12, 'Laís Cardoso', '(62) 98156-4345', 'pegar@email2.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 15:58:29', '2023-09-04 15:58:29'),
(13, 'Dayane Andrade', '(62) 99472-2018', 'pegar@email3.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 15:59:11', '2023-09-04 15:59:11'),
(14, 'Vania Regina', '(62) 98405-2596', 'pegar@email4.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 16:02:49', '2023-09-04 16:02:49'),
(15, 'Raquel Elisama', '(62) 98254-2201', 'pegar@email5.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 16:03:43', '2023-09-04 16:03:43'),
(16, 'Carol Tininha', '(62) 99272-9163', 'pegar@email6.com.br', '2023-09-04', 'Pegar Bairro', '2023-09-04 16:04:32', '2023-09-04 16:04:32'),
(17, 'Priscilla Goncalves Regis', '(62) 99622-1506', 'priscillasiqueira85576@gmail.com', '1992-05-28', 'Parque Atheneu', '2023-09-04 21:54:16', '2023-09-04 21:54:16'),
(18, 'Hadassa Raquel', '(62) 98531-0526', 'Hadassa.raquel@icloud.com', '2002-09-11', 'Volume Brasileiro 10-11', '2023-09-04 22:06:02', '2023-09-04 22:06:02'),
(19, 'Lannara Lorrany', '(62) 99418-1544', 'naotem@gmail.com', '1999-02-01', 'Parque Atheneu', '2023-09-04 22:18:37', '2023-09-04 22:18:37'),
(22, 'Kallyne Moreira', '(62) 99623-1245', 'naotememail@gmail.com', '2003-07-05', 'Residencial Brisas do cerrado', '2023-09-05 21:15:05', '2023-09-05 21:15:05'),
(24, 'Gislane', '(62) 9805-6851', 'naotenhoemail@gmail.com', '1991-11-17', 'Ville de Franca', '2023-09-05 21:18:44', '2023-09-05 21:18:44'),
(26, 'Rosilda Camargo', '(62) 98447-3161', 'rosildacamargo@gmail.com', '2023-09-09', 'Parque trindade', '2023-09-09 20:29:41', '2023-09-09 20:29:41'),
(30, 'Nayara Cristina', '(62) 99652-3203', 'naotemnayara@gmail.com', '1998-01-05', 'Mariliza', '2023-09-12 20:37:24', '2023-09-12 20:37:24'),
(31, 'Thays Bueno', '(62) 99853-9049', 'Thaysbueno@gmail.com', '1995-03-12', 'Parque Trindade', '2023-09-12 20:40:45', '2023-09-12 20:40:45'),
(34, 'Vitória Amorim', '(62) 98519-5808', 'vitoriaamorim@gmail.com', '1989-04-12', 'Brisas do cerrado', '2023-09-16 03:10:42', '2023-09-16 03:10:42'),
(35, 'Vanessa', '62 99291-5181', 'vanessa@gmail.com', '1997-06-15', 'Parque Atheneu', '2023-09-16 03:16:08', '2023-09-16 03:16:08'),
(36, 'Clécia', '62 99624-5365', 'clecia@gmail.com', '1986-05-15', 'Parque Atheneu', '2023-09-16 03:19:05', '2023-09-16 03:19:05'),
(55, 'Adneusa Candido', '(62) 9238-5286', NULL, NULL, NULL, '2023-09-22 18:09:13', '2023-09-22 18:09:13'),
(56, 'Valéria Val', '(62) 9348-8812', NULL, NULL, NULL, '2023-09-22 18:12:34', '2023-09-22 18:12:34'),
(58, 'Michelle Amorim', '(62) 9370-1952', NULL, NULL, 'Pq Atheneu', '2023-09-25 17:12:07', '2023-09-25 17:12:07'),
(59, 'Cleide', '(62) 8422-8957', NULL, NULL, 'Pq Atheneu', '2023-09-25 17:15:51', '2023-09-25 17:15:51'),
(60, 'Isabella Garces', '(62) 9354-8998', NULL, '2004-09-14', NULL, '2023-09-25 17:18:43', '2023-09-25 17:18:43'),
(61, 'Franciele Glidsan', '(62) 8626-1734', NULL, NULL, NULL, '2023-09-25 17:21:46', '2023-09-25 17:21:46'),
(62, 'Amanda Franco', '(62) 8501-7230', NULL, NULL, NULL, '2023-09-27 13:57:57', '2023-09-27 13:57:57'),
(63, 'Marcela Dias', '62 99956-2343', NULL, NULL, NULL, '2023-09-28 15:32:16', '2023-09-28 15:32:16'),
(64, 'Jordhana Cristina Campos', '62 99848-2330', NULL, NULL, 'Residencial brisas do cerrado', '2023-09-29 12:58:30', '2023-09-29 12:58:30'),
(65, 'Marlon Gomes', '(62) 98500-9520', 'mrlon.mra@gmail.com', '1993-10-02', 'Parque Atheneu', '2023-09-29 18:38:41', '2023-09-29 18:38:41'),
(66, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-02 23:07:35', '2023-10-02 23:07:35'),
(67, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-02 23:07:35', '2023-10-02 23:07:35'),
(68, 'Julhianne Alves', '(62) 9241-2159', NULL, NULL, NULL, '2023-10-02 23:07:36', '2023-10-02 23:07:36'),
(69, 'Izabel', '(62) 8157-1179', NULL, NULL, NULL, '2023-10-04 20:25:58', '2023-10-04 20:25:58'),
(70, 'Victoria Liz', '(62) 8402-0738', NULL, NULL, 'Jd mariliza', '2023-10-04 20:27:16', '2023-10-04 20:27:16'),
(71, 'Julhianne Alves', '62 99241-2159', NULL, NULL, NULL, '2023-10-06 16:46:20', '2023-10-06 16:46:20'),
(72, 'Thaís Marques', '62 98525-3065', NULL, NULL, NULL, '2023-10-06 21:41:29', '2023-10-06 21:41:29'),
(73, 'Katiuscia Moreira', '62 981491248', NULL, NULL, NULL, '2023-10-07 15:49:27', '2023-10-07 15:49:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_22_144152_create_users_table', 1),
(7, '2023_09_16_225250_create_tipos_de_usuarios_table', 1),
(8, '2023_09_16_225515_create_usuario_tipos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos`
--

CREATE TABLE `procedimentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procedimento` varchar(255) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `categoria` text NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `procedimentos`
--

INSERT INTO `procedimentos` (`id`, `procedimento`, `valor`, `categoria`, `duration`, `created_at`, `updated_at`) VALUES
(10, 'Buço', 10.00, 'Depilacao', '10', '2023-09-04 14:56:32', '2023-09-29 18:39:55'),
(11, 'Combo (Brasileiro+Design+Labial)', 170.00, 'Combos', '138', '2023-09-04 14:57:37', '2023-09-04 14:57:37'),
(12, 'Combo Classico (Brasileiro+Henna+Labial)', 180.00, 'Combos', '138', '2023-09-04 14:58:07', '2023-09-04 14:58:07'),
(13, 'Combo Mega Brasileiro + Henna', 200.00, 'Combos', '180', '2023-09-04 14:58:46', '2023-09-04 14:58:46'),
(14, 'Combo Cilios + Sobrancelhas', 150.00, 'Combos', '180', '2023-09-04 14:59:22', '2023-09-04 14:59:22'),
(16, 'Curso Design de Sobrancelhas', 400.00, 'Cursos', '420', '2023-09-04 15:01:15', '2023-09-04 15:01:15'),
(17, 'Curso Extensão de Cilios', 500.00, 'Cursos', '1440', '2023-09-04 15:01:45', '2023-10-03 01:22:01'),
(18, 'Cilios Fio a Fio', 120.00, 'Cilios', '120', '2023-09-04 15:02:31', '2023-09-04 15:02:31'),
(20, 'Cilios Volume Hibrido', 150.00, 'Cilios', '144', '2023-09-04 15:03:29', '2023-09-04 15:03:29'),
(21, 'Cilios Volume Brasileiro', 140.00, 'Cilios', '120', '2023-09-04 15:04:17', '2023-09-04 15:04:17'),
(22, 'Cilios Volume Light', 150.00, 'Cilios', '180', '2023-09-04 15:05:07', '2023-09-04 15:05:07'),
(23, 'Cilios Volume Russo', 160.00, 'Cilios', '180', '2023-09-04 15:05:36', '2023-09-04 15:05:36'),
(24, 'Design com Henna', 50.00, 'Sobrancelhas', '40', '2023-09-04 15:06:01', '2023-09-04 15:06:01'),
(25, 'Design com Tintura', 55.00, 'Sobrancelhas', '40', '2023-09-04 15:06:27', '2023-09-04 15:06:27'),
(26, 'Design de Sobrancelhas Tradicional', 30.00, 'Sobrancelhas', '30', '2023-09-04 15:06:46', '2023-09-04 15:06:46'),
(28, 'Cilios Efeito Molhado', 150.00, 'Cilios', '120', '2023-09-04 15:08:21', '2023-09-04 15:08:21'),
(29, 'Cilios Efeito Fox Y', 130.00, 'Cilios', '120', '2023-09-04 15:13:47', '2023-09-04 15:13:47'),
(30, 'Hydragloss', 100.00, 'Facial', '60', '2023-09-04 15:15:32', '2023-09-04 15:15:32'),
(31, 'Cilios Lash Lifting', 100.00, 'Cilios', '60', '2023-09-04 15:15:56', '2023-09-04 15:15:56'),
(32, 'Limpeza de Pele', 100.00, 'Facial', '78', '2023-09-04 15:16:22', '2023-09-04 15:16:22'),
(33, 'Manutenção Fio a Fio', 90.00, 'Manutencoes', '78', '2023-09-04 15:17:43', '2023-09-04 15:17:43'),
(34, 'Manutenção Egípcio', 90.00, 'Manutencoes', '90', '2023-09-04 15:18:06', '2023-09-04 15:18:06'),
(35, 'Manutenção Mega Brasileiro', 100.00, 'Manutencoes', '120', '2023-09-04 15:20:01', '2023-09-04 15:20:01'),
(36, 'Manutenção Volume Russo', 110.00, 'Manutencoes', '180', '2023-09-04 15:20:30', '2023-09-04 15:20:30'),
(37, 'Manutenção Brasileiro', 90.00, 'Manutencoes', '78', '2023-09-04 15:21:41', '2023-09-04 15:21:41'),
(38, 'Manutenção Efeito Molhado', 100.00, 'Manutencoes', '120', '2023-09-04 15:22:17', '2023-09-04 15:22:17'),
(39, 'Manutenção Eyes Fox', 100.00, 'Manutencoes', '120', '2023-09-04 15:22:56', '2023-09-04 15:22:56'),
(40, 'Manutenção Volume Híbrido', 90.00, 'Manutencoes', '120', '2023-09-04 15:23:41', '2023-09-04 15:23:41'),
(41, 'Cilios Mega Brasileiro', 160.00, 'Cilios', '138', '2023-09-04 15:24:28', '2023-09-04 15:24:28'),
(42, 'Micropigmentação Fio a Fio', 300.00, 'Micropigmentação', '78', '2023-09-04 15:25:01', '2023-09-04 15:25:01'),
(43, 'Neutralização Sobrancelhas', 150.00, 'Micropigmentação', '78', '2023-09-04 15:25:36', '2023-09-04 15:25:36'),
(44, 'Remoção Cilios', 30.00, 'Cilios', '30', '2023-09-04 15:26:15', '2023-09-04 15:26:15'),
(45, 'Retoque Fio a Fio', 150.00, 'Micropigmentação', '78', '2023-09-04 15:26:40', '2023-09-04 15:26:40'),
(46, 'Retoque Shadow', 150.00, 'Micropigmentação', '78', '2023-09-04 15:26:57', '2023-09-04 15:26:57'),
(47, 'Micropigmentação Shadow', 300.00, 'Micropigmentação', '120', '2023-09-04 15:28:11', '2023-09-04 15:28:11'),
(48, 'Shadow + Retoque', 400.00, 'Micropigmentação', '120', '2023-09-04 15:28:55', '2023-09-04 15:28:55'),
(49, 'Cilios Volume 5D', 150.00, 'Cilios', '120', '2023-09-04 15:29:19', '2023-09-04 15:29:19'),
(50, 'Cilios Volume Egípcio', 120.00, 'Cilios', '120', '2023-09-04 15:29:52', '2023-09-04 15:29:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_de_usuarios`
--

CREATE TABLE `tipos_de_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` enum('administrador','funcionario') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tipos_de_usuarios`
--

INSERT INTO `tipos_de_usuarios` (`id`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'administrador', NULL, NULL),
(2, 'funcionario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tipo_usuario` bigint(20) UNSIGNED NOT NULL,
  `id_patrao` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `id_tipo_usuario`, `id_patrao`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Marlon gomes de Moura', 'mrlon.mra@gmail.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 04:51:28', '2023-10-13 04:51:28'),
(2, 2, 1, 'Ricardo', 'ricardo@ileva.com', NULL, '1', NULL, '2023-10-13 01:52:41', '2023-10-13 01:52:41'),
(3, 2, 4, 'Ricardo', 'ricardo2@ileva.com', NULL, '1', NULL, '2023-10-13 01:52:41', '2023-10-13 01:52:41'),
(4, 1, NULL, 'Jose', '1@gmail.com', NULL, '$2y$10$SL0mE/IqmoE2es1aalsBs.TTfel73lH84MBBIplyLbM5UH4.gLuJG', NULL, '2023-10-13 04:51:28', '2023-10-13 04:51:28'),
(5, 2, 4, 'Ricardo3', 'ricardo3@ileva.com', NULL, '1', NULL, '2023-10-13 01:52:41', '2023-10-13 01:52:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario_tipos`
--

CREATE TABLE `usuario_tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_tipo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuario_tipos`
--

INSERT INTO `usuario_tipos` (`id`, `id_user`, `id_tipo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-13 01:51:55', '2023-10-13 01:51:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_email_unique` (`email`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipos_de_usuarios`
--
ALTER TABLE `tipos_de_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices de tabela `usuario_tipos`
--
ALTER TABLE `usuario_tipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_tipos_id_user_foreign` (`id_user`),
  ADD KEY `usuario_tipos_id_tipo_foreign` (`id_tipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `tipos_de_usuarios`
--
ALTER TABLE `tipos_de_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario_tipos`
--
ALTER TABLE `usuario_tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `usuario_tipos`
--
ALTER TABLE `usuario_tipos`
  ADD CONSTRAINT `usuario_tipos_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_de_usuarios` (`id`),
  ADD CONSTRAINT `usuario_tipos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

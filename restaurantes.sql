-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 14:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurantes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo_cozinha` varchar(50) DEFAULT NULL,
  `avaliacao` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `restaurante`
--

INSERT INTO `restaurante` (`id`, `nome`, `tipo_cozinha`, `avaliacao`) VALUES
(1, ' Sabor Paulista', ' Brasileira', 4.5),
(2, 'la trattoria', ' italiana', 4.7),
(3, ' Sushi  zen ', 'japonesa', 4.3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

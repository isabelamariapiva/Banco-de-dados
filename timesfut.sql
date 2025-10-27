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
-- Banco de dados: `timesfut`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `timesfut`
--

CREATE TABLE `timesfut` (
  `id_timesfut` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `titulos_nacionais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `timesfut`
--

INSERT INTO `timesfut` (`id_timesfut`, `nome`, `cidade`, `titulos_nacionais`) VALUES
(1, 'São Paulo', 'São Paulo', 8),
(2, 'Flamengo', 'Rio de Janeiro', 7),
(3, 'Palmeiras', 'São Paulo', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `timesfut`
--
ALTER TABLE `timesfut`
  ADD PRIMARY KEY (`id_timesfut`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `timesfut`
--
ALTER TABLE `timesfut`
  MODIFY `id_timesfut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

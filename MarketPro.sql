-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 18:38
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
-- Banco de dados: `cliente`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` int(11) NOT NULL,
  `nome_campanha` varchar(20) DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `orcamento` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`) VALUES
(1, 'casamento', '2025-10-22 00:00:00', '2025-11-22 00:00:00', 2350.00),
(2, 'igreja', '2025-11-22 00:00:00', '2025-12-12 00:00:00', 1500.00),
(3, 'ensaio de 15 anos', '2025-12-03 00:00:00', '2025-12-23 00:00:00', 2800.00),
(4, 'loja', '2025-11-23 00:00:00', '2025-12-03 00:00:00', 1800.00),
(5, 'Ensaio foto nenem', '2025-10-08 00:00:00', '2025-10-18 00:00:00', 2250.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `segmento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `email`, `segmento`) VALUES
(1, 'isabela Maria', 'isabela@gmail.com', 'casamento'),
(2, 'Ana Laura', 'ana@gmail.com', 'igreja'),
(3, 'Emily Sierra', 'Emile@gmail.com', 'ensaio 15 anos'),
(4, 'Paula Silva', 'paulette@gmail.com', 'loja'),
(5, 'Jessica Costa', 'jessica@gmail.com', 'ensaio foto nenem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `divulgacao`
--

CREATE TABLE `divulgacao` (
  `id_divulgacao` int(11) NOT NULL,
  `id_midia` int(11) DEFAULT NULL,
  `id_campanha` int(11) DEFAULT NULL,
  `publico` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `divulgacao`
--

INSERT INTO `divulgacao` (`id_divulgacao`, `id_midia`, `id_campanha`, `publico`) VALUES
(1, 1, 1, 'todos'),
(2, 2, 2, 'todos'),
(3, 3, 3, 'todos'),
(4, 4, 4, 'adulto 18-32 anos'),
(5, 5, 5, ' infantil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_campanha` int(11) DEFAULT NULL,
  `tipo_midia` varchar(20) DEFAULT NULL,
  `double_unitario` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id_midia`, `id_cliente`, `id_campanha`, `tipo_midia`, `double_unitario`) VALUES
(1, 1, 1, 'som', 250.00),
(2, 2, 2, 'fotografia', 169.00),
(3, 3, 3, 'filmaker', 230.00),
(4, 4, 4, 'fotografia', 550.00),
(5, 5, 5, 'filmaker', 134.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id_campanha`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `divulgacao`
--
ALTER TABLE `divulgacao`
  ADD PRIMARY KEY (`id_divulgacao`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id_midia`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campanha`
--
ALTER TABLE `campanha`
  MODIFY `id_campanha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `divulgacao`
--
ALTER TABLE `divulgacao`
  MODIFY `id_divulgacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `id_midia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

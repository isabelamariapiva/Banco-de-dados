-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 19:58
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
-- Banco de dados: `ceps`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ceps`
--

CREATE TABLE `ceps` (
  `cep_id` int(11) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  `cep` char(9) NOT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `ddd` char(3) DEFAULT NULL,
  `gia` varchar(20) DEFAULT NULL,
  `siafi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ceps`
--

INSERT INTO `ceps` (`cep_id`, `cidade_id`, `cep`, `logradouro`, `complemento`, `bairro`, `ddd`, `gia`, `siafi`) VALUES
(41, 1, '18040‑040', 'Rua Ana Augusto', '', 'Vila Augusta', '15', '', NULL),
(42, 1, '18040‑041', 'Rua Ana Augusto 2', 'lado par', 'Vila Augusta', '15', '', NULL),
(43, 1, '18040‑042', 'Rua Ana Augusto 3', 'lado ímpar', 'Vila Augusta', '15', '', NULL),
(44, 1, '18041‑000', 'Av. Brasil', '', 'Campolim', '15', '', NULL),
(45, 1, '18041‑001', 'Av. Brasil 2', '', 'Campolim', '15', '', NULL),
(46, 1, '18042‑000', 'Rua das Flores', '', 'Jardim Zulmira', '15', '', NULL),
(47, 1, '18042‑001', 'Rua das Flores 2', '', 'Jardim Zulmira', '15', '', NULL),
(48, 1, '18043‑000', 'Av. Independência', '', 'Parque Campolim', '15', '', NULL),
(49, 1, '18044‑000', 'Travessa dos Pinheiros', '', 'Jardim Nova Sorocaba', '15', '', NULL),
(50, 1, '18045‑000', 'Rua Santa Catarina', '', 'Jardim São Guilherme', '15', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `cidade_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `codigo_ibge_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`cidade_id`, `estado_id`, `nome`, `codigo_ibge_cidade`) VALUES
(1, 25, 'São Paulo', 3550308),
(2, 25, 'Campinas', 3509502),
(3, 25, 'Santos', 3548500),
(4, 25, 'Ribeirão Preto', 3543402),
(5, 25, 'Sorocaba', 3552205);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE `estados` (
  `estado_id` int(11) NOT NULL,
  `uf` char(2) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `regiao` varchar(50) NOT NULL,
  `codigo_ibge_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estados`
--

INSERT INTO `estados` (`estado_id`, `uf`, `nome`, `regiao`, `codigo_ibge_estado`) VALUES
(1, 'AC', 'Acre', 'Norte', 12),
(2, 'AL', 'Alagoas', 'Nordeste', 27),
(3, 'AP', 'Amapá', 'Norte', 16),
(4, 'AM', 'Amazonas', 'Norte', 13),
(5, 'BA', 'Bahia', 'Nordeste', 29),
(6, 'CE', 'Ceará', 'Nordeste', 23),
(7, 'DF', 'Distrito Federal', 'Centro‑Oeste', 53),
(8, 'ES', 'Espírito Santo', 'Sudeste', 32),
(9, 'GO', 'Goiás', 'Centro‑Oeste', 52),
(10, 'MA', 'Maranhão', 'Nordeste', 21),
(11, 'MT', 'Mato Grosso', 'Centro‑Oeste', 51),
(12, 'MS', 'Mato Grosso do Sul', 'Centro‑Oeste', 50),
(13, 'MG', 'Minas Gerais', 'Sudeste', 31),
(14, 'PA', 'Pará', 'Norte', 15),
(15, 'PB', 'Paraíba', 'Nordeste', 25),
(16, 'PR', 'Paraná', 'Sul', 41),
(17, 'PE', 'Pernambuco', 'Nordeste', 26),
(18, 'PI', 'Piauí', 'Nordeste', 22),
(19, 'RJ', 'Rio de Janeiro', 'Sudeste', 33),
(20, 'RN', 'Rio Grande do Norte', 'Nordeste', 24),
(21, 'RS', 'Rio Grande do Sul', 'Sul', 43),
(22, 'RO', 'Rondônia', 'Norte', 11),
(23, 'RR', 'Roraima', 'Norte', 14),
(24, 'SC', 'Santa Catarina', 'Sul', 42),
(25, 'SP', 'São Paulo', 'Sudeste', 35),
(26, 'SE', 'Sergipe', 'Nordeste', 28),
(27, 'TO', 'Tocantins', 'Norte', 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ceps`
--
ALTER TABLE `ceps`
  ADD PRIMARY KEY (`cep_id`),
  ADD UNIQUE KEY `cep` (`cep`),
  ADD KEY `cidade_id` (`cidade_id`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`cidade_id`),
  ADD UNIQUE KEY `nome` (`nome`,`estado_id`),
  ADD KEY `estado_id` (`estado_id`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`estado_id`),
  ADD UNIQUE KEY `uf` (`uf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ceps`
--
ALTER TABLE `ceps`
  MODIFY `cep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `cidade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `estado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ceps`
--
ALTER TABLE `ceps`
  ADD CONSTRAINT `ceps_ibfk_1` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`cidade_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`estado_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

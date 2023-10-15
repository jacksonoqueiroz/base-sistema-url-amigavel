-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/10/2023 às 00:22
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_controle_fichas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `endereco` varchar(220) NOT NULL,
  `bairro` varchar(220) NOT NULL,
  `telefone` varchar(110) NOT NULL,
  `instrumento` varchar(220) NOT NULL,
  `imagem` varchar(220) DEFAULT 'semfoto.png',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `candidatos`
--

INSERT INTO `candidatos` (`id`, `nome`, `endereco`, `bairro`, `telefone`, `instrumento`, `imagem`, `created`, `modified`) VALUES
(1, 'Jackson de Oliveira Queiroz', 'Rua Porto de Móz,197', 'Vila Silvia', '(11)99999-9999', 'viola', 'semfoto.png', NULL, NULL),
(2, 'Vinicius Santos Queiroz', 'Rua Porto de Móz, 197', 'Vila Silvia', '(11)99999-9999', 'violino', 'semfoto.png', NULL, NULL),
(3, 'Gabriel dos Santos Queiroz', 'Rua Porto de Móz, 197', 'Vila Silvia', '(11)99999-9999', 'cello', 'semfoto.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `imagem` varchar(220) DEFAULT 'semfoto.png',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nome`, `senha`, `imagem`, `created`, `modified`) VALUES
(1, 'jackson.oqueiroz@gmail.com', 'Jackson Queiroz', '$2y$10$ByISY227dvBJW8VJP.bsD.LVWDEQjC2KIwO4NKml8RfL6JOhYJTWi', 'semfoto.png', NULL, NULL),
(2, 'adm@gmail.com', 'Administrador', '$2y$10$0hRf5ImFakMs2NdHAl3IQ.kDCe0AK160eh/n7mdCUFKrlqHobZpsm', 'semfoto.png', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

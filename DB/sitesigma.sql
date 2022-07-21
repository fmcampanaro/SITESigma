-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jul-2022 às 17:25
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitesigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`, `Ativo`) VALUES
(1, 'Capivaras', 1),
(2, 'Sigmas', 1),
(3, 'Calvos', 1),
(9, 'Chads', 1),
(10, 'Classic', 1),
(11, 'Limitados\r\n', 1),
(12, 'Pedra', 1),
(13, 'Cachorros', 1),
(14, 'Gatos', 1),
(15, 'Melancias', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ProdutoID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Descricao` varchar(250) NOT NULL,
  `Imagem` varchar(200) NOT NULL,
  `Preco` float NOT NULL,
  `Categoria` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ProdutoID`, `Nome`, `Descricao`, `Imagem`, `Preco`, `Categoria`, `Ativo`) VALUES
(1, 'Capivara Melancia', 'Uma capivara comendo melancia.', 'capivara_melancia01.jfif', 0.99, 1, 1),
(2, 'Capivara Encarando', 'Uma capivara encarando.', 'capivara_encarando01.jpg', 8.49, 1, 1),
(3, 'Gohan Calvo', 'Gohan sofrendo de Alopecia em estado avançado (irrecuperável).', 'gohan_calvo.jpg', 4.99, 1, 1),
(4, 'Breier (Redcast Edition)', 'Gabriel Breier edição limitada do Redcast.', 'breier_redcast.webp', 499.99, 1, 1),
(5, 'Um siri fazendo barra', 'Um siri fazendo barra.', 'siri_barra.webp', 9.99, 1, 1),
(6, 'A Pedra (Classic)', 'Edição limitada clássica de A Pedra fazendo sua mais conhecida faceta.', 'a_pedra01.jpg', 1999.99, 1, 1),
(7, 'Sigma Picture 01', 'Primeira pictura relatada capturada de um sigma em seu habitat natural.', 'sigma01.webp', 49.99, 1, 1),
(8, 'Gato calvo (calvo)', 'Um gato calvado.', 'gato_calvo.jpg', 24.99, 1, 1),
(9, 'Cachorro calvo (calvo)', 'Um cachorro calvado.', 'cachorro_calvo.jpg', 29.99, 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ProdutoID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ProdutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

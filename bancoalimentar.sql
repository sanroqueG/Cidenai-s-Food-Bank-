-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Nov-2022 às 15:08
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bancoalimentar`
--
CREATE DATABASE IF NOT EXISTS `bancoalimentar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bancoalimentar`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cabaz`
--

DROP TABLE IF EXISTS `cabaz`;
CREATE TABLE `cabaz` (
  `id_cabaz` int(10) NOT NULL,
  `designacao` varchar(20) NOT NULL,
  `id_recetor` int(10) DEFAULT NULL,
  `estafeta` varchar(50) DEFAULT NULL,
  `data_rececao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cabaz`
--

INSERT INTO `cabaz` (`id_cabaz`, `designacao`, `id_recetor`, `estafeta`, `data_rececao`) VALUES
(1, '17.11.2022.1', 10, 'dad', '2022-11-17'),
(2, '17.11.2022.2', 9, 'das', '2022-11-17'),
(3, '17.11.2022.3', 9, 'asd', '2022-11-17'),
(4, '17.11.2022.4', 9, 'dasd', '2022-11-17'),
(5, '17.11.2022.5', 9, 'fsf', '2022-11-17'),
(6, '17.11.2022.6', 9, 'dasd', '2022-11-17'),
(7, '17.11.2022.7', 9, 'dsad', '2022-11-17'),
(8, '17.11.2022.8', 9, 'dsad', '2022-11-17'),
(9, '17.11.2022.9', 9, 'yg', '2022-11-17'),
(10, '18.11.2022.10', 9, 'asdasd', '2022-11-17'),
(11, '18.11.2022.11', 9, 'dasd', '2022-11-17'),
(12, '18.11.2022.12', 9, 'dasd', '2022-11-18'),
(13, '18.11.2022.13', 9, 'dasd', '2022-11-08'),
(14, '18.11.2022.14', 9, 'fsf', '2022-11-17'),
(15, '18.11.2022.15', 9, 'asd', '2022-11-17'),
(16, '18.11.2022.16', 10, 'da', '2022-11-18'),
(17, '18.11.2022.17', 9, 'dsa', '2022-11-17'),
(18, '18.11.2022.18', 9, 'sad', '2022-11-17'),
(19, '18.11.2022.19', 9, 'das', '2022-11-17'),
(20, '18.11.2022.20', NULL, NULL, NULL),
(21, '18.11.2022.21', NULL, NULL, NULL),
(22, '18.11.2022.22', NULL, NULL, NULL),
(23, '18.11.2022.23', NULL, NULL, NULL),
(24, '18.11.2022.24', NULL, NULL, NULL),
(25, '18.11.2022.25', NULL, NULL, NULL),
(26, '18.11.2022.26', NULL, NULL, NULL),
(27, '18.11.2022.27', NULL, NULL, NULL),
(28, '18.11.2022.28', NULL, NULL, NULL),
(29, '18.11.2022.29', NULL, NULL, NULL),
(30, '21.11.2022.30', NULL, NULL, NULL),
(31, '21.11.2022.31', NULL, NULL, NULL),
(32, '24.11.2022.32', NULL, NULL, NULL),
(33, '24.11.2022.33', NULL, NULL, NULL),
(34, '24.11.2022.34', NULL, NULL, NULL),
(35, '24.11.2022.35', NULL, NULL, NULL),
(36, '24.11.2022.36', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cabazproduto`
--

DROP TABLE IF EXISTS `cabazproduto`;
CREATE TABLE `cabazproduto` (
  `id_cabaz` int(10) NOT NULL,
  `id_produto` int(10) NOT NULL,
  `quantidade` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cabazproduto`
--

INSERT INTO `cabazproduto` (`id_cabaz`, `id_produto`, `quantidade`) VALUES
(1, 19, 1),
(2, 17, 1),
(4, 15, 6),
(5, 16, 1),
(6, 17, 324),
(7, 17, 123),
(8, 17, 23),
(9, 16, 5),
(10, 17, 12),
(11, 17, 23),
(12, 17, 324),
(13, 15, 123),
(14, 17, 32),
(15, 19, 2),
(16, 16, 12),
(17, 15, 1),
(18, 15, 34),
(18, 17, 4),
(19, 16, 32),
(20, 15, 1),
(21, 15, 23),
(22, 19, 1),
(23, 15, 13),
(24, 15, 2),
(25, 15, 2),
(26, 15, 23),
(26, 19, 23),
(27, 15, 10),
(27, 19, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoriadadores`
--

DROP TABLE IF EXISTS `categoriadadores`;
CREATE TABLE `categoriadadores` (
  `id_categoria_d` int(10) NOT NULL,
  `designacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoriadadores`
--

INSERT INTO `categoriadadores` (`id_categoria_d`, `designacao`) VALUES
(1, 'Supermercado'),
(2, 'Hipermercadodd'),
(4, 'Café'),
(5, 'Restaurante'),
(22, '11111'),
(23, '2222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL,
  `designacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `designacao`) VALUES
(3, 'Laticínios e Ovos'),
(4, 'Mercearia'),
(5, 'Beleza e Higiene'),
(6, 'Congelados'),
(7, 'Peixaria e Talho'),
(8, 'Frutas e Legumes'),
(9, 'Vinhos e Bebidas'),
(10, 'teste'),
(11, 'teste2'),
(12, '123123123'),
(13, '????????'),
(14, '!!!!!!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadores`
--

DROP TABLE IF EXISTS `dadores`;
CREATE TABLE `dadores` (
  `id_dador` int(10) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_categoria_d` int(10) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `cod_postal` varchar(9) DEFAULT NULL,
  `NIF` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dadores`
--

INSERT INTO `dadores` (`id_dador`, `nome`, `id_categoria_d`, `morada`, `cod_postal`, `NIF`) VALUES
(1, 'Continente', 2, 'Rua da Paz, 2334', '4780-100', '999999999'),
(2, 'Lidl', 2, 'Rua do Continente', '4780-000', '888888888'),
(3, 'Gruta', 1, 'Rua da Feira', '4780-000', '123456789'),
(4, 'Poupadinha', 1, 'Rua dos Bombeiros, 244', '4780-000', '987654321'),
(8, '1111', 23, '123123123', '5000-000', '121312312'),
(9, 'dsf', 5, 'werwr', '1000-000', 'wer');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entradas`
--

DROP TABLE IF EXISTS `entradas`;
CREATE TABLE `entradas` (
  `id_dador` int(10) NOT NULL,
  `data_entrada` date NOT NULL,
  `id_produto` int(10) NOT NULL,
  `quantidade` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entradas`
--

INSERT INTO `entradas` (`id_dador`, `data_entrada`, `id_produto`, `quantidade`) VALUES
(2, '2022-11-17', 16, 1),
(2, '2022-11-18', 17, 25),
(3, '2022-10-01', 19, 1),
(3, '2022-12-13', 25, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

DROP TABLE IF EXISTS `funcoes`;
CREATE TABLE `funcoes` (
  `id_funcao` int(10) NOT NULL,
  `designacao` varchar(50) NOT NULL,
  `Permissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id_funcao`, `designacao`, `Permissao`) VALUES
(1, 'Administrador', 'Administrador'),
(2, 'Coordenador', ''),
(3, 'Armazém', 'Coordenador'),
(4, 'Voluntário', 'Voluntário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

DROP TABLE IF EXISTS `locais`;
CREATE TABLE `locais` (
  `cod_postal` varchar(9) NOT NULL,
  `localidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`cod_postal`, `localidade`) VALUES
('1000-000', 'Lisboa'),
('11111', '11111'),
('2000-000', 'Coimbra'),
('4000-000', 'Porto'),
('4780-000', 'Santo Tirso'),
('4780-100', 'Vila das Aves'),
('500-000', 'teste'),
('5000-000', 'Amarante');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `id_marca` int(10) NOT NULL,
  `designacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`id_marca`, `designacao`) VALUES
(2, 'Continente'),
(3, 'Pingo Doce'),
(4, 'Auchan'),
(5, 'Lidl'),
(6, 'Pescanova'),
(8, 'Milanesa'),
(9, 'Bom Petisco'),
(10, 'Coca Cola'),
(11, 'Boundi'),
(12, 'Delta'),
(13, 'Agros'),
(16, 'Mimosa'),
(17, 'Quinta Jamor'),
(19, 'teste'),
(20, '234234'),
(21, 'teste2'),
(22, 'fwfwefwfe'),
(23, '124313123'),
(24, '!!!!!!!!!'),
(25, 'BIC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `id_produto` int(10) NOT NULL,
  `designacao` varchar(50) NOT NULL,
  `id_marca` int(10) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `designacao`, `id_marca`, `id_categoria`, `stock`) VALUES
(15, 'Óleo de Girassol Puro 100%', 6, 3, -209),
(16, 'Massa Esparguete Médio', 8, 4, 2060),
(17, '6 Ovos', 24, 13, 1439),
(19, 'Café Longo', 12, 4, 1101),
(20, 'Leite', 13, 3, 910),
(21, 'Atum', 6, 4, 1415),
(22, 'teste', 21, 11, 912),
(23, 'sasfaf', 5, 3, 18567),
(25, 'Caneta', 25, 10, 722);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recetores`
--

DROP TABLE IF EXISTS `recetores`;
CREATE TABLE `recetores` (
  `id_recetor` int(10) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `turma` varchar(10) DEFAULT NULL,
  `enc_educacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `recetores`
--

INSERT INTO `recetores` (`id_recetor`, `nome`, `turma`, `enc_educacao`) VALUES
(9, 'Carlos Andrade', 'TGPSI2023', 'José Andrade'),
(10, 'Ana Barbosa', 'TGPSI2023', 'José Barbosa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `turma` varchar(10) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`turma`, `descricao`) VALUES
('TGPSI2023', 'Informática 12º ano'),
('TGPSI2124', 'Informática 11º ano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telemovel` varchar(9) DEFAULT NULL,
  `id_funcao` int(10) DEFAULT NULL,
  `password_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id_user`, `nome`, `email`, `telemovel`, `id_funcao`, `password_user`) VALUES
(2, 'Cristiano Ferreira', 'cferreira@cidenai.edu.pt', '937642442', 2, '123'),
(6, 'Goncalo Machado', 'goncalo91machado@gmail.com', '932452564', 1, '123'),
(7, 'manel', 'zecafonso', '12345', 4, '123'),
(8, 'raquel', 'rabreu@cidenai.edu.pt', '932423423', 1, 'dsa'),
(9, 'José Monteiro', 'josemonteiro@gmail.com', '943234122', 1, 'cidenai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabaz`
--
ALTER TABLE `cabaz`
  ADD PRIMARY KEY (`id_cabaz`),
  ADD KEY `id_recetor` (`id_recetor`);

--
-- Indexes for table `cabazproduto`
--
ALTER TABLE `cabazproduto`
  ADD PRIMARY KEY (`id_cabaz`,`id_produto`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Indexes for table `categoriadadores`
--
ALTER TABLE `categoriadadores`
  ADD PRIMARY KEY (`id_categoria_d`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `dadores`
--
ALTER TABLE `dadores`
  ADD PRIMARY KEY (`id_dador`),
  ADD KEY `id_categoria_d` (`id_categoria_d`),
  ADD KEY `cod_postal` (`cod_postal`);

--
-- Indexes for table `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_dador`,`data_entrada`,`id_produto`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Indexes for table `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id_funcao`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`cod_postal`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `recetores`
--
ALTER TABLE `recetores`
  ADD PRIMARY KEY (`id_recetor`),
  ADD KEY `turma` (`turma`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`turma`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_funcao` (`id_funcao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabaz`
--
ALTER TABLE `cabaz`
  MODIFY `id_cabaz` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categoriadadores`
--
ALTER TABLE `categoriadadores`
  MODIFY `id_categoria_d` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dadores`
--
ALTER TABLE `dadores`
  MODIFY `id_dador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id_funcao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `recetores`
--
ALTER TABLE `recetores`
  MODIFY `id_recetor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cabaz`
--
ALTER TABLE `cabaz`
  ADD CONSTRAINT `cabaz_ibfk_1` FOREIGN KEY (`id_recetor`) REFERENCES `recetores` (`id_recetor`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cabazproduto`
--
ALTER TABLE `cabazproduto`
  ADD CONSTRAINT `cabazproduto_ibfk_1` FOREIGN KEY (`id_cabaz`) REFERENCES `cabaz` (`id_cabaz`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `cabazproduto_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `dadores`
--
ALTER TABLE `dadores`
  ADD CONSTRAINT `dadores_ibfk_1` FOREIGN KEY (`id_categoria_d`) REFERENCES `categoriadadores` (`id_categoria_d`),
  ADD CONSTRAINT `dadores_ibfk_2` FOREIGN KEY (`cod_postal`) REFERENCES `locais` (`cod_postal`);

--
-- Limitadores para a tabela `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`id_dador`) REFERENCES `dadores` (`id_dador`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `entradas_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`),
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Limitadores para a tabela `recetores`
--
ALTER TABLE `recetores`
  ADD CONSTRAINT `recetores_ibfk_1` FOREIGN KEY (`turma`) REFERENCES `turmas` (`turma`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_funcao`) REFERENCES `funcoes` (`id_funcao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

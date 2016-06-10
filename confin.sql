-- phpMyAdmin SQL Dump
-- version 4.5.3.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 29-Mar-2016 às 16:08
-- Versão do servidor: 5.6.28-1
-- PHP Version: 5.6.17-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `confin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(2) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `descricao`) VALUES
(1, 'Alimentação'),
(2, 'Transporte'),
(3, 'Saúde'),
(4, 'Diversão'),
(5, 'Roupa'),
(6, 'Calçado'),
(7, 'Impostos'),
(8, 'Estudos'),
(9, 'Casa'),
(10, 'Diversos'),
(11, 'Telefonia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesa`
--

CREATE TABLE `despesa` (
  `id` int(4) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` decimal(5,2) DEFAULT NULL,
  `quantidade_parcelas` varchar(20) DEFAULT NULL,
  `origem` int(2) NOT NULL,
  `categoria` int(2) NOT NULL,
  `data_despesa` varchar(16) DEFAULT NULL,
  `responsavel` int(2) NOT NULL,
  `periodo_de_pagamento` int(2) NOT NULL,
  `estabelecimento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `despesa`
--

INSERT INTO `despesa` (`id`, `descricao`, `valor`, `quantidade_parcelas`, `origem`, `categoria`, `data_despesa`, `responsavel`, `periodo_de_pagamento`, `estabelecimento`) VALUES
(1, 'Alimentos', 15.00, 'Única', 7, 1, '1437447600', 1, 8, 'Mercadinho Albuquerque'),
(2, 'Balada', 40.00, 'Única', 7, 4, '1437706800', 1, 8, 'Sushi Digital'),
(3, 'Balada', 23.00, 'Única', 7, 4, '1437706800', 1, 8, 'Sushi Digital'),
(4, 'Crédito Telefone', 10.00, 'Única', 7, 11, '1437447600', 1, 8, 'Oi RJ'),
(5, 'Crédito Telefone', 10.00, 'Única', 7, 11, '1439348400', 1, 8, 'Oi RJ'),
(6, 'Kit festa dona neide', 80.00, 'Única', 8, 10, '1438398000', 1, 8, 'Kit Festa'),
(7, 'Ventilador', 9.50, '1 de 10', 8, 9, '1422756000', 1, 1, 'Hiper Tacaruna'),
(8, 'Ventilador', 9.50, '1 de 10', 8, 9, '1422756000', 2, 1, 'Hiper Tacaruna'),
(9, 'Ventilador', 9.50, '2 de 10', 8, 9, '1422756000', 1, 2, 'Hiper Tacaruna'),
(10, 'Ventilador', 9.50, '2 de 10', 8, 9, '1422756000', 2, 2, 'Hiper Tacaruna'),
(11, 'Ventilador', 9.50, '3 de 10', 8, 9, '1422756000', 1, 3, 'Hiper Tacaruna'),
(12, 'Ventilador', 9.50, '3 de 10', 8, 9, '1422756000', 2, 3, 'Hiper Tacaruna'),
(13, 'Ventilador', 9.50, '4 de 10', 8, 9, '1422756000', 1, 4, 'Hiper Tacaruna'),
(14, 'Ventilador', 9.50, '4 de 10', 8, 9, '1422756000', 2, 4, 'Hiper Tacaruna'),
(15, 'Ventilador', 9.50, '5 de 10', 8, 9, '1422756000', 1, 5, 'Hiper Tacaruna'),
(16, 'Ventilador', 9.50, '5 de 10', 8, 9, '1422756000', 2, 5, 'Hiper Tacaruna'),
(17, 'Ventilador', 9.50, '6 de 10', 8, 9, '1422756000', 1, 6, 'Hiper Tacaruna'),
(18, 'Ventilador', 9.50, '6 de 10', 8, 9, '1422756000', 2, 6, 'Hiper Tacaruna'),
(19, 'Ventilador', 9.50, '7 de 10', 8, 9, '1422756000', 1, 7, 'Hiper Tacaruna'),
(20, 'Ventilador', 9.50, '7 de 10', 8, 9, '1422756000', 2, 7, 'Hiper Tacaruna'),
(21, 'Ventilador', 9.50, '8 de 10', 8, 9, '1422756000', 1, 8, 'Hiper Tacaruna'),
(22, 'Ventilador', 9.50, '8 de 10', 8, 9, '1422756000', 2, 8, 'Hiper Tacaruna'),
(23, 'Ventilador', 9.50, '9 de 10', 8, 9, '1422756000', 1, 9, 'Hiper Tacaruna'),
(24, 'Ventilador', 9.50, '9 de 10', 8, 9, '1422756000', 2, 9, 'Hiper Tacaruna'),
(25, 'Ventilador', 9.50, '10 de 10', 8, 9, '1422756000', 1, 10, 'Hiper Tacaruna'),
(26, 'Ventilador', 9.50, '10 de 10', 8, 9, '1422756000', 2, 10, 'Hiper Tacaruna'),
(27, 'Materiais de construção', 23.75, 'Única', 7, 9, '1439434800', 1, 8, 'Caumaxt Paulista'),
(28, 'Materiais de construção', 23.75, 'Única', 7, 9, '1439434800', 2, 8, 'Caumaxt Paulista'),
(29, 'Presente Cris', 29.34, '1 de 3', 7, 10, '1434078000', 1, 7, 'Arte e papel'),
(30, 'Presente Cris', 29.34, '2 de 3', 7, 10, '1434078000', 1, 8, 'Arte e papel'),
(32, 'Percata', 16.98, '1 de 5', 7, 6, '1431745200', 1, 6, 'Figueiras calçados'),
(33, 'Percata', 16.98, '2 de 5', 7, 6, '1431745200', 1, 7, 'Figueiras calçados'),
(34, 'Percata', 16.98, '3 de 5', 7, 6, '1431745200', 1, 8, 'Figueiras calçados'),
(35, 'Sandália', 16.98, '5 de 5', 7, 6, '1431745200', 1, 9, 'Figueiras calçados'),
(37, 'Capa de chuva', 47.50, '1 de 4', 9, 2, '1435201200', 1, 7, 'Moto cruz'),
(38, 'Capa de chuva', 47.50, '2 de 4', 9, 2, '1435201200', 1, 8, 'Moto cruz'),
(41, 'Alimentos', 7.50, 'Única', 7, 1, '1437447600', 1, 8, 'Mercadinho Albuquerque'),
(42, 'Alimentos', 7.50, 'Única', 7, 1, '1437447600', 2, 8, 'Mercadinho Albuquerque'),
(43, 'Materiais de construção', 19.00, 'Única', 7, 9, '1438916400', 1, 8, 'AM Construção'),
(44, 'Materiais de construção', 19.00, 'Única', 7, 9, '1438916400', 2, 8, 'AM Construção'),
(45, 'Utensilios da casa', 26.29, '1 de 5', 13, 9, '1438398000', 1, 8, 'Ferreira Costa'),
(46, 'Utensilios da casa', 26.29, '1 de 5', 13, 9, '1438398000', 2, 8, 'Ferreira Costa'),
(47, 'Utensilios da casa', 26.29, '2 de 5', 13, 9, '1438398000', 1, 9, 'Ferreira Costa'),
(48, 'Utensilios da casa', 26.29, '2 de 5', 13, 9, '1438398000', 2, 9, 'Ferreira Costa'),
(49, 'Utensilios da casa', 26.29, '3 de 5', 13, 9, '1438398000', 1, 10, 'Ferreira Costa'),
(50, 'Utensilios da casa', 26.29, '3 de 5', 13, 9, '1438398000', 2, 10, 'Ferreira Costa'),
(51, 'Utensilios da casa', 26.29, '4 de 5', 13, 9, '1438398000', 1, 11, 'Ferreira Costa'),
(52, 'Utensilios da casa', 26.29, '4 de 5', 13, 9, '1438398000', 2, 11, 'Ferreira Costa'),
(53, 'Utensilios da casa', 26.29, '5 de 5', 13, 9, '1438398000', 1, 12, 'Ferreira Costa'),
(54, 'Utensilios da casa', 26.29, '5 de 5', 13, 9, '1438398000', 2, 12, 'Ferreira Costa'),
(55, 'Rémedios', 7.99, 'Única', 8, 3, '1438398000', 2, 8, 'Farmácia'),
(56, 'Casaco', 7.99, '1 de 4', 8, 5, '1435460400', 2, 7, 'Lojas americanas'),
(57, 'Casaco', 7.99, '2 de 4', 8, 5, '1435460400', 2, 8, 'Lojas americanas'),
(58, 'Casaco', 17.51, '4 de 4', 8, 5, '1435460400', 2, 9, 'Lojas americanas'),
(60, 'Lanche', 3.25, 'Única', 8, 4, '1437793200', 1, 8, 'Lanche nova descoberta'),
(61, 'Lanche', 3.25, 'Única', 8, 4, '1437793200', 2, 8, 'Lanche nova descoberta'),
(62, 'Capa de chuva', 47.00, '1 de 4', 9, 2, '1969', 1, 7, 'Moto Cruz'),
(63, 'Capa de chuva', 47.00, '2 de 4', 9, 2, '1969', 1, 8, 'Moto Cruz'),
(64, 'Capa de chuva', 47.75, '4 de 4', 9, 2, '1969', 1, 9, 'Moto Cruz'),
(66, 'Pneu', 24.50, '1 de 4', 9, 2, '1969', 1, 7, 'PitStop motos'),
(67, 'Pneu', 24.50, '1 de 4', 9, 2, '1969', 2, 7, 'PitStop motos'),
(68, 'Pneu', 24.50, '2 de 4', 9, 2, '1969', 1, 8, 'PitStop motos'),
(69, 'Pneu', 24.50, '2 de 4', 9, 2, '1969', 2, 8, 'PitStop motos'),
(70, 'Pneu', 29.85, '4 de 4', 9, 2, '1969', 1, 9, 'PitStop motos'),
(71, 'Pneu', 19.90, '4 de 4', 9, 2, '1969', 2, 9, 'PitStop motos'),
(74, 'Xbox 360', 49.00, '3 de 12', 9, 4, '1417175738', 1, 2, 'Lojas americanas'),
(75, 'Xbox 360', 49.00, '4 de 12', 9, 4, '1417175738', 1, 3, 'Lojas americanas'),
(76, 'Xbox 360', 49.00, '5 de 12', 9, 4, '1417175738', 1, 4, 'Lojas americanas'),
(77, 'Xbox 360', 49.00, '6 de 12', 9, 4, '1417175738', 1, 5, 'Lojas americanas'),
(78, 'Xbox 360', 49.00, '7 de 12', 9, 4, '1417175738', 1, 6, 'Lojas americanas'),
(79, 'Xbox 360', 49.00, '8 de 12', 9, 4, '1417175738', 1, 7, 'Lojas americanas'),
(80, 'Xbox 360', 49.00, '9 de 12', 9, 4, '1417175738', 1, 8, 'Lojas americanas'),
(81, 'Xbox 360', 49.00, '10 de 12', 9, 4, '1417175738', 1, 9, 'Lojas americanas'),
(82, 'Xbox 360', 49.00, '11 de 12', 9, 4, '1417175738', 1, 10, 'Lojas americanas'),
(83, 'Xbox 360', 49.00, '12 de 12', 9, 4, '1417175738', 1, 11, 'Lojas americanas'),
(104, 'Guarda roupas', 68.00, '2 de 10', 9, 9, '1969', 1, 9, 'Lojas Santa Maria'),
(105, 'Guarda roupas', 68.00, '2 de 10', 9, 9, '1969', 2, 9, 'Lojas Santa Maria'),
(106, 'Guarda roupas', 68.00, '3 de 10', 9, 9, '1969', 1, 10, 'Lojas Santa Maria'),
(107, 'Guarda roupas', 68.00, '3 de 10', 9, 9, '1969', 2, 10, 'Lojas Santa Maria'),
(108, 'Guarda roupas', 68.00, '4 de 10', 9, 9, '1969', 1, 11, 'Lojas Santa Maria'),
(109, 'Guarda roupas', 68.00, '4 de 10', 9, 9, '1969', 2, 11, 'Lojas Santa Maria'),
(110, 'Guarda roupas', 68.00, '5 de 10', 9, 9, '1969', 1, 12, 'Lojas Santa Maria'),
(111, 'Guarda roupas', 68.00, '5 de 10', 9, 9, '1969', 2, 12, 'Lojas Santa Maria'),
(112, 'Guarda roupas', 68.00, '6 de 10', 9, 9, '1969', 1, 13, 'Lojas Santa Maria'),
(113, 'Guarda roupas', 68.00, '6 de 10', 9, 9, '1969', 2, 13, 'Lojas Santa Maria'),
(114, 'Guarda roupas', 68.00, '7 de 10', 9, 9, '1969', 1, 14, 'Lojas Santa Maria'),
(115, 'Guarda roupas', 68.00, '7 de 10', 9, 9, '1969', 2, 14, 'Lojas Santa Maria'),
(116, 'Guarda roupas', 68.00, '8 de 10', 9, 9, '1969', 1, 15, 'Lojas Santa Maria'),
(117, 'Guarda roupas', 68.00, '8 de 10', 9, 9, '1969', 2, 15, 'Lojas Santa Maria'),
(118, 'Guarda roupas', 68.00, '9 de 10', 9, 9, '1969', 1, 16, 'Lojas Santa Maria'),
(119, 'Guarda roupas', 68.00, '9 de 10', 9, 9, '1969', 2, 16, 'Lojas Santa Maria'),
(120, 'Guarda roupas', 68.00, '10 de 10', 9, 9, '1969', 1, 17, 'Lojas Santa Maria'),
(121, 'Guarda roupas', 68.00, '10 de 10', 9, 9, '1969', 2, 17, 'Lojas Santa Maria'),
(124, 'Pastilhas de freio', 28.20, 'Única', 7, 2, '2015', 1, 9, 'Jardim Moto Peças'),
(125, 'Pastilhas de freio', 18.80, 'Única', 7, 2, '2015', 2, 9, 'Jardim Moto Peças'),
(126, 'Tração ', 35.81, '1 de 3', 9, 2, '1969', 1, 9, 'Moto Cruz'),
(127, 'Tração ', 23.87, '1 de 3', 9, 2, '1969', 2, 9, 'Moto Cruz'),
(128, 'Tração ', 35.81, '2 de 3', 9, 2, '1969', 1, 10, 'Moto Cruz'),
(129, 'Tração ', 23.87, '2 de 3', 9, 2, '1969', 2, 10, 'Moto Cruz'),
(130, 'Tração ', 35.81, '3 de 3', 9, 2, '1969', 1, 11, 'Moto Cruz'),
(131, 'Tração ', 23.87, '3 de 3', 9, 2, '1969', 2, 11, 'Moto Cruz'),
(132, 'Telefone Cris', 28.54, '1 de 10', 9, 11, '1969', 1, 9, 'Mi COM B2W'),
(133, 'Telefone Cris', 28.54, '1 de 10', 9, 11, '1969', 3, 9, 'Mi COM B2W'),
(134, 'Telefone Cris', 28.54, '2 de 10', 9, 11, '1969', 1, 10, 'Mi COM B2W'),
(135, 'Telefone Cris', 28.54, '2 de 10', 9, 11, '1969', 3, 10, 'Mi COM B2W'),
(136, 'Telefone Cris', 28.54, '3 de 10', 9, 11, '1969', 1, 11, 'Mi COM B2W'),
(137, 'Telefone Cris', 28.54, '3 de 10', 9, 11, '1969', 3, 11, 'Mi COM B2W'),
(138, 'Telefone Cris', 28.54, '4 de 10', 9, 11, '1969', 1, 12, 'Mi COM B2W'),
(139, 'Telefone Cris', 28.54, '4 de 10', 9, 11, '1969', 3, 12, 'Mi COM B2W'),
(140, 'Telefone Cris', 28.54, '5 de 10', 9, 11, '1969', 1, 13, 'Mi COM B2W'),
(141, 'Telefone Cris', 28.54, '5 de 10', 9, 11, '1969', 3, 13, 'Mi COM B2W'),
(142, 'Telefone Cris', 28.54, '6 de 10', 9, 11, '1969', 1, 14, 'Mi COM B2W'),
(143, 'Telefone Cris', 28.54, '6 de 10', 9, 11, '1969', 3, 14, 'Mi COM B2W'),
(144, 'Telefone Cris', 28.54, '7 de 10', 9, 11, '1969', 1, 15, 'Mi COM B2W'),
(145, 'Telefone Cris', 28.54, '7 de 10', 9, 11, '1969', 3, 15, 'Mi COM B2W'),
(146, 'Telefone Cris', 28.54, '8 de 10', 9, 11, '1969', 1, 16, 'Mi COM B2W'),
(147, 'Telefone Cris', 28.54, '8 de 10', 9, 11, '1969', 3, 16, 'Mi COM B2W'),
(148, 'Telefone Cris', 28.54, '9 de 10', 9, 11, '1969', 1, 17, 'Mi COM B2W'),
(149, 'Telefone Cris', 28.54, '9 de 10', 9, 11, '1969', 3, 17, 'Mi COM B2W'),
(150, 'Telefone Cris', 28.54, '10 de 10', 9, 11, '1969', 1, 18, 'Mi COM B2W'),
(151, 'Telefone Cris', 28.54, '10 de 10', 9, 11, '1969', 3, 18, 'Mi COM B2W'),
(152, 'Camara de AR', 21.00, 'Única', 7, 2, '1969', 1, 9, 'AGIL MOTOS RECIFE'),
(153, 'Camara de AR', 14.00, 'Única', 7, 2, '1969', 2, 9, 'AGIL MOTOS RECIFE'),
(154, 'Óleo', 23.88, 'Única', 7, 2, '1969', 1, 9, 'MOTOVIA RECIFE'),
(155, 'Óleo', 15.92, 'Única', 7, 2, '1969', 2, 9, 'MOTOVIA RECIFE'),
(156, 'Combustível', 9.00, 'Única', 7, 2, '1969', 1, 9, 'POSTO SAO SEBASTIAO RECIFE'),
(157, 'Combustível', 6.00, 'Única', 7, 2, '1969', 2, 9, 'POSTO SAO SEBASTIAO RECIFE'),
(158, 'Lanches', 6.31, 'Única', 7, 1, '1969', 1, 9, 'HIPER KARLA PAULISTA'),
(159, 'Lanches', 6.31, 'Única', 7, 1, '1969', 2, 9, 'HIPER KARLA PAULISTA'),
(160, 'Combustível', 20.62, 'Única', 7, 2, '1969', 1, 9, 'WG2 COMBUSTIVEIS PAULISTA'),
(161, 'Combustível', 13.74, 'Única', 7, 2, '1969', 2, 9, 'WG2 COMBUSTIVEIS PAULISTA'),
(162, 'Crédito telefone', 5.00, 'Única', 7, 11, '1969', 1, 9, 'RECARGA OI RIO DE JANEIRO'),
(163, 'Crédito telefone', 5.00, 'Única', 7, 11, '1969', 2, 9, 'RECARGA OI RIO DE JANEIRO'),
(164, 'Combustível', 28.01, 'Única', 7, 2, '1969', 1, 9, 'WG2 COMBUSTIVEIS PAULISTA'),
(165, 'Combustível', 18.67, 'Única', 7, 2, '1969', 2, 9, 'WG2 COMBUSTIVEIS PAULISTA'),
(170, 'Capacete', 32.50, '3 de 4', 7, 10, '1969', 1, 9, 'Moto Cruz'),
(171, 'Capacete', 32.50, '3 de 4', 7, 10, '1969', 1, 10, 'Moto Cruz'),
(172, 'Buzina', 21.97, '2 de 3', 7, 2, '1969', 1, 9, 'MOTO CRUZ PARC'),
(173, 'Buzina', 14.65, '2 de 3', 7, 2, '1969', 2, 9, 'MOTO CRUZ PARC'),
(174, 'Buzina', 21.97, '3 de 3', 7, 2, '1969', 1, 10, 'MOTO CRUZ PARC'),
(175, 'Buzina', 14.65, '3 de 3', 7, 2, '1969', 2, 10, 'MOTO CRUZ PARC'),
(176, 'Capacete', 32.50, '4 de 4', 7, 10, '1969', 1, 11, 'Moto Cruz'),
(177, 'Combustível', 24.88, 'Única', 7, 2, '1969', 1, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(178, 'Combustível', 16.58, 'Única', 7, 2, '1969', 2, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(179, 'Combustível', 21.60, 'Única', 7, 2, '1969', 1, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(180, 'Combustível', 14.40, 'Única', 7, 2, '1969', 2, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(181, 'Balada', 19.21, 'Única', 7, 4, '1969', 1, 10, 'Caldinho do dogão Olinda'),
(182, 'Balada', 19.21, 'Única', 7, 4, '1969', 2, 10, 'Caldinho do dogão Olinda'),
(183, 'Comida', 25.35, 'Única', 7, 1, '1969', 1, 10, 'Tayang'),
(184, 'Comida', 25.35, 'Única', 7, 1, '1969', 2, 10, 'Tayang'),
(185, 'Combustível', 21.00, 'Única', 7, 2, '1969', 1, 10, 'Posto Recife'),
(186, 'Combustível', 14.00, 'Única', 7, 2, '1969', 2, 10, 'Posto Recife'),
(187, 'Combustível', 26.08, 'Única', 7, 2, '1969', 1, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(188, 'Combustível', 17.38, 'Única', 7, 2, '1969', 2, 10, 'WG2 COMBUSTIVEIS PAULISTA'),
(189, 'Crédito telefone', 20.00, 'Única', 7, 11, '1969', 1, 10, 'RECARGA OI RIO DE JANEIRO'),
(190, 'Conta de energia', 22.59, 'Única', 11, 9, '2015', 1, 9, 'Celpe'),
(191, 'Conta de energia', 22.59, 'Única', 11, 9, '2015', 2, 9, 'Celpe'),
(193, 'Celular de mãe', 34.80, '1 de 10', 10, 11, '1969', 1, 2, 'Eletroshop '),
(194, 'Celular de mãe', 34.80, '2 de 10', 10, 11, '1969', 1, 3, 'Eletroshop '),
(195, 'Celular de mãe', 34.80, '3 de 10', 10, 11, '1969', 1, 4, 'Eletroshop '),
(196, 'Celular de mãe', 34.80, '4 de 10', 10, 11, '1969', 1, 5, 'Eletroshop '),
(197, 'Celular de mãe', 34.80, '5 de 10', 10, 11, '1969', 1, 6, 'Eletroshop '),
(198, 'Celular de mãe', 34.80, '6 de 10', 10, 11, '1969', 1, 7, 'Eletroshop '),
(199, 'Celular de mãe', 34.80, '7 de 10', 10, 11, '1969', 1, 8, 'Eletroshop '),
(200, 'Celular de mãe', 34.80, '8 de 10', 10, 11, '1969', 1, 9, 'Eletroshop '),
(201, 'Celular de mãe', 34.80, '9 de 10', 10, 11, '1969', 1, 10, 'Eletroshop '),
(202, 'Celular de mãe', 34.80, '10 de 10', 10, 11, '1969', 1, 11, 'Eletroshop '),
(203, 'Besteira Cris :D', 11.28, 'Única', 10, 1, '1969', 2, 9, 'BP PARQUE AMORIM'),
(204, 'Alimentos', 33.47, 'Única', 10, 1, '1969', 1, 9, 'VAREJAO SANTANA'),
(205, 'Alimentos', 33.47, 'Única', 10, 1, '1969', 2, 9, 'VAREJAO SANTANA'),
(206, 'lanches', 14.50, 'Única', 10, 1, '1969', 1, 9, 'CEARA LANCHES'),
(207, 'lanches', 14.50, 'Única', 10, 1, '1969', 2, 9, 'CEARA LANCHES'),
(208, 'Utensilios domesticos', 8.00, 'Única', 10, 9, '1969', 1, 9, 'Tem Tem material de construção'),
(209, 'Utensilios domesticos', 8.00, 'Única', 10, 9, '1969', 2, 9, 'Tem Tem material de construção'),
(210, 'Remédios', 16.14, 'Única', 13, 3, '1969', 1, 9, 'Farmacia guararapes'),
(211, 'Remédios', 16.14, 'Única', 13, 3, '1969', 2, 9, 'Farmacia guararapes'),
(212, 'Roupas', 51.34, 'Única', 13, 5, '1969', 2, 9, 'Les Chemis'),
(213, 'Celular de cris', 84.90, '6 de 10', 8, 11, '1969', 2, 9, 'Eletroshop '),
(214, 'Celular de cris', 84.90, '7 de 10', 8, 11, '1969', 2, 10, 'Eletroshop '),
(215, 'Celular de cris', 84.90, '8 de 10', 8, 11, '1969', 2, 11, 'Eletroshop '),
(216, 'Celular de cris', 84.90, '9 de 10', 8, 11, '1969', 2, 12, 'Eletroshop '),
(217, 'Celular de cris', 84.90, '10 de 10', 8, 11, '1969', 2, 13, 'Eletroshop '),
(218, 'Prateleiras da conzinha', 13.82, '1 de 2', 8, 9, '1969', 1, 8, 'Atacado dos presentes'),
(219, 'Prateleiras da conzinha', 13.82, '1 de 2', 8, 9, '1969', 2, 8, 'Atacado dos presentes'),
(220, 'Prateleiras da conzinha', 13.82, '2 de 2', 8, 9, '1969', 1, 9, 'Atacado dos presentes'),
(221, 'Prateleiras da cozinha', 13.82, '2 de 2', 8, 9, '1969', 2, 9, 'Atacado dos presentes'),
(222, 'Sapatilha', 25.00, '1 de 2', 8, 5, '1969', 2, 8, 'Di santinni'),
(223, 'Sapatilha', 25.00, '2 de 2', 8, 5, '1969', 2, 9, 'Di santinni'),
(224, 'Sobrancelhas', 25.00, 'Única', 8, 10, '1969', 2, 9, 'Paula Myrella m da sil'),
(225, 'Presente de Duda', 19.75, '1 de 2', 8, 10, '1969', 1, 9, 'MAGASIN RODRIGUES'),
(226, 'Presente de Duda', 19.75, '2 de 2', 8, 10, '1969', 1, 10, 'MAGASIN RODRIGUES'),
(227, 'Presente de Duda', 19.75, '1 de 2', 8, 10, '1969', 1, 9, 'MAGASIN RODRIGUES'),
(228, 'Presente de Duda', 19.75, '2 de 2', 8, 10, '1969', 1, 10, 'MAGASIN RODRIGUES'),
(229, 'Utensilios domesticos', 6.80, 'Única', 8, 9, '1969', 1, 9, 'SANTANA VARIEDADES'),
(230, 'Utensilios domesticos', 6.80, 'Única', 8, 9, '1969', 2, 9, 'SANTANA VARIEDADES'),
(231, 'Utensilios domesticos', 7.70, 'Única', 8, 9, '1969', 1, 9, 'VAREJAO SANTANA'),
(232, 'Utensilios domesticos', 7.70, 'Única', 8, 9, '1969', 2, 9, 'VAREJAO SANTANA'),
(233, 'Utensilios domesticos', 10.73, 'Única', 8, 9, '1969', 1, 9, 'SHOPPING DO REAL'),
(234, 'Utensilios domesticos', 10.73, 'Única', 8, 9, '1969', 2, 9, 'SHOPPING DO REAL'),
(235, 'Cinto', 11.00, 'Única', 8, 5, '1969', 2, 9, 'CAROLINA PRESENTES'),
(236, 'Lanche', 12.00, 'Única', 8, 1, '1969', 2, 9, 'CALCADA DO SABOR'),
(237, 'Conta de energia do condominio', 5.36, 'Única', 11, 9, '2015', 1, 10, 'Celpe'),
(238, 'Conta de energia do condominio', 5.36, 'Única', 11, 9, '2015', 2, 10, 'Celpe'),
(239, 'Conta de energia', 25.65, 'Única', 11, 9, '2015', 1, 10, 'Celpe'),
(240, 'Conta de energia', 25.65, 'Única', 11, 9, '2015', 2, 10, 'Celpe'),
(241, 'Lanche', 18.00, 'Única', 7, 1, '2015', 1, 10, 'Subway'),
(242, 'Ingresso', 31.36, '1 de 2', 9, 8, '2015', 1, 10, 'Pagseguro'),
(243, 'Ingresso', 31.36, '2 de 2', 9, 8, '2015', 1, 11, 'Pagseguro'),
(245, 'Combustível', 28.88, 'Única', 9, 2, '1969', 1, 10, 'InvestGas'),
(246, 'Combustível', 19.25, 'Única', 9, 2, '1969', 2, 10, 'InvestGas'),
(247, 'Remédios', 11.30, 'Única', 8, 3, '2015', 1, 10, 'Drogaria são paulo'),
(248, 'Remédios', 11.30, 'Única', 8, 3, '2015', 2, 10, 'Drogaria são paulo'),
(249, 'Combustível', 27.17, 'Única', 8, 2, '2015', 1, 10, 'WG2 COMBUSTIVEIS'),
(250, 'Combustível', 18.12, 'Única', 8, 2, '2015', 2, 10, 'WG2 COMBUSTIVEIS'),
(251, 'Lanches', 5.00, 'Única', 8, 1, '1969', 1, 10, 'LANCHONETE MATA FOME'),
(252, 'Lanches', 5.00, 'Única', 8, 1, '1969', 2, 10, 'LANCHONETE MATA FOME'),
(253, 'Lanches', 3.99, 'Única', 8, 10, '1969', 1, 10, 'LOJAS AMERICANAS SA 54'),
(254, 'Lanches', 3.99, 'Única', 8, 10, '1969', 2, 10, 'LOJAS AMERICANAS SA 54'),
(255, 'Lanches', 2.49, 'Única', 8, 10, '1969', 1, 10, 'LOJAS AMERICANAS SA 54'),
(256, 'Lanches', 2.49, 'Única', 8, 10, '1969', 2, 10, 'LOJAS AMERICANAS SA 54'),
(257, 'Combustível', 21.08, 'Única', 8, 2, '1969', 1, 10, 'POSTO SAO SEBASTIAO RECIFE'),
(258, 'Combustível', 14.06, 'Única', 8, 2, '1969', 2, 10, 'POSTO SAO SEBASTIAO RECIFE'),
(259, 'Revisão da moto', 33.34, '1 de 3', 8, 2, '1969', 2, 10, 'JARDIM MOTO PECAS 01/03'),
(260, 'Revisão da moto', 33.34, '2 de 3', 8, 2, '1969', 2, 11, 'JARDIM MOTO PECAS 01/03'),
(261, 'Revisão da moto', 33.34, '3 de 3', 8, 2, '1969', 2, 12, 'JARDIM MOTO PECAS 01/03'),
(262, 'Remédios', 14.05, 'Única', 8, 3, '1969', 1, 10, 'DROGARIA SAO PAULO SA'),
(263, 'Remédios', 14.05, 'Única', 8, 3, '1969', 2, 10, 'DROGARIA SAO PAULO SA'),
(264, 'Combustível', 29.20, 'Única', 8, 2, '1969', 1, 10, 'POSTO CDU'),
(265, 'Combustível', 19.47, 'Única', 8, 2, '1969', 2, 10, 'POSTO CDU'),
(266, 'Lanche', 8.00, 'Única', 8, 4, '1969', 2, 10, 'CEARA LANCHES'),
(267, 'Lanche', 10.00, 'Única', 8, 10, '1969', 1, 10, 'LUK ALIMENTOS LTDA'),
(269, 'Almoço', 14.00, 'Única', 8, 10, '1969', 1, 10, 'BUFFALO GRILL'),
(270, 'Almoço', 14.00, 'Única', 8, 10, '1969', 2, 10, 'BUFFALO GRILL'),
(271, 'Sorvete', 8.50, 'Única', 8, 1, '2015', 1, 10, 'Dessert Comercio'),
(272, 'Sorvete', 8.50, 'Única', 8, 1, '2015', 2, 10, 'Dessert Comercio'),
(273, 'Conta de energia', 26.82, 'Única', 11, 9, '2015', 1, 11, 'Celpe'),
(274, 'Conta de energia', 26.82, 'Única', 11, 9, '2015', 2, 11, 'Celpe'),
(275, 'Conta de energia do condominio', 5.36, 'Única', 11, 9, '2015', 1, 11, 'Celpe'),
(276, 'Conta de energia do condominio', 5.36, 'Única', 11, 9, '2015', 2, 11, 'Celpe'),
(277, 'Combustível', 28.25, 'Única', 8, 2, '2015', 1, 11, 'POSTO SAO SEBASTIAO RECIFE'),
(278, 'Combustível', 18.84, 'Única', 8, 2, '2015', 2, 11, 'POSTO SAO SEBASTIAO RECIFE'),
(279, 'Comida', 20.59, 'Única', 8, 1, '2015', 1, 11, 'Rainha da várzea'),
(280, 'Combustível', 26.13, 'Única', 8, 2, '1969', 1, 11, 'POSTO SAO SEBASTIAO RECIFE'),
(281, 'Combustível', 17.42, 'Única', 8, 2, '1969', 2, 11, 'POSTO SAO SEBASTIAO RECIFE'),
(282, 'Pneu + Camara de AR', 41.00, '1 de 3', 8, 2, '1969', 1, 11, 'Motonorte'),
(283, 'Pneu + Camara de AR', 27.34, '1 de 3', 8, 2, '1969', 2, 11, 'Motonorte'),
(284, 'Pneu + Camara de AR', 41.00, '2 de 3', 8, 2, '1969', 1, 12, 'Motonorte'),
(285, 'Pneu + Camara de AR', 27.34, '2 de 3', 8, 2, '1969', 2, 12, 'Motonorte'),
(286, 'Pneu + Camara de AR', 41.00, '3 de 3', 8, 2, '1969', 1, 13, 'Motonorte'),
(287, 'Pneu + Camara de AR', 27.34, '3 de 3', 8, 2, '1969', 2, 13, 'Motonorte'),
(288, 'Combustível', 31.86, 'Única', 8, 2, '1969', 1, 11, 'WG2 COMBUSTIVEIS'),
(289, 'Combustível', 21.24, 'Única', 8, 2, '1969', 2, 11, 'WG2 COMBUSTIVEIS'),
(290, 'Uniforme', 60.00, '1 de 2', 8, 5, '1969', 1, 11, 'Racker coldres'),
(291, 'Uniforme', 60.00, '2 de 2', 8, 5, '1969', 1, 12, 'Racker coldres'),
(292, 'Alimentos', 17.79, 'Única', 8, 1, '1969', 1, 11, 'HIPER KARLA PAULISTA'),
(293, 'Combustível', 21.64, 'Única', 8, 2, '1969', 1, 11, 'WG2 COMBUSTIVEIS'),
(294, 'Combustível', 14.42, 'Única', 8, 2, '1969', 2, 11, 'WG2 COMBUSTIVEIS'),
(295, 'Lanches', 38.35, 'Única', 8, 1, '1969', 1, 11, 'Laça burger'),
(296, 'Cursos Cesar', 21.83, '1 de 5', 8, 8, '1969', 1, 11, 'Pagseguro'),
(297, 'Cursos Cesar', 21.83, '2 de 5', 8, 8, '1969', 1, 12, 'Pagseguro'),
(298, 'Cursos Cesar', 21.83, '3 de 5', 8, 8, '1969', 1, 13, 'Pagseguro'),
(299, 'Cursos Cesar', 21.83, '4 de 5', 8, 8, '1969', 1, 14, 'Pagseguro'),
(300, 'Cursos Cesar', 21.83, '5 de 5', 8, 8, '1969', 1, 15, 'Pagseguro'),
(301, 'Alimentos', 34.34, 'Única', 8, 1, '1969', 1, 11, 'BP JANGA'),
(302, 'Alimentos', 34.34, 'Única', 8, 1, '1969', 2, 11, 'BP JANGA'),
(303, 'Rémedios', 13.81, 'Única', 10, 3, '1969', 1, 11, 'DROGARIA SAO PAULO SA'),
(304, 'Rémedios', 13.81, 'Única', 10, 3, '1969', 2, 11, 'DROGARIA SAO PAULO SA'),
(305, 'Cabelo', 60.00, 'Única', 10, 10, '2015', 2, 11, 'Salão Tiane LIns'),
(306, 'Almoço', 27.80, 'Única', 13, 1, '2015', 2, 11, 'Esquina da picanha'),
(307, 'Curso Ingels', 99.99, 'Única', 13, 8, '2015', 2, 11, 'FBV'),
(308, 'Crédito telefone', 12.00, 'Única', 13, 11, '2015', 2, 11, 'RECARGA OI RIO DE JANEIRO'),
(309, 'Camisas Cris', 51.33, 'Única', 13, 5, '1969', 2, 11, 'Les Chemis'),
(310, 'Pizza', 12.62, 'Única', 9, 1, '1969', 1, 11, 'Tacho Restaurante'),
(311, 'Pizza', 12.62, 'Única', 9, 1, '1969', 2, 11, 'Tacho Restaurante'),
(312, 'Conta de agua', 16.85, 'Única', 11, 9, '1969', 1, 11, 'Compesa'),
(313, 'Conta de agua', 16.85, 'Única', 11, 9, '1969', 2, 11, 'Compesa'),
(314, 'Conta de agua mes anterior', 17.16, 'Única', 11, 9, '2015', 1, 11, 'Compesa'),
(315, 'Conta de agua mes anterior', 17.16, 'Única', 11, 9, '2015', 2, 11, 'Compesa'),
(316, 'Laptop', 117.50, '1 de 12', 9, 8, '1969', 1, 12, 'Americanas'),
(317, 'Laptop', 117.50, '2 de 12', 9, 8, '1969', 1, 13, 'Americanas'),
(318, 'Laptop', 117.50, '3 de 12', 9, 8, '1969', 1, 14, 'Americanas'),
(319, 'Laptop', 117.50, '4 de 12', 9, 8, '1969', 1, 15, 'Americanas'),
(320, 'Laptop', 117.50, '5 de 12', 9, 8, '1969', 1, 16, 'Americanas'),
(321, 'Laptop', 117.50, '6 de 12', 9, 8, '1969', 1, 17, 'Americanas'),
(322, 'Laptop', 117.50, '7 de 12', 9, 8, '1969', 1, 18, 'Americanas'),
(323, 'Laptop', 117.50, '8 de 12', 9, 8, '1969', 1, 19, 'Americanas'),
(324, 'Laptop', 117.50, '9 de 12', 9, 8, '1969', 1, 20, 'Americanas'),
(325, 'Laptop', 117.50, '10 de 12', 9, 8, '1969', 1, 21, 'Americanas'),
(326, 'Laptop', 117.50, '11 de 12', 9, 8, '1969', 1, 22, 'Americanas'),
(327, 'Laptop', 117.50, '12 de 12', 9, 8, '1969', 1, 23, 'Americanas'),
(328, 'Roupas', 58.65, '1 de 4', 8, 5, '1969', 1, 12, 'TNG Comercio'),
(329, 'Roupas', 58.65, '2 de 4', 8, 5, '1969', 1, 13, 'TNG Comercio'),
(330, 'Roupas', 58.65, '3 de 4', 8, 5, '1969', 1, 14, 'TNG Comercio'),
(331, 'Roupas', 58.65, '4 de 4', 8, 5, '1969', 1, 15, 'TNG Comercio'),
(332, 'Conta de energia', 30.25, 'Única', 11, 9, '2016', 1, 12, 'Celpe'),
(333, 'Conta de energia', 30.25, 'Única', 11, 9, '2016', 2, 12, 'Celpe'),
(334, 'Combustível', 23.17, 'Única', 8, 2, '2015', 1, 12, 'INVESTGAS'),
(335, 'Combustível', 15.44, 'Única', 8, 2, '2015', 2, 12, 'INVESTGAS'),
(336, 'Pastilha de Freio + Oleo', 38.00, 'Única', 8, 2, '1969', 2, 12, 'JARDIM MOTO PECAS'),
(337, 'Combustível', 25.51, 'Única', 8, 2, '1969', 1, 12, '­ WG2 COMBUSTIVEIS'),
(338, 'Combustível', 17.00, 'Única', 8, 2, '1969', 2, 12, '­ WG2 COMBUSTIVEIS'),
(339, 'Combustível', 24.40, 'Única', 8, 2, '1969', 1, 12, 'WG2 COMBUSTIVEIS'),
(340, 'Combustível', 16.26, 'Única', 8, 2, '1969', 2, 12, 'WG2 COMBUSTIVEIS'),
(341, 'Combustível', 27.68, 'Única', 8, 2, '1969', 1, 12, 'WG2 COMBUSTIVEIS'),
(342, 'Combustível', 18.45, 'Única', 8, 2, '1969', 2, 12, 'WG2 COMBUSTIVEIS'),
(347, 'Lanche Nicole', 25.95, 'Única', 8, 1, '1969', 1, 12, 'SUBWAY NOTH WAY'),
(348, 'Presentes', 36.47, '1 de 2', 8, 10, '1969', 1, 12, 'LE BISCUIT'),
(349, 'Presentes', 36.47, '2 de 2', 8, 10, '1969', 1, 13, 'LE BISCUIT'),
(350, 'Roupas Nicole', 26.67, '1 de 3', 8, 5, '1969', 1, 12, 'C&A'),
(351, 'Roupas Nicole', 26.67, '2 de 3', 8, 5, '1969', 1, 13, 'C&A'),
(352, 'Roupas Nicole', 26.67, '3 de 3', 8, 5, '1969', 1, 14, 'C&A'),
(353, 'Combustível', 23.39, 'Única', 8, 2, '1969', 1, 12, 'INVESTGAS'),
(354, 'Combustível', 15.59, 'Única', 8, 2, '1969', 2, 12, 'INVESTGAS'),
(355, 'Sorvete', 28.46, 'Única', 8, 1, '1969', 1, 12, 'BP JANGA '),
(356, 'Camara de ar + Vacina de pneu', 23.64, '1 de 2', 8, 2, '1969', 1, 12, 'MOTO CRUZ'),
(357, 'Camara de ar + Vacina de pneu', 15.76, '1 de 2', 8, 2, '1969', 2, 12, 'MOTO CRUZ'),
(358, 'Camara de ar + Vacina de pneu', 23.64, '2 de 2', 8, 2, '1969', 1, 13, 'MOTO CRUZ'),
(359, 'Camara de ar + Vacina de pneu', 15.76, '2 de 2', 8, 2, '1969', 2, 13, 'MOTO CRUZ'),
(360, 'Lanche', 19.00, 'Única', 10, 1, '2015', 2, 12, 'MC Donalds'),
(361, 'Biscoito', 2.50, 'Única', 10, 1, '2015', 2, 12, 'Posto Leao'),
(362, 'Alimentos', 14.26, 'Única', 10, 1, '2015', 1, 12, 'Varejao Dias'),
(363, 'Alimentos', 14.26, 'Única', 10, 1, '2015', 2, 12, 'Varejao Dias'),
(364, 'Lanche', 10.50, 'Única', 10, 1, '2015', 1, 12, 'Ceara Lanche'),
(365, 'Lanche', 10.50, 'Única', 10, 1, '2015', 2, 12, 'Ceara Lanche'),
(366, 'Lanche', 11.50, 'Única', 10, 1, '2015', 2, 12, 'MARIA LUIZA MIRANDA '),
(367, 'Remedio', 2.10, 'Única', 10, 3, '1969', 1, 12, 'FARMACIA VIDA DO TRABA'),
(368, 'Remedio', 2.10, 'Única', 10, 3, '1969', 2, 12, 'FARMACIA VIDA DO TRABA'),
(369, 'Baton Dona Ercilia', 31.90, 'Única', 10, 10, '1969', 2, 12, 'O BOTICARIO '),
(370, 'Conta de Agua', 16.83, 'Única', 11, 9, '1969', 1, 12, 'Compesa'),
(371, 'Conta de Agua', 16.83, 'Única', 11, 9, '1969', 2, 12, 'Compesa'),
(372, 'Combustivel', 18.00, 'Única', 8, 2, '2016', 1, 13, 'InvestGas'),
(373, 'Combustivel', 12.00, 'Única', 8, 2, '2016', 2, 13, 'InvestGas'),
(374, 'Access Point', 15.13, '1 de 4', 8, 10, '2016', 1, 13, 'Nagem'),
(375, 'Access Point', 15.13, '1 de 4', 8, 10, '2016', 2, 13, 'Nagem'),
(376, 'Access Point', 15.13, '2 de 4', 8, 10, '2016', 1, 14, 'Nagem'),
(377, 'Access Point', 15.13, '2 de 4', 8, 10, '2016', 2, 14, 'Nagem'),
(378, 'Access Point', 15.13, '3 de 4', 8, 10, '2016', 1, 15, 'Nagem'),
(379, 'Access Point', 15.13, '3 de 4', 8, 10, '2016', 2, 15, 'Nagem'),
(380, 'Access Point', 15.13, '4 de 4', 8, 10, '2016', 1, 16, 'Nagem'),
(381, 'Access Point', 15.13, '4 de 4', 8, 10, '2016', 2, 16, 'Nagem'),
(382, '2016.1', 498.00, '1 de 6', 11, 8, '2016', 1, 12, 'Unibratec'),
(424, 'Energia', 31.50, 'Única', 11, 9, '02/02/2016', 1, 13, 'Celpe'),
(425, 'Energia', 31.50, 'Única', 11, 9, '02/02/2016', 2, 13, 'Celpe'),
(426, 'Alimentos', 14.61, 'Única', 10, 1, '24/12/2015', 1, 13, 'Casa Silva'),
(427, 'Alimentos', 14.61, 'Única', 10, 1, '24/12/2015', 2, 13, 'Casa Silva'),
(428, 'Alimentos', 38.61, 'Única', 10, 1, '24/12/2015', 1, 13, 'Varejão Santana'),
(429, 'Alimentos', 38.61, 'Única', 10, 1, '24/12/2015', 2, 13, 'Varejão Santana'),
(430, 'Alimentos', 34.61, 'Única', 10, 1, '26/12/2015', 1, 13, 'Varejao Santana'),
(431, 'Alimentos', 34.61, 'Única', 10, 1, '26/12/2015', 2, 13, 'Varejao Santana'),
(432, 'Alimentos', 3.59, 'Única', 10, 1, '26/12/2015', 1, 13, 'Casa Silva'),
(433, 'Alimentos', 3.59, 'Única', 10, 1, '26/12/2015', 2, 13, 'Casa Silva'),
(434, 'Alimentos', 8.78, 'Única', 10, 1, '31/12/2015', 1, 13, 'Eloy Martins'),
(435, 'Alimentos', 8.78, 'Única', 10, 1, '31/12/2015', 2, 13, 'Eloy Martins'),
(436, 'Alimentos', 13.18, 'Única', 10, 1, '31/12/2015', 1, 13, 'Hiper Karla'),
(437, 'Alimentos', 13.18, 'Única', 10, 1, '31/12/2015', 2, 13, 'Hiper Karla'),
(438, 'Matricula academia', 30.00, 'Única', 10, 3, '16/01/2016', 2, 13, 'Academia Stadium'),
(439, 'Capa para assento da moto', 21.00, 'Única', 10, 2, '19/01/2016', 1, 13, 'Martins motopeças'),
(440, 'Capa para assento da moto', 14.00, 'Única', 10, 2, '19/01/2016', 2, 13, 'Martins motopeças'),
(441, 'Combustivel', 18.00, 'Única', 8, 2, '11/01/2016', 1, 13, 'Posto São Sebastião'),
(442, 'Combustivel', 12.00, 'Única', 8, 2, '11/01/2016', 2, 13, 'Posto São Sebastião'),
(443, 'Combustivel', 20.39, 'Única', 8, 2, '13/01/2016', 1, 13, 'Posto São Sebastião'),
(444, 'Combustivel', 13.60, 'Única', 8, 2, '13/01/2016', 2, 13, 'Posto São Sebastião'),
(445, 'Lanche', 21.50, 'Única', 8, 1, '16/01/2016', 1, 13, 'MacDonnald'),
(446, 'Refletor', 35.00, 'Única', 8, 9, '17/01/2016', 1, 13, 'Tem Tem Material de construção'),
(447, 'Combustivel', 22.57, 'Única', 8, 2, '18/01/2016', 1, 13, 'Posto São Sebastião'),
(448, 'Combustivel', 15.04, 'Única', 8, 2, '18/01/2016', 2, 13, 'Posto São Sebastião'),
(449, 'Óleo', 26.40, 'Única', 8, 2, '20/01/2016', 1, 13, 'MotoNorte'),
(450, 'Óleo', 17.60, 'Única', 8, 2, '20/01/2016', 2, 13, 'MotoNorte'),
(451, 'Alimentos', 25.52, 'Única', 8, 1, '21/01/2016', 1, 13, 'Varejao Santana'),
(452, 'Alimentos', 25.52, 'Única', 8, 1, '21/01/2016', 2, 13, 'Varejao Santana'),
(453, 'Lanche', 15.15, 'Única', 8, 1, '22/01/2016', 1, 13, 'SubWay'),
(454, 'Combustivel', 29.56, 'Única', 8, 2, '23/01/2016', 1, 13, 'WG2 Combustiveis'),
(455, 'Combustivel', 19.71, 'Única', 8, 2, '23/01/2016', 2, 13, 'WG2 Combustiveis'),
(456, 'Lanche', 14.20, 'Única', 8, 1, '24/01/2016', 1, 13, 'Lira Pizza'),
(457, 'Lanche', 14.20, 'Única', 8, 1, '24/01/2016', 2, 13, 'Lira Pizza'),
(458, 'Pomada', 14.79, 'Única', 8, 3, '24/01/2016', 1, 13, 'Drogaria São Paulo'),
(459, 'Alimentos', 22.68, 'Única', 8, 1, '25/01/2016', 1, 13, 'Mercadinho albuquerque'),
(460, 'Remédio garganta', 26.48, '1 de 2', 8, 3, '25/01/2016', 2, 13, 'Farmacia pague poupe'),
(461, 'Remédio garganta', 26.48, '2 de 2', 8, 3, '25/01/2016', 2, 14, 'Farmacia pague poupe'),
(462, 'Combustivel', 27.59, 'Única', 8, 2, '28/01/2016', 1, 13, 'WG2 Combustiveis'),
(463, 'Combustivel', 18.39, 'Única', 8, 2, '28/01/2016', 2, 13, 'WG2 Combustiveis'),
(464, 'Cerveja', 28.35, 'Única', 8, 10, '30/01/2016', 1, 13, 'BP JANGA '),
(465, '????', 25.50, 'Única', 8, 10, '26/01/2016', 1, 13, 'Mercado Pago'),
(466, '????', 25.50, 'Única', 8, 10, '26/01/2016', 2, 13, 'Mercado Pago'),
(467, 'Agua', 16.83, '1 de 11', 11, 9, '15/02/2016', 1, 13, 'Compesa'),
(468, 'Agua', 16.83, '1 de 11', 11, 9, '15/02/2016', 2, 13, 'Compesa'),
(469, 'Agua', 16.83, '2 de 11', 11, 9, '15/02/2016', 1, 14, 'Compesa'),
(470, 'Agua', 16.83, '2 de 11', 11, 9, '15/02/2016', 2, 14, 'Compesa'),
(471, 'Agua', 16.83, '3 de 11', 11, 9, '15/02/2016', 1, 15, 'Compesa'),
(472, 'Agua', 16.83, '3 de 11', 11, 9, '15/02/2016', 2, 15, 'Compesa'),
(473, 'Agua', 16.83, '4 de 11', 11, 9, '15/02/2016', 1, 16, 'Compesa'),
(474, 'Agua', 16.83, '4 de 11', 11, 9, '15/02/2016', 2, 16, 'Compesa'),
(475, 'Agua', 16.83, '5 de 11', 11, 9, '15/02/2016', 1, 17, 'Compesa'),
(476, 'Agua', 16.83, '5 de 11', 11, 9, '15/02/2016', 2, 17, 'Compesa'),
(477, 'Agua', 16.83, '6 de 11', 11, 9, '15/02/2016', 1, 18, 'Compesa'),
(478, 'Agua', 16.83, '6 de 11', 11, 9, '15/02/2016', 2, 18, 'Compesa'),
(479, 'Agua', 16.83, '7 de 11', 11, 9, '15/02/2016', 1, 19, 'Compesa'),
(480, 'Agua', 16.83, '7 de 11', 11, 9, '15/02/2016', 2, 19, 'Compesa'),
(481, 'Agua', 16.83, '8 de 11', 11, 9, '15/02/2016', 1, 20, 'Compesa'),
(482, 'Agua', 16.83, '8 de 11', 11, 9, '15/02/2016', 2, 20, 'Compesa'),
(483, 'Agua', 16.83, '9 de 11', 11, 9, '15/02/2016', 1, 21, 'Compesa'),
(484, 'Agua', 16.83, '9 de 11', 11, 9, '15/02/2016', 2, 21, 'Compesa'),
(485, 'Agua', 16.83, '10 de 11', 11, 9, '15/02/2016', 1, 22, 'Compesa'),
(486, 'Agua', 16.83, '10 de 11', 11, 9, '15/02/2016', 2, 22, 'Compesa'),
(487, 'Agua', 16.83, '11 de 11', 11, 9, '15/02/2016', 1, 23, 'Compesa'),
(488, 'Agua', 16.83, '11 de 11', 11, 9, '15/02/2016', 2, 23, 'Compesa'),
(489, 'Remedios', 40.00, 'Única', 11, 3, '01/03/2016', 1, 14, 'Farmacia sao paulo'),
(490, 'Conta de energia', 30.22, 'Única', 11, 9, '01/03/2016', 1, 14, 'Celpe'),
(491, 'Conta de energia', 30.22, 'Única', 11, 9, '01/03/2016', 2, 14, 'Celpe'),
(492, 'Presente ze pertinha', 14.98, 'Única', 10, 10, '22/01/2016', 1, 14, 'Camisaria Colombo'),
(493, 'Presente ze pertinha', 14.98, 'Única', 10, 10, '22/01/2016', 2, 14, 'Camisaria Colombo'),
(494, 'Lanche', 11.20, 'Única', 10, 1, '24/01/2016', 1, 14, 'Liras pizzaria'),
(495, 'Lanche', 11.20, 'Única', 10, 1, '24/01/2016', 2, 14, 'Liras pizzaria'),
(496, 'Calcado', 22.00, 'Única', 10, 6, '27/01/2016', 2, 14, 'Lucena calcados'),
(497, 'Remedios', 4.30, 'Única', 10, 3, '27/01/2016', 1, 14, 'Farmacia vida do trabalhador'),
(498, 'Remedios', 4.30, 'Única', 10, 3, '27/01/2016', 2, 14, 'Farmacia vida do trabalhador'),
(499, 'bandagem', 27.40, '1 de 2', 10, 3, '15/02/2016', 2, 14, 'Arena fit'),
(500, 'bandagem', 27.40, '2 de 2', 10, 3, '15/02/2016', 2, 15, 'Arena fit'),
(501, 'Combustivel', 27.97, 'Única', 10, 2, '20/02/2016', 1, 14, 'Posto mega petro'),
(502, 'Combustivel', 18.65, 'Única', 10, 2, '20/02/2016', 2, 14, 'Posto mega petro'),
(504, '?', 23.00, 'Única', 10, 10, '22/01/2016', 2, 14, 'FASCINANTE VIP'),
(505, 'Refletor condominio', 83.34, '1 de 3', 9, 9, '06/2/2016', 1, 14, 'Armazens coral'),
(506, 'Refletor condominio', 83.34, '2 de 3', 9, 9, '06/2/2016', 1, 15, 'Armazens coral'),
(507, 'Refletor condominio', 83.34, '3 de 3', 9, 9, '06/2/2016', 1, 16, 'Armazens coral'),
(508, 'Combustivel', 23.21, 'Única', 9, 2, '07/2/2016', 1, 14, 'Investgas'),
(509, 'Combustivel', 15.48, 'Única', 9, 2, '07/2/2016', 2, 14, 'Investgas'),
(510, 'Combustivel', 21.01, 'Única', 8, 2, '03/02/2016', 1, 14, 'POSTO SAO SEBASTIAO'),
(511, 'Combustivel', 14.00, 'Única', 8, 2, '03/02/2016', 2, 14, 'POSTO SAO SEBASTIAO'),
(513, 'Bermuda cris', 25.00, '1 de 2', 8, 5, '07/02/2016', 2, 14, 'ROSA MAGAZINE'),
(514, 'Bermuda cris', 25.00, '2 de 2', 8, 5, '07/02/2016', 2, 15, 'ROSA MAGAZINE'),
(515, 'Combustivel', 29.31, 'Única', 8, 2, '26/02/2016', 1, 14, 'INVEST GAS'),
(516, 'Combustivel', 19.54, 'Única', 8, 2, '26/02/2016', 2, 14, 'INVEST GAS'),
(517, 'Alimento', 21.90, 'Única', 8, 1, '29/02/2016', 2, 14, 'JULIETTO'),
(518, 'Cris', 11.00, 'Única', 8, 10, '01/03/2016', 2, 14, 'LUIS ELOI DA SILVA'),
(519, 'Fantasia carnaval', 18.75, 'Única', 8, 4, '07/02/2016', 1, 14, 'SAFIRA MODAS'),
(520, 'Fantasia carnaval', 18.75, 'Única', 8, 4, '07/02/2016', 2, 14, 'SAFIRA MODAS'),
(521, 'Juros', 22.58, 'Única', 8, 10, '01/03/2016', 1, 14, 'HiperCard'),
(522, 'Juros', 22.58, 'Única', 8, 10, '01/03/2016', 2, 14, 'HiperCard'),
(523, 'Pizza', 15.00, 'Única', 10, 1, '21/02/2016', 1, 14, 'BRUNO G VASCONCELOS'),
(524, 'Pizza', 15.00, 'Única', 10, 1, '21/02/2016', 2, 14, 'BRUNO G VASCONCELOS'),
(525, 'IPTU', 26.55, '1 de 10', 11, 9, '01/02/2016', 1, 13, 'Prefeitura de paulista'),
(526, 'IPTU', 26.55, '1 de 10', 11, 9, '01/02/2016', 2, 13, 'Prefeitura de paulista'),
(527, 'IPTU', 26.55, '2 de 10', 11, 9, '01/02/2016', 1, 14, 'Prefeitura de paulista'),
(528, 'IPTU', 26.55, '2 de 10', 11, 9, '01/02/2016', 2, 14, 'Prefeitura de paulista'),
(529, 'IPTU', 26.55, '3 de 10', 11, 9, '01/02/2016', 1, 15, 'Prefeitura de paulista'),
(530, 'IPTU', 26.55, '3 de 10', 11, 9, '01/02/2016', 2, 15, 'Prefeitura de paulista'),
(531, 'IPTU', 26.55, '4 de 10', 11, 9, '01/02/2016', 1, 16, 'Prefeitura de paulista'),
(532, 'IPTU', 26.55, '4 de 10', 11, 9, '01/02/2016', 2, 16, 'Prefeitura de paulista'),
(533, 'IPTU', 26.55, '5 de 10', 11, 9, '01/02/2016', 1, 17, 'Prefeitura de paulista'),
(534, 'IPTU', 26.55, '5 de 10', 11, 9, '01/02/2016', 2, 17, 'Prefeitura de paulista'),
(535, 'IPTU', 26.55, '6 de 10', 11, 9, '01/02/2016', 1, 18, 'Prefeitura de paulista'),
(536, 'IPTU', 26.55, '6 de 10', 11, 9, '01/02/2016', 2, 18, 'Prefeitura de paulista'),
(537, 'IPTU', 26.55, '7 de 10', 11, 9, '01/02/2016', 1, 19, 'Prefeitura de paulista'),
(538, 'IPTU', 26.55, '7 de 10', 11, 9, '01/02/2016', 2, 19, 'Prefeitura de paulista'),
(539, 'IPTU', 26.55, '8 de 10', 11, 9, '01/02/2016', 1, 20, 'Prefeitura de paulista'),
(540, 'IPTU', 26.55, '8 de 10', 11, 9, '01/02/2016', 2, 20, 'Prefeitura de paulista'),
(541, 'IPTU', 26.55, '9 de 10', 11, 9, '01/02/2016', 1, 21, 'Prefeitura de paulista'),
(542, 'IPTU', 26.55, '9 de 10', 11, 9, '01/02/2016', 2, 21, 'Prefeitura de paulista'),
(543, 'IPTU', 26.55, '10 de 10', 11, 9, '01/02/2016', 1, 22, 'Prefeitura de paulista'),
(544, 'IPTU', 26.55, '10 de 10', 11, 9, '01/02/2016', 2, 22, 'Prefeitura de paulista'),
(545, 'Internet', 20.00, 'Única', 11, 8, '10/03/2016', 1, 14, 'Vital net'),
(546, 'Internet', 20.00, 'Única', 11, 8, '10/03/2016', 2, 14, 'Vital net');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fk_periodo_despesa`
--

CREATE TABLE `fk_periodo_despesa` (
  `id_despesa` int(4) DEFAULT NULL,
  `id_periodo_de_pagamento` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fk_periodo_responsavel`
--

CREATE TABLE `fk_periodo_responsavel` (
  `id_responsavel` int(2) DEFAULT NULL,
  `id_periodo_de_pagamento` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fk_responsavel_despesa`
--

CREATE TABLE `fk_responsavel_despesa` (
  `id_despesa` int(4) DEFAULT NULL,
  `id_responsavel` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fk_responsavel_origem`
--

CREATE TABLE `fk_responsavel_origem` (
  `id_responsavel` int(2) DEFAULT NULL,
  `id_origem` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `origem`
--

CREATE TABLE `origem` (
  `id` int(2) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `origem`
--

INSERT INTO `origem` (`id`, `descricao`) VALUES
(7, 'Cartão Celson Rodrigues (Saraiva)'),
(8, 'Cartão Crislaine Souza (Hiper)'),
(9, 'Cartão Dona Neide (Master)'),
(10, 'Cartão Dona Ercilia (Dona Ercilia)'),
(11, 'Boleto Avulso'),
(12, 'Pagamento em dinheiro'),
(13, 'Cartão Crislaine Souza (BB)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo_de_pagamento`
--

CREATE TABLE `periodo_de_pagamento` (
  `id` int(2) NOT NULL,
  `mes` varchar(50) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `periodo_de_pagamento`
--

INSERT INTO `periodo_de_pagamento` (`id`, `mes`, `ano`) VALUES
(1, 'Fevereiro', 2015),
(2, 'Março', 2015),
(3, 'Abril', 2015),
(4, 'Maio', 2015),
(5, 'Junho', 2015),
(6, 'Julho', 2015),
(7, 'Agosto', 2015),
(8, 'Setembro', 2015),
(9, 'Outubro', 2015),
(10, 'Novembro', 2015),
(11, 'Dezembro', 2015),
(12, 'Janeiro', 2016),
(13, 'Fevereiro', 2016),
(14, 'Março', 2016),
(15, 'Abril', 2016),
(16, 'Maio', 2016),
(17, 'Junho', 2016),
(18, 'Julho', 2016),
(19, 'Agosto', 2016),
(20, 'Setembro', 2016),
(21, 'Outubro', 2016),
(22, 'Novembro', 2016),
(23, 'Dezembro', 2016),
(24, 'Janeiro', 2017),
(25, 'Fevereiro', 2017),
(26, 'Março', 2017),
(27, 'Abril', 2017),
(28, 'Maio', 2017),
(29, 'Junho', 2017),
(30, 'Julho', 2017),
(31, 'Agosto', 2017),
(32, 'Setembro', 2017),
(33, 'Outubro', 2017),
(34, 'Novembro', 2017),
(35, 'Dezembro', 2017),
(36, 'Janeiro', 2018),
(37, 'Fevereiro', 2018),
(38, 'Março', 2018),
(39, 'Abril', 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

CREATE TABLE `responsavel` (
  `id` int(2) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `responsavel`
--

INSERT INTO `responsavel` (`id`, `nome`) VALUES
(1, 'Celson Rodrigues'),
(2, 'Crislaine Souza'),
(3, 'Dona Ercilia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `despesa`
--
ALTER TABLE `despesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsavel` (`responsavel`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `origem` (`origem`),
  ADD KEY `periodo_de_pagamento` (`periodo_de_pagamento`);

--
-- Indexes for table `fk_periodo_despesa`
--
ALTER TABLE `fk_periodo_despesa`
  ADD KEY `id_despesa` (`id_despesa`),
  ADD KEY `id_periodo_de_pagamento` (`id_periodo_de_pagamento`);

--
-- Indexes for table `fk_periodo_responsavel`
--
ALTER TABLE `fk_periodo_responsavel`
  ADD KEY `id_responsavel` (`id_responsavel`),
  ADD KEY `id_periodo_de_pagamento` (`id_periodo_de_pagamento`);

--
-- Indexes for table `fk_responsavel_despesa`
--
ALTER TABLE `fk_responsavel_despesa`
  ADD KEY `id_despesa` (`id_despesa`),
  ADD KEY `id_responsavel` (`id_responsavel`);

--
-- Indexes for table `fk_responsavel_origem`
--
ALTER TABLE `fk_responsavel_origem`
  ADD KEY `id_origem` (`id_origem`),
  ADD KEY `id_responsavel` (`id_responsavel`);

--
-- Indexes for table `origem`
--
ALTER TABLE `origem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periodo_de_pagamento`
--
ALTER TABLE `periodo_de_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `despesa`
--
ALTER TABLE `despesa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
--
-- AUTO_INCREMENT for table `origem`
--
ALTER TABLE `origem`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `periodo_de_pagamento`
--
ALTER TABLE `periodo_de_pagamento`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `despesa`
--
ALTER TABLE `despesa`
  ADD CONSTRAINT `despesa_ibfk_1` FOREIGN KEY (`responsavel`) REFERENCES `responsavel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `despesa_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `despesa_ibfk_3` FOREIGN KEY (`origem`) REFERENCES `origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `despesa_ibfk_5` FOREIGN KEY (`periodo_de_pagamento`) REFERENCES `periodo_de_pagamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fk_periodo_despesa`
--
ALTER TABLE `fk_periodo_despesa`
  ADD CONSTRAINT `periodo_despesa_ibfk_1` FOREIGN KEY (`id_despesa`) REFERENCES `despesa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `periodo_despesa_ibfk_2` FOREIGN KEY (`id_periodo_de_pagamento`) REFERENCES `periodo_de_pagamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fk_periodo_responsavel`
--
ALTER TABLE `fk_periodo_responsavel`
  ADD CONSTRAINT `periodo_responsavel_ibfk_1` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `periodo_responsavel_ibfk_2` FOREIGN KEY (`id_periodo_de_pagamento`) REFERENCES `periodo_de_pagamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fk_responsavel_despesa`
--
ALTER TABLE `fk_responsavel_despesa`
  ADD CONSTRAINT `responsavel_despesa_ibfk_1` FOREIGN KEY (`id_despesa`) REFERENCES `despesa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responsavel_despesa_ibfk_2` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fk_responsavel_origem`
--
ALTER TABLE `fk_responsavel_origem`
  ADD CONSTRAINT `fk_responsavel_origem_ibfk_1` FOREIGN KEY (`id_origem`) REFERENCES `origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_responsavel_origem_ibfk_2` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

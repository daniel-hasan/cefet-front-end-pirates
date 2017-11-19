-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17-Nov-2017 às 20:43
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Nome do banco de dados: `banco-dos-tesouros`
--

-- --------------------------------------------------------

--
-- Criando a tabela `tesouros`, com 5 colunas
--

DROP TABLE IF EXISTS `tesouros`;
CREATE TABLE IF NOT EXISTS `tesouros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,						-- id: inteiro, auto incrementado (1, 2, 3...)
  `nome` varchar(100) NOT NULL,								-- nome: string com tamanho máximo de 100 caracteres
  `icone` varchar(100) NOT NULL,							-- icone: idem
  `valorUnitario` decimal(10,0) NOT NULL,					-- valorUnitario: número decimal
  `quantidade` int(11) NOT NULL,							-- quantidade: número inteiro
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Inserindo dados na tabela `tesouros`: 4 tesouros
--

INSERT INTO `tesouros` (`nome`, `icone`, `valorUnitario`, `quantidade`) VALUES
('Moedas de ouro', 'imgs/moedas.png', '10', 835),
('Coroas', 'imgs/coroa.png', '210', 4),
('Cálices de ouro', 'imgs/calice.png', '4500', 1),
('Barris de Rum', 'imgs/rum.png', '0', 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Abr 24, 2014 as 02:02 PM
-- Versão do Servidor: 5.5.8
-- Versão do PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `odontocontrol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE IF NOT EXISTS `agendamento` (
  `nome_paciente` varchar(80) NOT NULL,
  `dt_nasc_paciente` varchar(12) NOT NULL,
  `sexo_paciente` varchar(10) NOT NULL,
  `rg_paciente` varchar(12) NOT NULL,
  `dt_consulta` varchar(12) NOT NULL,
  `horario_consulta` varchar(5) NOT NULL,
  `especialidade_consulta` varchar(30) NOT NULL,
  `dentista_consulta` varchar(50) NOT NULL,
  `valor_consulta` varchar(8) NOT NULL,
  PRIMARY KEY (`nome_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`nome_paciente`, `dt_nasc_paciente`, `sexo_paciente`, `rg_paciente`, `dt_consulta`, `horario_consulta`, `especialidade_consulta`, `dentista_consulta`, `valor_consulta`) VALUES
('tesgtr', '78/78/7878', 'Feminino', '3333', '33/33/3333', '33:33', '3333', '3333', 'R$333,33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dentistas`
--

CREATE TABLE IF NOT EXISTS `dentistas` (
  `cro_dentista` varchar(9) NOT NULL,
  `rg_dentista` varchar(12) NOT NULL,
  `cpf_dentista` varchar(11) NOT NULL,
  `nome_dentista` varchar(80) NOT NULL,
  `dt_nasc_dentista` varchar(11) NOT NULL,
  `sexo_dentista` varchar(10) NOT NULL,
  `especialidade_consulta` varchar(40) NOT NULL,
  `endereco_dentista` varchar(50) NOT NULL,
  `nm_casa_dentista` varchar(5) NOT NULL,
  `bairro_dentista` varchar(50) NOT NULL,
  `tel_dentista` varchar(12) NOT NULL,
  `email_dentista` varchar(40) NOT NULL,
  PRIMARY KEY (`cpf_dentista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dentistas`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `cpf_funcionario` varchar(11) NOT NULL,
  `rg_funcionario` varchar(12) NOT NULL,
  `nome_funcionario` varchar(60) NOT NULL,
  `dt_nasc_funcionario` varchar(11) NOT NULL,
  `sexo_funcionario` varchar(10) NOT NULL,
  `nacionalidade_funcionario` varchar(30) NOT NULL,
  `cargo_funcionario` varchar(40) NOT NULL,
  `estado_civil_funcionario` varchar(12) NOT NULL,
  `conjuge_funcionario` varchar(60) NOT NULL,
  `endereco_funcionario` varchar(40) NOT NULL,
  `nm_casa_funcionario` varchar(5) NOT NULL,
  `bairro_funcionario` varchar(30) NOT NULL,
  `tel_funcionario` varchar(14) NOT NULL,
  PRIMARY KEY (`cpf_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`cpf_funcionario`, `rg_funcionario`, `nome_funcionario`, `dt_nasc_funcionario`, `sexo_funcionario`, `nacionalidade_funcionario`, `cargo_funcionario`, `estado_civil_funcionario`, `conjuge_funcionario`, `endereco_funcionario`, `nm_casa_funcionario`, `bairro_funcionario`, `tel_funcionario`) VALUES
('', '', '', '  /  /    ', 'Masculino', '', '', 'Solteiro', '', '', '', '', '(  )     -    ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `cd_paciente` int(5) NOT NULL AUTO_INCREMENT,
  `cpf_paciente` varchar(14) NOT NULL,
  `rg_paciente` varchar(12) NOT NULL,
  `nome_paciente` varchar(40) NOT NULL,
  `dt_nasc_paciente` varchar(11) NOT NULL,
  `sexo_paciente` varchar(10) NOT NULL,
  `nacionalidade_paciente` varchar(20) NOT NULL,
  `profissao_paciente` varchar(30) NOT NULL,
  `estado_civil_paciente` varchar(15) NOT NULL,
  `responsavel_paciente` varchar(50) DEFAULT NULL,
  `rg_responsavel_paciente` varchar(11) DEFAULT NULL,
  `endereco_paciente` varchar(50) NOT NULL,
  `nm_casa_paciente` varchar(6) NOT NULL,
  `bairro_paciente` varchar(40) NOT NULL,
  `tel_paciente` varchar(14) NOT NULL,
  PRIMARY KEY (`cd_paciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `pacientes`
--

INSERT INTO `pacientes` (`cd_paciente`, `cpf_paciente`, `rg_paciente`, `nome_paciente`, `dt_nasc_paciente`, `sexo_paciente`, `nacionalidade_paciente`, `profissao_paciente`, `estado_civil_paciente`, `responsavel_paciente`, `rg_responsavel_paciente`, `endereco_paciente`, `nm_casa_paciente`, `bairro_paciente`, `tel_paciente`) VALUES
(1, '', '', '', '  /  /    ', 'Feminino', '', 'njhujkhj', 'Casado', '', '', '', '', '', '(  )     -    ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `nome_usuario` varchar(80) NOT NULL,
  `login_usuario` varchar(20) NOT NULL,
  `senha_usuario` varchar(20) NOT NULL,
  `nv_acesso_usuario` varchar(15) NOT NULL,
  PRIMARY KEY (`nome_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--


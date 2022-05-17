--CREATE DATABASE [VENDAS SUCOS]

CREATE TABLE [PRODUTOS]
([C�DIGO] VARCHAR(10) NOT NULL,
[DESCRITOR] VARCHAR(100) NULL,
[SABOR] VARCHAR(50) NULL,
[TAMANHO] VARCHAR(50) NULL,
[EMBALAGEM] VARCHAR(50) NULL,
[PRE�O LISTA] FLOAT NULL,
CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED ([C�DIGO]))

CREATE TABLE [VENDEDORES]
([MATR�CULA] VARCHAR(5) NOT NULL,
[NOME] VARCHAR(100) NULL,
[BAIRRO] VARCHAR(50) NULL,
[COMISS�O] FLOAT NULL,
[DATA DE ADMISS�O] DATE NULL,
[F�RIAS] BIT NULL,
CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED ([MATR�CULA]))

CREATE TABLE [CLIENTES]
([CPF] VARCHAR(11) NOT NULL,
[NOME] VARCHAR(100) NULL,
[ENDERE�O] VARCHAR(50) NULL,
[BAIRRO] VARCHAR(50) NULL,
[CIDADE] VARCHAR(50) NULL,
[ESTADO] VARCHAR(50) NULL,
[CEP] VARCHAR(8) NULL,
[DATA DE NASCIMENTO] DATE NULL,
[IDADE] INT NULL,
[SEXO] VARCHAR(1) NULL,
[LIMITE DE CR�DITO] FLOAT NULL,
[VOLUME DA COMPRA] FLOAT NULL,
[PRIMEIRA COMPRA] BIT NULL,
CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED ([CPF]))
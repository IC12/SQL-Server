USE [SUCOS_VENDAS]
GO

/****** Object:  Table [dbo].[TABELA DE CLIENTES]    Script Date: 20/10/2021 21:14:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TABELA DE CLIENTES 2](
	[CPF] [char](11) NULL,
	[NOME] [varchar](100) NULL,
	[ENDERECO1] [varchar](150) NULL,
	[ENDERECO2] [varchar](150) NULL,
	[BAIRRO] [varchar](50) NULL,
	[CIDADE] [varchar](50) NULL,
	[ESTADO] [char](2) NULL,
	[CEP] [char](8) NULL,
	[DATA DE NASCIMENTO] [date] NULL,
	[IDADE] [smallint] NULL,
	[SEXO] [char](1) NULL,
	[LIMITE DE CREDITO] [money] NULL,
	[VOLUME DE COMPRA] [float] NULL,
	[PRIMEIRA COMPRA] [bit] NULL
) ON [PRIMARY]
GO



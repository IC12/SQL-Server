ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
CHAR(11) NOT NULL

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_TABELA_DE_CLIENTES
PRIMARY KEY CLUSTERED (CPF)

USE [SUCOS_VENDAS]

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO1]
           ,[ENDERECO2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('54944666047'
           ,'JOÃO SILVA'
           ,'Rua Projetada A'
           ,'Número 233'
           ,'Copacabana'
           ,'Rio de Janeiro'
           ,'RJ'
           ,'20000000'
           ,'1965-03-21'
           ,56
           ,'M'
           ,20000.00
           ,3000.23
           ,1)


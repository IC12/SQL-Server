--CPF Cliente
--Nome
--Endere�o
--Data nascimento
--Idade
--G�nero
--Limite de cr�dito para comprar produtos na empresa
--Volume m�nimo de produtos
--Se ele j� realizou a primeira compra

create table [TABELA DE CLIENTES]
([CPF] [CHAR] (11),
[NOME] [VARCHAR] (100),
[ENDERECO1] [VARCHAR] (150),
[ENDERECO2] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (50),
[CIDADE] [VARCHAR] (50),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME DE COMPRA] [FLOAT],
[PRIMEIRA COMPRA] [BIT])
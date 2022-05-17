--CPF Cliente
--Nome
--Endereço
--Data nascimento
--Idade
--Gênero
--Limite de crédito para comprar produtos na empresa
--Volume mínimo de produtos
--Se ele já realizou a primeira compra

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
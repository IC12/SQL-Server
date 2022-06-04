CREATE PROCEDURE BuscaEntidades @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
	SELECT [CPF] AS IDENTIFICADOR, NOME AS DESCRITOR,
	[BAIRRO] AS BAIRRO FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
	SELECT MATRICULA AS IDENTIFICADOR, NOME AS DESCRITOR,
	BAIRRO AS BAIRRO FROM [TABELA DE VENDEDORES]
END

EXEC BuscaEntidades @ENTIDADE = 'CLIENTES'
EXEC BuscaEntidades @ENTIDADE = 'VENDEDORES'




CREATE PROCEDURE BuscaPorEntidadesCompleta @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
    SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR 
        FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
    SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR 
        FROM [TABELA DE VENDEDORES]
ELSE IF @ENTIDADE = 'PRODUTOS'
    SELECT [CODIGO DO PRODUTO] AS IDENTIFICADOR, [NOME DO PRODUTO] 
        AS DESCRITOR FROM [TABELA DE PRODUTOS]
END

EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'VENDEDORES'
EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'PRODUTOS'
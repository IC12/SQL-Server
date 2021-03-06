CREATE PROCEDURE CalculaIdade
AS
BEGIN
	UPDATE [TABELA DE CLIENTES] SET IDADE = DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE())
END


INSERT INTO [TABELA DE CLIENTES] (CPF, NOME, [ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP, [DATA DE NASCIMENTO],
SEXO, [LIMITE DE CREDITO], [VOLUME DE COMPRA], [PRIMEIRA COMPRA])
VALUES
('123456789', 'JO?O MACHADO', 'RUA PROJETADA A', 'MADUREIRA', 'Rio de Janeiro', 'RJ', '20000000',
'20000306', 'M', 120000, 120000, 120000)

SELECT * FROM [TABELA DE CLIENTES] WHERE CPF = '123456789'
EXEC CalculaIdade







UPDATE NF SET NF.IMPOSTO = 0.18
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF 
    ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE PRODUTOS] TP 
    ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
WHERE MONTH(NF.DATA) = 1 AND YEAR(NF.DATA) = 2017 
    AND TP.EMBALAGEM = 'Lata'


CREATE PROCEDURE AtualizaImposto @MES AS INT, @ANO AS INT, 
    @EMBALAGEM AS VARCHAR(10), @IMPOSTO AS FLOAT
AS
UPDATE NF SET NF.IMPOSTO = @IMPOSTO FROM [NOTAS FISCAIS] NF
    INNER JOIN [ITENS NOTAS FISCAIS] INF 
        ON NF.NUMERO = INF.NUMERO
    INNER JOIN [TABELA DE PRODUTOS] TP 
        ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
    WHERE MONTH(NF.DATA) = @MES AND YEAR(NF.DATA) = @ANO 
        AND TP.EMBALAGEM = @EMBALAGEM

EXEC AtualizaImposto @MES = 2, @ANO = 2017, @EMBALAGEM = 'PET', @IMPOSTO = 0.16

SELECT * FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON 
    NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE PRODUTOS] TP ON 
    TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
WHERE MONTH(NF.DATA) = 1 AND YEAR(NF.DATA) = 2017 
    AND TP.EMBALAGEM = 'Lata'

-- n�meros aleat�rios
SELECT RAND()

--- VALOR MINIMO SEJA 100
--- VALOR M�XIMO SEJA 500

SELECT ROUND(((500 - 100 - 1) * RAND() + 100), 0)

CREATE FUNCTION NumeroAleatorio(@VAL_INIC INT, @VAL_FINAL INT) RETURNS INT
AS
BEGIN
DECLARE @ALEATORIO INT
SET @ALEATORIO = ROUND(((@VAL_FINAL - @VAL_INIC - 1) * RAND() + @VAL_INIC), 0)
RETURN @ALEATORIO
END

CREATE VIEW VW_ALEATORIO AS SELECT RAND() AS VALUE

SELECT * FROM VW_ALEATORIO

CREATE FUNCTION NumeroAleatorio(@VAL_INIC INT, @VAL_FINAL INT) RETURNS INT
AS
BEGIN
DECLARE @ALEATORIO INT
DECLARE @ALEATORIO_FLOAT FLOAT
SELECT @ALEATORIO_FLOAT = VALUE FROM VW_ALEATORIO
SET @ALEATORIO = ROUND(((@VAL_FINAL - @VAL_INIC - 1) * @ALEATORIO_FLOAT + @VAL_INIC), 0)
RETURN @ALEATORIO
END

SELECT [dbo].[NumeroAleatorio](1,3)





DECLARE @TABELA TABLE (NUMERO INT)
DECLARE @CONTADOR INT
DECLARE @CONTMAXIMO INT
SET @CONTADOR = 1
SET @CONTMAXIMO = 100
WHILE @CONTADOR <= @CONTMAXIMO
BEGIN
    INSERT INTO @TABELA (NUMERO) VALUES 
        ([dbo].[NumeroAleatorio](0,1000))
    SET @CONTADOR = @CONTADOR + 1
END
SELECT * FROM @TABELA
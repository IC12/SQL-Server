IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE
IF OBJECT_ID('TABELA_TESTE', 'U') IS NULL CREATE TABLE TABELA_TESTE (ID VARCHAR(10))



SELECT GETDATE()
SELECT DATENAME(WEEKDAY, DATEADD(DAY, 4, GETDATE()))



DECLARE @DIA_SEMANA VARCHAR(20)
DECLARE @NUMERO_DIAS INT
SET @NUMERO_DIAS = 6
SET LANGUAGE Portuguese
SET @DIA_SEMANA = DATENAME(WEEKDAY, DATEADD(DAY, @NUMERO_DIAS, GETDATE()))
PRINT @DIA_SEMANA
IF @DIA_SEMANA = 'Domingo' OR @DIA_SEMANA = 'S�bado'
	PRINT 'Este dia � fim de semana'
ELSE
	PRINT 'Este dia � dia da semana'



DECLARE @DATANOTA DATE
DECLARE @NUMNOTAS INT
SET @DATANOTA = '20170102'
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
    WHERE DATA = @DATANOTA
IF @NUMNOTAS > 70
    PRINT 'Muita nota'
ELSE
    PRINT 'Pouca nota'
PRINT @NUMNOTAS
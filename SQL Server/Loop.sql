
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @LIMITE_BREAK INT

SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 10
SET @LIMITE_BREAK = 8

WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
   PRINT @LIMITE_MINIMO
   SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1
   IF @LIMITE_MINIMO = @LIMITE_BREAK
   BEGIN
      PRINT 'Saindo por causa do BREAK'
      BREAK
   END
END



DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT
SET @DATAINICIAL = '20170101'
SET @DATAFINAL = '20170110'
WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
        WHERE DATA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' --> ' 
        + CONVERT(VARCHAR(10), @NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END
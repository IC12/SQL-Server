
-- Criar nums duas vezes. Executar a consulta com e sem índice
-- Verificar no TRACE - SQL Profiler.

USE SUCOS_VENDAS;
 
CREATE TABLE dbo.Nums1( n varchar(10) NOT NULL);
CREATE TABLE dbo.Nums2( n varchar(10) NOT NULL);

 DECLARE @max AS INT, @rc AS INT; 
 SET @max = 10000000; 
 SET @rc = 1; 
 INSERT INTO Nums1 VALUES( 1); 
 INSERT INTO Nums2 VALUES( 1);
 WHILE @rc * 2 < = @max 
 BEGIN 
 
 INSERT INTO dbo.Nums1 SELECT convert(varchar(10), n + @rc) FROM dbo.Nums1; 
 INSERT INTO dbo.Nums2 SELECT convert(varchar(10), n + @rc) FROM dbo.Nums2; 
 SET @rc = @rc * 2; 
 
 END 
 INSERT INTO dbo.Nums1 SELECT convert(varchar(10), n + @rc) FROM dbo.Nums1 WHERE n + @rc < = @max;
 INSERT INTO dbo.Nums2 SELECT convert(varchar(10), n + @rc) FROM dbo.Nums2 WHERE n + @rc < = @max;

 CREATE NONCLUSTERED INDEX IX_Nums ON nums1 (n)
 --Criação do índice forma de árvore não ordenado/ponteiros na memória
 --Ganho de performance usando índice

 SELECT N FROM Nums1 where N = '10001'
 SELECT N FROM Nums2 where N = '10001'







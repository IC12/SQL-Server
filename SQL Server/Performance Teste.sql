

SET NOCOUNT ON; 

USE SUCOS_VENDAS;
 
IF OBJECT_ID(' dbo.Nums', 'U') IS NOT NULL DROP TABLE dbo.Nums; 
CREATE TABLE dbo.Nums( n INT NOT NULL PRIMARY KEY);

 DECLARE @max AS INT, @rc AS INT; 
 SET @max = 30000000; 
 SET @rc = 1; 
 INSERT INTO Nums VALUES( 1); 
 WHILE @rc * 2 < = @max 
 BEGIN 
 
 INSERT INTO dbo.Nums SELECT n + @rc FROM dbo.Nums; 
 SET @rc = @rc * 2; 
 
 END 
 INSERT INTO dbo.Nums SELECT n + @rc FROM dbo.Nums WHERE n + @rc < = @max;

SELECT n, n +  1 AS n_plus_one FROM dbo.Nums WHERE n < = 30000000;


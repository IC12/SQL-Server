
SELECT * FROM sys.fn_builtin_permissions('') where class_desc = 'SERVER'


USE SUCOS_VENDAS
CREATE LOGIN jorge WITH PASSWORD = 'jorge@123'
CREATE USER jorge FOR LOGIN jorge
-- Associação de usuário ao login

USE SUCOS_VENDAS
EXEC sp_addrolemember 'db_datareader', 'jorge'
--Direito a leitura o usuário jorge
EXEC sp_addrolemember 'db_datawriter', 'jorge'
--Direito a inserir dados o usuário jorge


USE SUCOS_VENDAS
SELECT * FROM [NOTAS FISCAIS]

INSERT INTO [NOTAS FISCAIS] (CPF, MATRICULA, DATA, NUMERO, IMPOSTO) 
VALUES ('7771579779','00235','2018-06-01','10000000',0.1)

SELECT * FROM [NOTAS FISCAIS] WHERE NUMERO = 10000000
DELETE FROM [NOTAS FISCAIS] WHERE NUMERO = 10000000

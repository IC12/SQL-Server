
SELECT * FROM [NOTAS FISCAIS] WHERE NUMERO = '100'

SELECT * FROM [NOTAS FISCAIS] 

SELECT * FROM [TABELA DE CLIENTES] A INNER JOIN [NOTAS FISCAIS] B
ON A.CPF = B.CPF INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO
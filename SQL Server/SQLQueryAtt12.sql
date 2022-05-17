
SELECT [CPF]
      ,[NOME]
      ,[ENDERECO1]
      ,[ENDERECO2]
      ,[BAIRRO]
      ,[CIDADE]
      ,[ESTADO]
      ,[CEP]
      ,[DATA DE NASCIMENTO]
      ,[IDADE]
      ,[SEXO]
      ,[LIMITE DE CREDITO]
      ,[VOLUME DE COMPRA]
      ,[PRIMEIRA COMPRA]
  FROM [TABELA DE CLIENTES]

  select * from [TABELA DE CLIENTES]

  --Apelido para os campos usando AS
  SELECT [CPF] AS IDENTIFICADOR
      ,[NOME] AS [NOME DO CLIENTE]
  FROM [TABELA DE CLIENTES]
  
  select * from [TABELA DE PRODUTOS] where SABOR = 'Limão'

  UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = 1.1 * [PRECO DE LISTA]
  WHERE [SABOR] = 'Limão'

  delete from [TABELA DE PRODUTOS] where SABOR = 'Limão'

  select * from [TABELA DE PRODUTOS] where EMBALAGEM = 'PET'

  select * from [TABELA DE PRODUTOS] where [PRECO DE LISTA] < 10
  --Pode procurar produtos que custam mais ou menos que determinado valor usando (< > ou <=>=)

  select * from [TABELA DE PRODUTOS] where EMBALAGEM <> 'Lata'
  -- <> significa diferente

  SELECT * FROM [TABELA DE CLIENTES]

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1955-09-11'

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1955-09-11'

  SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995

  SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 9

  SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12

  SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995 AND SEXO = 'F'

  SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12 OR BAIRRO = 'Tejuca'

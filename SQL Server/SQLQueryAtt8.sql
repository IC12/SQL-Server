INSERT INTO [TABELA PRODUTOS]
([CODIGO DO PRODUTO], 
[NOME DO PRODUTO], 
[EMBALAGEM], 
[TAMANHO], 
[SABOR], 
[PRECO DE LISTA])
VALUES
('544931', 
'Frescor do Ver�o - 350 ml - Lim�o', 
'PET', 
'350 ml',
'Lim�o',
3.20)

INSERT INTO [TABELA PRODUTOS]
([CODIGO DO PRODUTO], 
[NOME DO PRODUTO], 
[EMBALAGEM], 
[TAMANHO], 
[SABOR], 
[PRECO DE LISTA])
VALUES
('1078680', 
'Frescor do Ver�o - 470 ml - Manga', 
'Lata', 
'470 ml',
'Manga',
5.18)

UPDATE [TABELA PRODUTOS]
SET [EMBALAGEM] = 'Lata',
[PRECO DE LISTA] = 2.46
WHERE [CODIGO DO PRODUTO] = '544931'

delete from [TABELA PRODUTOS]
where [CODIGO DO PRODUTO] = '1078680'
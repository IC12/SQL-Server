SELECT * FROM VENDEDORES

BEGIN TRANSACTION

UPDATE VENDEDORES SET COMISS?O = COMISS?O * 1.15

INSERT INTO VENDEDORES (MATR?CULA, NOME, BAIRRO, COMISS?O, [DATA DE ADMISS?O], F?RIAS)
VALUES ('99999', 'Jo?o da Silva', 'Icara?', 0.08, '2014-09-01', 0)

ROLLBACK

COMMIT
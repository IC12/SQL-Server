
SELECT A.CPF, B.NUMERO, C.QUANTIDADE FROM
[TABELA DE CLIENTES] A 
INNER JOIN [NOTAS FISCAIS] B ON A.CPF = B.CPF AND A.CPF = '7771579779' 
INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO

SELECT A.CPF, B.NUMERO, C.QUANTIDADE FROM
[ITENS NOTAS FISCAIS] C
INNER JOIN [NOTAS FISCAIS] B ON B.NUMERO = C.NUMERO
INNER JOIN [TABELA DE CLIENTES] A ON A.CPF = B.CPF AND A.CPF = '7771579779' 


CREATE NONCLUSTERED INDEX ix_IndexName ON [NOTAS FISCAIS] ( [CPF] ) ;
--Melhora performance do banco e suas consultas
--Sugestão de index usando a consulta abaixo:

SELECT  sys.objects.name
, (avg_total_user_cost * avg_user_impact) * (user_seeks + user_scans) AS Impact
,  'CREATE NONCLUSTERED INDEX ix_IndexName ON ' + sys.objects.name COLLATE DATABASE_DEFAULT + ' ( ' + IsNull(mid.equality_columns, '') + CASE WHEN mid.inequality_columns IS NULL
                THEN '' 
    ELSE CASE WHEN mid.equality_columns IS NULL
                    THEN '' 
        ELSE ',' END + mid.inequality_columns END + ' ) ' + CASE WHEN mid.included_columns IS NULL
                THEN '' 
    ELSE 'INCLUDE (' + mid.included_columns + ')' END + ';' AS CreateIndexStatement
, mid.equality_columns
, mid.inequality_columns
, mid.included_columns 
    FROM sys.dm_db_missing_index_group_stats AS migs 
            INNER JOIN sys.dm_db_missing_index_groups AS mig ON migs.group_handle = mig.index_group_handle 
            INNER JOIN sys.dm_db_missing_index_details AS mid ON mig.index_handle = mid.index_handle AND mid.database_id = DB_ID() 
            INNER JOIN sys.objects WITH (nolock) ON mid.OBJECT_ID = sys.objects.OBJECT_ID 
    WHERE     (migs.group_handle IN
        ( 
        SELECT     TOP (500) group_handle 
            FROM          sys.dm_db_missing_index_group_stats WITH (nolock) 
            ORDER BY (avg_total_user_cost * avg_user_impact) * (user_seeks + user_scans) DESC))  
        AND OBJECTPROPERTY(sys.objects.OBJECT_ID, 'isusertable')=1 
    ORDER BY 2 DESC , 3 DESC


--Sugestão de index sendo pouco usado, use consulta abaixo:

	SELECT o.name, indexname=i.name, i.index_id 
, reads=user_seeks + user_scans + user_lookups 
, writes = user_updates 
, rows = (SELECT SUM(p.rows) FROM sys.partitions p WHERE p.index_id = s.index_id AND s.object_id = p.object_id)
, CASE
 WHEN s.user_updates < 1 THEN 100
 ELSE 1.00 * (s.user_seeks + s.user_scans + s.user_lookups) / s.user_updates
 END AS reads_per_write
, 'DROP INDEX ' + QUOTENAME(i.name) 
+ ' ON ' + QUOTENAME(c.name) + '.' + QUOTENAME(OBJECT_NAME(s.object_id)) as 'drop statement'
FROM sys.dm_db_index_usage_stats s 
INNER JOIN sys.indexes i ON i.index_id = s.index_id AND s.object_id = i.object_id 
INNER JOIN sys.objects o on s.object_id = o.object_id
INNER JOIN sys.schemas c on o.schema_id = c.schema_id
WHERE OBJECTPROPERTY(s.object_id,'IsUserTable') = 1
AND s.database_id = DB_ID() 
AND i.type_desc = 'nonclustered'
AND i.is_primary_key = 0
AND i.is_unique_constraint = 0
AND (SELECT SUM(p.rows) FROM sys.partitions p WHERE p.index_id = s.index_id AND s.object_id = p.object_id) > 10000
ORDER BY reads
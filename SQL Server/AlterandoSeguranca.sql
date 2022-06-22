
ALTER SERVER ROLE [dbcreator] ADD MEMBER [marco]

-- Usuário marco pode criar bases

ALTER SERVER ROLE [dbcreator] DROP MEMBER [marco]

-- Retirou marco das autorizações de criação de bases
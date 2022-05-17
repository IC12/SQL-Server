EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'SUCOS_VENDAS_05'
GO
use [SUCOS_VENDAS_05];
GO
use [master];
GO
USE [master]
GO
ALTER DATABASE [SUCOS_VENDAS_05] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
/****** Object:  Database [SUCOS_VENDAS_05]    Script Date: 20/10/2021 12:30:00 ******/
DROP DATABASE [SUCOS_VENDAS_05]
GO

drop database[SUCOS_VENDAS_04]

drop database[SUCOS_VENDAS_03]
drop database[SUCOS_VENDAS_02]
drop database[SUCOS_VENDAS_01]

create database SUCOS_VENDAS
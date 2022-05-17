create database SUCOS_VENDAS_01

create database SUCOS_VENDAS_02
on (name = 'SUCOS_VENDAS.DAT',
	filename = 'C:\TEMP2\SALES_VENDAS_02.MDF',
	size = 10mb,
	maxsize = 50mb,
	filegrowth = 5mb )
log on
(name = 'SUCOS_VENDAS.LOG',
filename = 'C:\TEMP2\SALES_VENDAS_02.LDF',
size = 10mb,
	maxsize = 50mb,
	filegrowth = 5mb )

CREATE DATABASE [SUCOS_VENDAS_06]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SUCOS_VENDAS_06', 
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SUCOS_VENDAS_06.mdf' , 
SIZE = 10240KB , 
MAXSIZE = 25600KB , 
FILEGROWTH = 10240KB )
 LOG ON 
( NAME = N'SUCOS_VENDAS_06_log', 
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SUCOS_VENDAS_06_log.ldf' , 
SIZE = 10240KB , 
MAXSIZE = 25600KB , 
FILEGROWTH = 5120KB )
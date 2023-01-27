create database bigdata
go
use bigdata
drop table if exists sales
create table sales(

Region varchar(100),
Country varchar(100),
ItemType varchar(100),
Sales_Channel varchar(100),
Order_Priority char,
Order_Date datetime,
Order_ID int,
Ship_Date datetime,
UnitsSold int,
UnitPrice decimal(18,2),
UnitCost decimal(18,2),
TotalRevenue decimal(18,2),
TotalCost decimal(18,2),
TotalProfit decimal(18,2)
)


--copia el fichero 5MSalesRecords.csv en la carpeta backup de tu contenedor.
GO

BULK INSERT sales FROM '/var/opt/mssql/backup/5mSalesRecords.csv'
   WITH (
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
);
GO

--ver indices de una tabla
exec sp_helpindex 'sales'
--borrar planes de ejecución en memoria
DBCC FREEPROCCACHE WITH NO_INFOMSGS
--vaciar cache
DBCC DROPCLEANBUFFERS WITH NO_INFOMSGS 


--consulta 
select count(1) from (select distinct region,country from sales 
) as t1






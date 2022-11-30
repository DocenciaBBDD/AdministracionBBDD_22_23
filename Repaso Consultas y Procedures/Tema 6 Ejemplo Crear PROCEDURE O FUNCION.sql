--------------------Ejemplo Procedure con parametro---------------------------------- 
GO
CREATE OR ALTER PROCEDURE psaluda
  @nombre as varchar(10),
  @apellido as varchar(50)
AS
BEGIN
  --PON AQUI EL ALGORITMO PARA RESOLVER EL PROCEDURE
  print 'hola' +' ' + @nombre + ' ' + @apellido
-- FIN ALGORITMO PARA RESOLVER EL PROCEDURE
END
GO

exec psaluda 'bernat', 'costa'

--------------------Ejemplo Funcion con parametro----------------------------------
GO
CREATE OR ALTER FUNCTION dbo.fsaluda(@nombre as varchar(10))
RETURNS VARCHAR(15)
AS
BEGIN
  DECLARE @resultado as varchar(15)
  -- PONGO EL ALGORITMO PARA CALCULAR EL RESULTADO DE LA FUNCIÓN
  SET @resultado = 'hola ' + @nombre
  -- FIN ALGORITMO 
  RETURN @resultado
END
GO

print dbo.fsaluda('bernat')

--------------------------------Ejemplo funcion que devuelve tabla------------------------------------------
use Arepezo

GO
CREATE OR ALTER FUNCTION dbo.MenuPrecioMax( @preciomax as decimal(18,2))
RETURNS TABLE
AS
RETURN 
---INSERTAR AQUI LA CONSULTA QUE QUIERA DEVOLVER
SELECT *
FROM menu
where precioventa <@preciomax
--FIN CONSULTA
GO



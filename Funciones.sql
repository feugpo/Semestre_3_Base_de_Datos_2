--EJERCICIO 6 FUNCIONES
USE OBLSem2;
-- b)
CREATE FUNCTION cantidadVul(@dias int, @zonaId int)
RETURNS int
AS
BEGIN
	DECLARE @return int
	SELECT @return = COUNT(cv.VulnFchScanU)
	FROM ZONAS z, CTRLVULNERABILIDADES cv 
	WHERE z.ZonaId = cv.ZonaId AND
		  z.ZonaId = @zonaId AND
		  cv.VulnFchScanU > DATEADD(DD, -@dias, GETDATE())
	RETURN @return
END
----------------------------------------------------------------------------------------------------------------------
SELECT dbo.cantidadVul(30,z.ZonaId), z.ZonaNom
FROM ZONAS z
----------------------------------------------------------------------------------------------------------------------
--c)
CREATE FUNCTION zonaVulnerable(@herramienta varchar(20))
RETURNS varchar (50)
AS
BEGIN
	DECLARE @return varchar(50),
	@idH int
	SELECT @idH = e.EscanId
	FROM ESCANEOS e
	WHERE e.ScnHerr = @herramienta

	SELECT @return = z.ZonaNom
	FROM ZONAS z JOIN (SELECT TOP 1 COUNT(cv.CtrlVulId) AS Total_Vul, cv.ZonaId, MAX(cv.VulnFchScanU) AS Reciente
			       FROM CTRLVULNERABILIDADES cv, ESCANEOS e
			       WHERE cv.EscanId = e.EscanId AND
					     cv.VulnCriticidad = 'ALTA' AND
					     e.EscanId = @idH
			       GROUP BY cv.ZonaId
			       ORDER BY Total_Vul DESC, Reciente DESC) x ON x.ZonaId = z.ZonaId
	RETURN @return
END
----------------------------------------------------------------------------------------------------------------------
SELECT dbo.zonaVulnerable('CCleaner')
----------------------------------------------------------------------------------------------------------------------
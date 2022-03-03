Use OBLSem2;
--EJERCICIO 5 CONSULTAS
--a)
SELECT vuln.*,z.ZonaNom as Zona
FROM CTRLVULNERABILIDADES vuln, ZONAS z, TAREAS tar
WHERE vuln.ZonaId=z.ZonaId AND
	  vuln.TarId=tar.TarId AND
	  vuln.VulnCriticidad ='ALTA' AND
	  tar.TarEstado NOT IN('RESUELTO','CANCELADA')
ORDER BY vuln.VulnFchScanO DESC;

--b)
SELECT DISTINCT u.Usuario, u.UsuPsw, u.UsuNomApp, u.UsuMail 
FROM USUARIOS u, PERMISOSCNX p
WHERE u.Usuario = p.Usuario AND p.Usuario NOT IN (
SELECT per.Usuario 
FROM PERMISOSCNX per 
WHERE per.Habilitado = 'No');
--c)
SELECT *
FROM Zonas
WHERE ZonaId NOT IN(SELECT ZonaId
					FROM CTRLVULNERABILIDADES
					WHERE VulnCriticidad = 'ALTA' AND
							VulnFchScanU >= DATEADD(MM, -3, GETDATE()) AND
							VulnFchScanU <= GETDATE()) AND
		            ZonaId IN (SELECT Zonas.ZonaId
					FROM Equipos, Zonas , CtrlConexiones
					WHERE Equipos.ZonaId=Zonas.ZonaId AND
						  Equipos.EqpIp=CtrlConexiones.EqpIp AND
						  CTRLCONEXIONES.CnxFchHr >= DATEADD(MM, -1, GETDATE()) AND
						  CTRLCONEXIONES.Usuario IN (SELECT Usuario
													 FROM CTRLCONEXIONES
													 WHERE CnxPermitida = 0
													 GROUP BY Usuario
													 HAVING COUNT(DISTINCT(Usuario)) < 3));

--d)
SELECT CTRL.Usuario, DATEDIFF(DAY, MAX(CTRL.CnxFchHr),GETDATE()) AS UltimaConexionEnDias, EQ.EqpNom AS NombreEquipo
FROM CTRLCONEXIONES CTRL, EQUIPOS EQ 
WHERE CTRL.EqpIp=EQ.EqpIp AND
	  CTRL.Usuario NOT IN(SELECT Usuario
						  FROM CTRLCONEXIONES
					      WHERE CnxPermitida = 1 AND CnxFchHr > DATEADD(DD, -180, GETDATE()))
GROUP BY CTRL.Usuario, EQ.EqpNom;

--e)
SELECT R.RaciUsuario AS Usuario, AVG(T.TarHrsAcum) AS PromedioHorasTrabajadas
FROM RACI R , TAREAS T
WHERE R.RaciUsuario IN(SELECT RA.RaciUsuario
					   FROM RACI RA,TAREAS TAR
					   WHERE RA.RaciTarId=TAR.TarId AND
					   RA.RaciRol='R' AND
					   TAR.TarEstado = 'EN DESARROLLO' 
					   GROUP BY RA.RaciUsuario
					   HAVING COUNT(TAR.TarId) > 3)
GROUP BY R.RaciUsuario;
--f)

SELECT z.ZonaNom AS Nombre_Zona, COUNT(DISTINCT tabla.CnxId) AS Conexiones_No_Permitidas, dbo.cantidadVul(30,z.ZonaId) AS Vulnerabilidades_30_Dias
FROM ZONAS z FULL OUTER JOIN (SELECT e.ZonaId, c.CnxId  
							  FROM CTRLCONEXIONES c, EQUIPOS e  
							  WHERE c.EqpIP = e.EqpIP AND 
							  c.CnxPermitida = 0 --AND
							  --c.CnxFchHr >= DATEADD(DD, -30, GETDATE()) -->SI SON LAS CONEXIONES DE LOS ULTIMOS 30 DÕAS AGREGAR ESTA LÌNEA Y EL AND ^^
							  ) tabla ON z.ZonaId = tabla.ZonaId
GROUP BY z.ZonaNom, z.ZonaId;

--EJERCICIO 8 VISTAS
--a)
CREATE VIEW CasosPorHerramienta
AS 
	SELECT e.EscanId, e.ScnHerr, SUM(CASE
									  WHEN v.VulnCriticidad = 'BAJA' THEN 1 
									  ELSE 0
									 END) AS Casos_Vuln_Baja, SUM(CASE
																   WHEN v.VulnCriticidad = 'MEDIA' THEN 1 
																   ELSE 0 
																  END) AS Casos_Vuln_Media, SUM(CASE 
																								 WHEN v.VulnCriticidad = 'ALTA' THEN 1 
																								 ELSE 0
																								END) AS Casos_Vuln_Alta
	--FROM CTRLVULNERABILIDADES v FULL OUTER JOIN ESCANEOS e ON v.EscanId = e.EscanId
	FROM CTRLVULNERABILIDADES v, ESCANEOS e 
	WHERE v.EscanId = e.EscanId AND
		  v.VulnFchScanO < DATEADD(DD, -30, GETDATE())
	GROUP BY e.EscanId, e.ScnHerr;


--b)
CREATE VIEW UsuarioCritico
AS
	SELECT TOP 1 u.UsuNomApp, COUNT(DISTINCT t.TarId) AS Tareas_En_Desarrollo, AVG(t.TarHrsAcum) AS Promedio_Hs_Dedicadas
	FROM TAREAS t, USUARIOS u, RACI r
	WHERE r.RaciUsuario = u.Usuario AND
		  r.RaciTarId = t.TarId AND
		  r.RaciRol = 'R' AND
		  t.TarEstado = 'EN DESARROLLO'
	GROUP BY u.UsuNomApp
	ORDER BY Tareas_En_Desarrollo DESC;





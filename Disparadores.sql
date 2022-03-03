-- EJERCICIO 7 TRIGGERS
--a)
Use OBLSem2;

CREATE TRIGGER TR_EQUIPOS
ON EQUIPOS
INSTEAD OF INSERT
AS
BEGIN
 IF EXISTS (SELECT i.EqpIP, i.EqpNom, i.EqpSO, i.EqpTipo, i.ZonaId 
			FROM inserted i JOIN (SELECT *,
								  CASE
									  WHEN ins.EqpNom LIKE 'WKS%' AND ins.EqpTipo = 'Terminal' THEN 1
									  WHEN ins.EqpNom LIKE 'SRV%' AND ins.EqpTipo = 'Servidor' THEN 1
									  WHEN ins.EqpNom LIKE 'IMP%' AND ins.EqpTipo = 'Impresora' THEN 1
									  WHEN ins.EqpNom LIKE 'TBL%' AND ins.EqpTipo = 'Tablet' THEN 1
									  ELSE 0
								  END AS Valido
								  FROM inserted ins) Tabla ON i.EqpIP = Tabla.EqpIP
			WHERE CAST(SUBSTRING(i.EqpIP, 1, 3)as int) <= CAST('255'as int) AND
			      CAST(SUBSTRING(i.EqpIP, 5, 3)as int) <= CAST('255'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 9, 3)as int) <= CAST('255'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 13, 3)as int) <= CAST('255'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 1, 3)as int) >= CAST('000'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 5, 3)as int) >= CAST('000'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 9, 3)as int) >= CAST('000'as int) AND
				  CAST(SUBSTRING(i.EqpIP, 13, 3)as int) >= CAST('000'as int) AND
				  Valido = 1)
	INSERT INTO EQUIPOS (EqpIP, EqpNom, EqpSO, EqpTipo, ZonaId) SELECT i.EqpIP, i.EqpNom, i.EqpSO, i.EqpTipo, i.ZonaId
																FROM inserted i
END
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO EQUIPOS (EqpIP, EqpNom, EqpSO, EqpTipo, ZonaId) VALUES ('254.177.012.012', 'IMP_nombre_8', 'windows', 'Tablet', 8) --nombre tipo invalido
INSERT INTO EQUIPOS (EqpIP, EqpNom, EqpSO, EqpTipo, ZonaId) VALUES ('254.160.012.012', 'nombre_8_TBL', 'windows', 'Tablet', 8) --nombre invalido // TBL debe ser prefijo
INSERT INTO EQUIPOS (EqpIP, EqpNom, EqpSO, EqpTipo, ZonaId) VALUES ('254.300.300.012', 'IMP_nombre_10', 'windows', 'Impresora', 8) --ip invalido
INSERT INTO EQUIPOS (EqpIP, EqpNom, EqpSO, EqpTipo, ZonaId) VALUES ('254.155.000.020', 'TBL_nombre_tablet', 'windows', 'Tablet', 8) 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--b)

CREATE TRIGGER TR_CTRLCONEXIONES_UNO
ON CTRLCONEXIONES
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @habilitado varchar(2)
	DECLARE @permiso varchar(2)
	DECLARE @ip varchar (50) = (SELECT i.EqpIP FROM inserted i)
	DECLARE @usuario varchar (50) = (SELECT i.Usuario FROM inserted i)
	EXECUTE spu_UsuarioPermitido @ip, @usuario, @permiso out
	PRINT @permiso
	IF @permiso = 'No'
		BEGIN
			INSERT INTO CTRLCONEXIONES (Usuario, EqpIP, CnxFchHr, CnxPermitida, TarID) SELECT i.Usuario, i.EqpIp, CURRENT_TIMESTAMP, 0, i.TarID FROM inserted i	
			PRINT 'insert con permitida = 0'
		END
	ELSE 
		BEGIN
			INSERT INTO CTRLCONEXIONES (Usuario, EqpIP, CnxFchHr, CnxPermitida, TarID) SELECT i.Usuario, i.EqpIp, CURRENT_TIMESTAMP, 1, i.TarID FROM inserted i
			PRINT 'insert con permitida = 1'
		END
END
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DROP TRIGGER TR_CTRLCONEXIONES_UNO;

INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr) VALUES ('usuario1', '192.168.045.113', '');
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr) VALUES ('FeUg', '192.168.045.153', '');
INSERT INTO CTRLCONEXIONES (Usuario, EqpIP, CnxFchHr) VALUES ('usuario1', '192.168.045.151','')
INSERT INTO CTRLCONEXIONES (Usuario, EqpIP, CnxFchHr) VALUES ('usuario1', '192.168.045.114','')
INSERT INTO CTRLCONEXIONES (Usuario, EqpIP) VALUES ('usuario1', '192.168.045.114')

--Conflicto entre triggers, drop uno o el otro
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----c)
Use OBLSem2;

CREATE TRIGGER TR_CTRLVULNERABILIDADES
ON CTRLVULNERABILIDADES
INSTEAD OF INSERT
AS
BEGIN
	--IF EXISTS (SELECT *
	--		     FROM CTRLVULNERABILIDADES cv, inserted i
    --           WHERE cv.EscanId = i.EscanId AND
	--				   cv.VulnFchScanO = i.VulnFchScanO AND
	--				   cv.ZonaId = i.ZonaId AND
	--				   cv.TarID IS NULL OR
	--				   cv.TarID IN (SELECT t.TarId 
	--			                    FROM TAREAS t
	--			                    WHERE t.TarEstado = 'EN DESARROLLO'))
	IF EXISTS (SELECT *--existe una con mismo escanid fecha origen? (constraint unique)
			   FROM (SELECT *   --vulnerabilidad tarea nula
				     FROM CTRLVULNERABILIDADES cv 
				     WHERE cv.TarID IS NULL) tabla1 FULL OUTER JOIN (SELECT * --outer join con vulnerabilidad tarea en desarrollo
															         FROM CTRLVULNERABILIDADES cv
																	 WHERE cv.TarID IN (SELECT t.TarId 
																						FROM TAREAS t
																						WHERE t.TarEstado = 'EN DESARROLLO')) tabla2 ON tabla1.CtrlVulId = tabla2.CtrlVulId, inserted i
			  WHERE i.EscanId = tabla2.EscanId AND
					i.VulnFchScanO = tabla2.VulnFchScanO OR
				    i.EscanId = tabla1.EscanId AND
				    i.VulnFchScanO = tabla1.VulnFchScanO)
		BEGIN
			UPDATE CTRLVULNERABILIDADES 
			SET VulnFchScanU = GETDATE()
			FROM inserted i, CTRLVULNERABILIDADES cv
			WHERE cv.EscanId = i.EscanId AND     --usando la UniqueConstraint
			      cv.VulnFchScanO = i.VulnFchScanO 
			PRINT 'Ya existe registro, se actualiza la fecha de ultimo caso'
		END
	ELSE
		BEGIN
			INSERT INTO CTRLVULNERABILIDADES (EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad) SELECT i.EscanId, i.ZonaId, GETDATE(), i.VulnFchScanU, i.VulnCriticidad FROM inserted i
			PRINT 'No existe registro, se inserta nueva vulnerabilidad'
		END
END
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnCriticidad) VALUES (1, 3,'BAJA'),
																		 (2, 7, 'ALTA'),
																		 (3, 4, 'MEDIA'),
																		 (3, 3, 'BAJA'),
																		 (4, 8, 'MEDIA');
--trigger crea todas con fecha de hoy: se puede cambiar getdate() por i.VulnFchScanO para pasarle una fecha Origen antigua
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--d)

CREATE TRIGGER TR_CTRLCONEXIONES_DOS
ON CTRLCONEXIONES
INSTEAD OF DELETE
AS
BEGIN
DELETE
FROM CTRLCONEXIONES
WHERE CnxId IN (SELECT CnxId
				FROM deleted
				WHERE CnxFchHr < DATEADD(YYYY,-1,GETDATE()) AND
		        TarID IS NULL) 
END
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DROP TRIGGER TR_CTRLCONEXIONES_DOS;

INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr) VALUES ('FeUg', '192.168.045.122', '2020-04-04 02:31:19'),
															('FeUg', '192.168.045.151', '2017-05-30 15:40:41'),
															('usuario1', '192.168.045.161', '2020-09-28 11:57:25'),
															('usuario1', '192.168.045.161', '2020-09-28 11:57:25'),
															('Maxi', '192.168.045.123', '2020-08-29 21:05:05');
--Conflicto entre triggers, drop uno o el otro
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--e)

CREATE TRIGGER TR_TAREAS
ON TAREAS
INSTEAD OF UPDATE
AS
BEGIN
	IF EXISTS (SELECT i.TarId FROM inserted i WHERE i.TarEstado = 'CANCELADA')
		BEGIN
			PRINT 'Si se cambia estado a CANCELADA'
			UPDATE CTRLVULNERABILIDADES
				   SET TarID = null
				   FROM inserted i, CTRLVULNERABILIDADES cv
				   WHERE cv.TarID = i.TarId
			PRINT 'PASO update 1'
			UPDATE CTRLCONEXIONES
				   SET TarID = null
				   FROM inserted i, CTRLCONEXIONES c
				   WHERE c.TarID = i.TarId
			PRINT 'PASO update 2'
			DELETE 
			FROM RACI 
			WHERE RaciTarId = (SELECT TarId
							   FROM inserted)
			PRINT 'PASO DELETE RACI'
			UPDATE TAREAS 
				   SET TarEstado = (SELECT TarEstado FROM inserted)
				   FROM inserted i, TAREAS t
				   WHERE i.TarId = t.TarId
			PRINT 'Si se cambia estado a CANCELADA'
		END
	ELSE 
		BEGIN
			UPDATE TAREAS
			SET TarEstado = (SELECT i.TarEstado
							 FROM inserted i
							 WHERE i.TarId = TarId)
			FROM inserted i, TAREAS t				  
			WHERE i.TarId = t.TarId
		END
END

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE TAREAS
SET TarEstado = 'EN DESARROLLO'
WHERE TarId = 22

UPDATE TAREAS
SET TarEstado = 'CANCELADA'
WHERE TarId = 22
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



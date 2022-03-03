-- EJERCICIO 6 PROCEDIMIENTOS
use OBLSem2;
-- a)
CREATE PROCEDURE spu_UsuarioPermitido
@EqIp varchar(15),
@Usuario varchar(50),
@Permiso varchar (2) out
AS
BEGIN
	SET NOCOUNT ON 
	SELECT @Permiso = p.Habilitado
	FROM USUARIOS u, PERMISOSCNX p
	WHERE u.Usuario = p.Usuario AND
		  p.ZonaId = (SELECT z.ZonaId
					 FROM EQUIPOS e, ZONAS z
					 WHERE e.ZonaId = z.ZonaId AND
					 e.EqpIP = @EqIp) AND
	@Usuario = p.Usuario
	RETURN
END

----------------------------------------------------------------------------------------------------------------------
DROP PROCEDURE spu_UsuarioPermitido
DECLARE @Permiso varchar(2)
EXEC spu_UsuarioPermitido '192.168.045.121', 'usuario1', @Permiso out
PRINT @Permiso 
----------------------------------------------------------------------------------------------------------------------
--d)
CREATE PROCEDURE spu_TareasEnDesarrolloAtrasadas
@usuario varchar(50),
@rol char(1),
@enDesarrollo int out,
@atrasadas int out
AS
BEGIN
	SELECT @enDesarrollo = COUNT(DISTINCT t.TarId), @atrasadas= tabla.Total_Atrasadas
	FROM TAREAS t, USUARIOS u , RACI r FULL OUTER JOIN (SELECT COUNT(t.TarId) AS Total_Atrasadas, u.Usuario
														FROM TAREAS t, USUARIOS u , RACI r
														WHERE r.RaciUsuario = u.Usuario AND
															  r.RaciTarId = t.TarId AND
															  r.RaciRol = @rol AND
															  r.RaciUsuario = @usuario AND
															  t.TarEstado = 'EN DESARROLLO' AND
															  t.TarFchFPrev < CAST(GETDATE() AS DATE)
														GROUP BY(u.Usuario)) tabla ON tabla.Usuario = r.RaciUsuario
	WHERE r.RaciUsuario = u.Usuario AND
		  r.RaciTarId = t.TarId AND
		  r.RaciRol = @rol AND
		  r.RaciUsuario = @usuario AND
		  t.TarEstado = 'EN DESARROLLO' 
	GROUP BY u.Usuario, tabla.Total_Atrasadas
END
----------------------------------------------------------------------------------------------------------------------
DECLARE @d int,
		@a int
EXEC spu_TareasEnDesarrolloAtrasadas'MatiPol', 'I', @d out, @a out
PRINT  @d
PRINT  @a
----------------------------------------------------------------------------------------------------------------------
--e)
CREATE PROCEDURE spu_CasosVulnerablilidad
@vulnerabilidad varchar(50),
@totalCasos int out,
@primeraDeteccion date out,
@ultimaDeteccion date out,
@promedioHoras int out,
@tareasResueltas bit out
AS
BEGIN

	SELECT @totalCasos = COUNT(DISTINCT v.CtrlVulId), @primeraDeteccion = MIN(v.VulnFchScanO), @ultimaDeteccion = MAX(v.VulnFchScanO), @promedioHoras = AVG(t.TarHrsAcum),
	@tareasResueltas = CASE
						WHEN e.EscanId IN (SELECT DISTINCT es.EscanId
											FROM TAREAS tar, CTRLVULNERABILIDADES vul, ESCANEOS es
											WHERE vul.TarID = tar.TarId AND
											es.EscanId = vul.EscanId AND
											es.ScnVulnNom = @vulnerabilidad AND
											tar.TarEstado = 'RESUELTO') THEN 1
						ELSE 0
					  END 
	FROM ESCANEOS e, CTRLVULNERABILIDADES v, TAREAS t
	WHERE e.EscanId = v.EscanId AND
		  t.TarId = v.TarID AND
		  e.ScnVulnNom = @vulnerabilidad 
	GROUP BY e.EscanId
END

----------------------------------------------------------------------------------------------------------------------
DECLARE @total int,
		@primer date,
		@ultimo date,
		@horas int,
		@resuelto bit
EXEC spu_CasosVulnerablilidad'Malware', @total out, @primer out, @ultimo out, @horas out, @resuelto out
PRINT  @total
PRINT  @primer
PRINT  @ultimo
PRINT  @horas
PRINT  @resuelto
----------------------------------------------------------------------------------------------------------------------
































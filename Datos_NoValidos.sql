use OBLSem2;
INSERT INTO ZONAS (ZonaDescrip) VALUES ('Equipo con proyector de la sala de reuniones'); --nombre obligatorio
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('DMZ', 'Equipos seguridad de la Red Perimetral'); --nombre repetido
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('DMZ', 'Equipos seguridad de la Red Perimetral'); --nombre repetido

INSERT INTO USUARIOS (Usuario, UsuNomApp, UsuMail) VALUES ('usuario52', 'Esteban Quito', 'Equito@gmail.com'); --Password Obligatoria
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('usuario99', 'contraPassword', 'Esteban Quito', 'Equito@gmail.com'); --Al menos un dígito

INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.191', 'WKS_Servidores_04', 'Computador', 'Windows 7', 8); --tipo equivocado
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.192', 'WKS_Servidores_00', 'Terminal', 'Windows 7', 8); --nombre repetido
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.193', 'WKS_Servidores_00', 'Terminal', 'Windows 7', 8); --nombre repetido
INSERT INTO EQUIPOS(EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('WKS_Servidores_05', 'Terminal', 'Windows 7', 8); --falta ip
INSERT INTO EQUIPOS(EqpIP, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.195', 'Terminal', 'Windows 7', 8); --falta nombre
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpSO, ZonaId) VALUES ('192.168.045.196', 'WKS_Servidores_07', 'Windows 7', 8); --falta tipo
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO) VALUES ('192.168.045.197', 'WKS_Servidores_08', 'Terminal', 'Windows 7'); --falta zona
--PRUEBAS DE INSERCION CON IP y EL NOMBRE EN EL TRIGGER

INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('', 2, '2020-10-10', '2020-10-15', '2020-10-16', 'Remover malware de computadora portería'); --falta estado
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 2, '2020-10-15', '2020-10-16', 'Remover malware de computadora portería'); --falta fecha inicio
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 2, '2020-10-10', '2020-10-16', '', 'Remover malware de computadora portería'); --falta fecha prevista fin
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 2, '2020-10-10', '2020-10-15', '2020-10-16'); --falta descripción
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 0, '2020-10-10', '2020-10-15', '2020-10-16', 'Remover malware de computadora portería'); --horas == 0
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('TERMINADA', 2, '2020-10-10', '2020-10-15', '2020-10-16', 'Remover malware de computadora portería'); --estado equivocado

INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad) VALUES (2, 4, '2020-09-10', '2020-09-12', 'LEVE'); --Criticidad errada
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnCriticidad) VALUES (3, 4, '2020-08-02', 'BAJA'); -- escan ID+fecha origen repetida
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnCriticidad) VALUES (4, 7, 'BAJA'); -- falta fecha origen // Con el trigger activo lo asigna el
INSERT INTO CTRLVULNERABILIDADES(EscanId, VulnFchScanO, VulnCriticidad) VALUES (2,'2020-07-18', 'LEVE'); --falta zona
INSERT INTO CTRLVULNERABILIDADES(ZonaId, VulnFchScanO, VulnCriticidad) VALUES (4, '2020-06-11', 'LEVE'); --falta escan id

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 2); -- permiso repetido no respeta usuario + zona => unique




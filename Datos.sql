Use OBLSem2;

INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('DMZ', 'Equipos seguridad de la Red Perimetral');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Recepción', 'Zona de ingreso y atención a clientes');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Recreación', 'Zona de recreación y cantina empleados');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Recursos Humanos', 'Zona de equipo de recursos humanos');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Contaduría', 'Zona de equipo económico');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Administración', 'Oficina del Director');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Sala de reuniones', 'Equipo con proyector de la sala de reuniones');
INSERT INTO ZONAS (ZonaNom, ZonaDescrip) VALUES ('Servidores', 'Servidores de datos de la empresa');

INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('usuario1', 'contra123', 'Juan Perez', 'Juan@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('RominaRecepcion', 'ro579rec', 'Romina Giménez', 'Romina19@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('miCuenta', 'pass98seña', 'Carlos Gomez', 'Charlie@Yahoo.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('RicardoRomano', 'Ric54Ro', 'Ricardo Romano', 'RicardoR@Outlook.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('Daniel', 'dan125iel', 'Daniel Giménez', 'Dani@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('Maxi', 'max88rrhh', 'Maximiliano Rodriguez', 'MaxiRo@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('MatiPol', 'asd560', 'Matías Poletti', 'MatiPol@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('FeUg', 'fe27ug09po', 'Fernando Ugarte', 'fernandoU@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('SegundoAdmin', 'segundo789', 'Segundo Goncalvez', 'Segundo@gmail.com');
INSERT INTO USUARIOS (Usuario, UsuPsw, UsuNomApp, UsuMail) VALUES ('Lore25', 'lorena7234', 'Lorena Piriz', 'Lorena@Yahoo.com');


INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.113', 'WKS_Porteria_00', 'Terminal', 'Windows 7', 1);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.114', 'WKS_Porteria_01', 'Terminal', 'Windows 7', 1);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.121', 'WKS_Recepcion_00', 'Terminal', 'Windows 10', 2);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.122', 'WKS_Recepcion_01', 'Terminal', 'Windows 10', 2);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.123', 'IMP_Recepcion_00', 'Impresora', 2);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.124', 'IMP_Recepcion_01', 'Impresora', 2);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.131', 'TBL_Recepcion_00', 'Tablet', 'Android OS', 2);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.141', 'WKS_Cantina_00', 'Terminal', 'Windows 10', 3);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.142', 'IMP_Cantina_00', 'Impresora', 3);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.151', 'WKS_RRHH_00', 'Terminal', 'Windows 10', 4);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.152', 'IMP_RRHH_00', 'Impresora', 4);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.153', 'WKS_Contaduria_00', 'Terminal', 'Windows 10', 5);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.154', 'IMP_Contaduria_00', 'Impresora', 5);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.161', 'WKS_Administracion_00', 'Terminal', 'Windows 10', 6);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.162', 'TBL_Administracion_00', 'Tablet', 'Android OS', 6);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.163', 'IMP_Administracion_00', 'Impresora', 6);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.171', 'WKS_Sala_00', 'Terminal', 'Windows 10', 7);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.181', 'WKS_Servidores_00', 'Terminal', 'Windows XP', 8);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, EqpSO, ZonaId) VALUES ('192.168.045.182', 'WKS_Servidores_01', 'Terminal', 'Windows 7', 8);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.183', 'SRV_Servidores_00', 'Servidor', 8);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.184', 'SRV_Servidores_01', 'Servidor', 8);
INSERT INTO EQUIPOS(EqpIP, EqpNom, EqpTipo, ZonaId) VALUES ('192.168.045.185', 'SRV_Servidores_02', 'Servidor', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('usuario1', 1,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('usuario1', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 7);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('usuario1', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('RominaRecepcion', 2,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('RominaRecepcion', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 7);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RominaRecepcion', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('miCuenta', 2,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('miCuenta', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 7);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('miCuenta', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RicardoRomano', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RicardoRomano', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('RicardoRomano', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('RicardoRomano', 4,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RicardoRomano', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RicardoRomano', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('RicardoRomano', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('RicardoRomano', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Daniel', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Daniel', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Daniel', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Daniel', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Daniel', 5,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Daniel', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Daniel', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Daniel', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Maxi', 1,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Maxi', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 6);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 7);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('Maxi', 8);

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('MatiPol', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('MatiPol', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('MatiPol', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('MatiPol', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('MatiPol', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('MatiPol', 6,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('MatiPol', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('MatiPol', 8,'Si');

INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 1,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 2,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 4,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 5,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 6,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('FeUg', 8,'Si');

INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('SegundoAdmin', 1);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('SegundoAdmin', 2);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('SegundoAdmin', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('SegundoAdmin', 4);
INSERT INTO PERMISOSCNX(Usuario, ZonaId) VALUES ('SegundoAdmin', 5);
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('SegundoAdmin', 6,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('SegundoAdmin', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('SegundoAdmin', 8,'Si');

INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 1,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 2,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 3,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 4,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 5,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 6,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 7,'Si');
INSERT INTO PERMISOSCNX(Usuario, ZonaId, Habilitado) VALUES ('Lore25', 8,'Si');

INSERT INTO ESCANEOS(ScnHerr, ScnVulnNom, ScnDescrip) VALUES ('McAfee', 'Virus', 'Escaneo para detección de virus');
INSERT INTO ESCANEOS(ScnHerr, ScnVulnNom, ScnDescrip) VALUES ('Crowdstrike', 'Malware', 'Escaneo para detección de malware');
INSERT INTO ESCANEOS(ScnHerr, ScnVulnNom, ScnDescrip) VALUES ('CCleaner', 'Limpieza', 'Escaneo para detección de archivos innecesarios');
INSERT INTO ESCANEOS(ScnHerr, ScnVulnNom, ScnDescrip) VALUES ('AdwCleaner', 'Adware', 'Escaneo para detección de publicidad indeseada');

INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 3, '2020-07-02', '2020-07-03', '2020-07-03', 'Remover Adware de tablet Recepción'); --1 zona 2
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 9, '2020-07-09', '2020-07-15', '2020-07-10', 'Remover virus de terminal Servidores'); --2 zona 8
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 4, '2020-08-03', '2020-08-05', '2020-08-04', 'Detectado Spam en computadora Recepción'); --3 zona 2
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 3, '2020-08-04', '2020-08-06', '2020-08-05', 'Detectado Spam en computadora Recepción'); --4 zona 2
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 3, '2020-08-19', '2020-08-21', '2020-08-20', 'Remover Adware de computadora portería'); --5 zona 1
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 10, '2020-09-06', '2020-09-10', '2020-09-08', 'Worm detectado de computadora area uso común'); --6 zona 3
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 3, '2020-09-12', '2020-09-15', '2020-09-13', 'Spyware en terminal sala reuniones');--7 zona 7
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('CANCELADA', 2, '2020-09-18', '2020-09-19', 'Remover Adware de tablet administración');--8 zona 6
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 2, '2020-10-03', '2020-10-04', '2020-10-04', 'Posible malware en terminal Recepción');--9 zona 2
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 4, '2020-10-09', '2020-10-11', '2020-10-10', 'Remover virus PC sala de reuniones');--10 zona 7
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 2, '2020-10-11', '2020-10-12', '2020-10-12', 'Remover malware de computadora portería');--11 zona 1

INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN ESPERA', 2, '2020-11-25', '2020-11-26', 'Remover malware de computadora portería'); --12 zona 1
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 4, '2020-11-13', '2020-12-15', 'Limpieza archivos PC recepción');--13 zona 2
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFin, TarFchFPrev, TarDescrip) VALUES ('RESUELTO', 3, '2020-10-05', '2020-10-6', '2020-10-07', 'Remover Adware de la PC area común');--14 zona 3
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN ESPERA', 2, '2020-11-20', '2020-11-22', 'Malware encontrado en servidores');--15 zona 8
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 4, '2020-11-19', '2020-11-22', 'Trojan encontado en PC area común');--16 zona 3
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('CANCELADA', 2, '2020-11-10', '2020-11-12', 'Spamware causando problemas en PC reuniones');--17 zona 6

INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 3, '2020-11-14', '2020-11-22', 'Malware en pc sala reuniones');--18 zona 6
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 4, '2020-11-16', '2020-11-23', 'Adware en tablet recepcion');--19 zona 3
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 2, '2020-11-18', '2020-11-24', 'Trojan encontrado en tablet Administración');--20 zona 7
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 3, '2020-11-19', '2020-11-25', 'Malware encontrado en pc Administración');--21 zona 7
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 5, '2020-11-20', '2020-11-26', 'Malware encontrado en pc de rrhh');--22 zona 4
INSERT INTO TAREAS (TarEstado, TarHrsAcum, TarFchIni, TarFchFPrev, TarDescrip) VALUES ('EN DESARROLLO', 5, '2020-11-12', '2020-11-13', 'Adware en pc Contaduría');--23 zona 5

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (1,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (1,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (1,'RominaRecepcion','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (1,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (2,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (2,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (2,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (2,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (3,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (3,'miCuenta','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (3,'RominaRecepcion','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (3,'RominaRecepcion','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (4,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (4,'miCuenta','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (4,'RominaRecepcion','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (4,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (5,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (5,'MatiPol','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (5,'usuario1','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (5,'SegundoAdmin','I');

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (6,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (6,'MatiPol','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (6,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (6,'SegundoAdmin','I');

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (7,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (7,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (7,'Daniel','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (7,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (8,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (8,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (8,'Maxi','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (8,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (9,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (9,'miCuenta','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (9,'RominaRecepcion','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (9,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (10,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (10,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (10,'Daniel','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (10,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (11,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (11,'MatiPol','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (11,'usuario1','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (11,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (12,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (12,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (12,'usuario1','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (12,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (13,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (13,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (13,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (13,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (14,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (14,'SegundoAdmin','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (14,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (14,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (15,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (15,'SegundoAdmin','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (15,'Maxi','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (15,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (16,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (16,'MatiPol','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (16,'Maxi','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (16,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (17,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (17,'MatiPol','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (17,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (17,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (18,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (18,'SegundoAdmin','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (18,'Maxi','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (18,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (19,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (19,'RominaRecepcion','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (19,'miCuenta','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (19,'Maxi','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (20,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (20,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (20,'Daniel','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (20,'SegundoAdmin','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (21,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (21,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (21,'Daniel','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (21,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (22,'FeUg','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (22,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (22,'Maxi','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (22,'MatiPol','I'); 

INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (23,'Lore25','R');
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (23,'RicardoRomano','A'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (23,'RominaRecepcion','C'); 
INSERT INTO RACI (RaciTarId, RaciUsuario, RaciRol) VALUES (23,'MatiPol','I'); 

INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (4, 2, '2020-06-30', '2020-07-03', 'BAJA', 1);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 8, '2020-07-07', '2020-07-15', 'ALTA', 2);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (3, 2, '2020-08-02', '2020-08-05', 'ALTA', 3);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (3, 2, '2020-08-03', '2020-08-06', 'ALTA', 4);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (4, 1, '2020-08-17', '2020-08-21', 'BAJA', 5);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 3, '2020-09-04', '2020-09-10', 'ALTA', 6);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 7, '2020-09-11', '2020-09-15', 'ALTA', 7);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (3, 6, '2020-09-15', '2020-09-19', 'MEDIA', 8);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 2, '2020-10-01', '2020-10-04', 'ALTA', 9);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 7, '2020-10-06', '2020-10-11', 'MEDIA', 10);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 1, '2020-10-08', '2020-10-12', 'BAJA', 11);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 1, '2020-11-20', '2020-11-20', 'BAJA', 12);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (3, 2, '2020-11-13', '2020-11-20', 'MEDIA', 13);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (4, 3, '2020-10-05', '2020-10-05', 'BAJA', 14);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 8, '2020-11-19', '2020-11-22', 'ALTA', 15);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 3, '2020-11-17', '2020-11-20', 'MEDIA', 16);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 7, '2020-11-10', '2020-10-05', 'BAJA', 17);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 7, '2020-11-12', '2020-11-20', 'BAJA', 18);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (4, 2, '2020-11-14', '2020-11-19', 'MEDIA', 19);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (1, 6, '2020-11-11', '2020-11-19', 'BAJA', 20);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 6, '2020-11-15', '2020-11-20', 'MEDIA', 21);
INSERT INTO CTRLVULNERABILIDADES(EscanId, ZonaId, VulnFchScanO, VulnFchScanU, VulnCriticidad, TarID) VALUES (2, 4, '2020-11-19', '2020-11-21', 'ALTA', 22);

INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.113', '2020-11-15 13:03:05', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.113', '2020-03-11 18:24:53', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RominaRecepcion', '192.168.045.113', '2020-11-06 15:16:22', 0); --
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.114', '2020-06-06 07:48:51', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('miCuenta', '192.168.045.114', '2020-09-23 09:00:15', 0);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.123', '2020-09-27 15:04:20', 0);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RominaRecepcion', '192.168.045.124', '2020-02-22 19:02:49', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('miCuenta', '192.168.045.122', '2020-03-16 08:51:44', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RominaRecepcion', '192.168.045.122', '2020-06-04 02:31:19', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('MatiPol', '192.168.045.151', '2020-05-04 15:40:41', 0);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RicardoRomano', '192.168.045.161', '2020-09-28 11:57:25', 0);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('Maxi', '192.168.045.123', '2020-08-29 21:05:05', 0);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.131', '2020-10-14 05:01:32', 0); 
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('usuario1', '192.168.045.114', '2020-10-24 19:40:20', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RominaRecepcion', '192.168.045.121', '2020-09-10 23:28:44', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('miCuenta', '192.168.045.122', '2020-09-02 02:26:59', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('RicardoRomano', '192.168.045.151', '2020-11-07 07:47:20', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('Daniel', '192.168.045.153', '2020-02-15 13:03:05', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('Maxi', '192.168.045.141', '2020-07-06 09:26:30', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('MatiPol', '192.168.045.161', '2020-06-20 12:56:36', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('FeUg', '192.168.045.183', '2020-09-20 19:48:20', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('SegundoAdmin', '192.168.045.163', '2020-09-22 22:31:59', 1);
INSERT INTO CTRLCONEXIONES(Usuario, EqpIP, CnxFchHr, CnxPermitida) VALUES ('Lore25', '192.168.045.185', '2020-09-08 16:30:31', 1);





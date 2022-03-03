Use OBLSem2
GO
ALTER TABLE ZONAS Drop Column ZonaId;
ALTER TABLE ZONAS Add ZonaId int IDENTITY (1,1) not null;
ALTER TABLE ZONAS Add Constraint PK_ZONAS PRIMARY KEY (ZonaId);
ALTER TABLE ZONAS Alter Column ZonaNom varchar(50) not null;
ALTER TABLE ZONAS Add Constraint UK_ZonaNom UNIQUE (ZonaNom);

ALTER TABLE USUARIOS Add Constraint PK_USUARIOS PRIMARY KEY (Usuario);
ALTER TABLE USUARIOS Alter Column UsuPsw varchar(100) not null;
ALTER TABLE USUARIOS Add Constraint CK_UsuPsw CHECK (UsuPsw LIKE '%[0-9]%');

ALTER TABLE EQUIPOS Add Constraint PK_EQUIPOS PRIMARY KEY (EqpIP);
ALTER TABLE EQUIPOS Alter Column EqpNom varchar(50) not null;
ALTER TABLE EQUIPOS Add Constraint UK_EqpNom UNIQUE (EqpNom);
ALTER TABLE EQUIPOS Alter Column EqpTipo varchar(10) not null;
ALTER TABLE EQUIPOS Alter Column ZonaId int not null;
ALTER TABLE EQUIPOS Add Constraint CK_EqpTipo CHECK (EqpTipo IN ('Terminal', 'Servidor', 'Tablet', 'Impresora'));
ALTER TABLE EQUIPOS Add Constraint FK_Equipos_ZonaId FOREIGN KEY (ZonaId) REFERENCES ZONAS (ZonaId);

CREATE INDEX IDX_Equipos_ZonaId ON EQUIPOS (ZonaId);

ALTER TABLE PERMISOSCNX Add PermId int IDENTITY (1,1) not null;
ALTER TABLE PERMISOSCNX Add Constraint PK_PERMISOS PRIMARY KEY (PermId);
ALTER TABLE PERMISOSCNX Add Constraint UK_ExPKPermisos UNIQUE (Usuario, ZonaId); 
ALTER TABLE PERMISOSCNX Add Constraint FK_Permisos_Usuario FOREIGN KEY (Usuario) REFERENCES USUARIOS (Usuario);
ALTER TABLE PERMISOSCNX Add Constraint FK_Permisos_ZonaId FOREIGN KEY (ZonaId) REFERENCES ZONAS (ZonaId);
ALTER TABLE PERMISOSCNX Add Constraint CK_Habilitado CHECK (Habilitado IN ('Si', 'No'));
ALTER TABLE PERMISOSCNX Add Constraint DF_Habilitado DEFAULT 'No' FOR Habilitado;

CREATE INDEX IDX_Permisos_Usuario ON PERMISOSCNX (Usuario);
CREATE INDEX IDX_Permisos_ZonaId ON PERMISOSCNX (ZonaId);

ALTER TABLE TAREAS Add Constraint PK_TAREAS PRIMARY KEY (TarId);
ALTER TABLE TAREAS Alter Column TarEstado varchar(15) not null;
ALTER TABLE TAREAS Alter Column TarHrsAcum int not null;
ALTER TABLE TAREAS Alter Column TarFchIni date not null;
ALTER TABLE TAREAS Alter Column TarFchFPrev date not null;
ALTER TABLE TAREAS Alter Column TarDescrip varchar(200) not null;
ALTER TABLE TAREAS Add Constraint CK_TarEstado CHECK (TarEstado IN ('EN ESPERA', 'EN DESARROLLO', 'RESUELTO', 'CANCELADA'));
ALTER TABLE TAREAS Add Constraint CK_TarFechIni CHECK (TarFchIni < TarFchFPrev);
ALTER TABLE TAREAS Add Constraint CK_TarHrsAcum CHECK (TarHrsAcum > 1);

ALTER TABLE CTRLCONEXIONES Add Constraint PK_CTRLCONEXIONES PRIMARY KEY (CnxId);
ALTER TABLE CTRLCONEXIONES Alter Column CnxFchHr datetime not null;
ALTER TABLE CTRLCONEXIONES Add Constraint FK_CtrlConexiones_Usuario FOREIGN KEY (Usuario) REFERENCES USUARIOS (Usuario);
ALTER TABLE CTRLCONEXIONES Add Constraint FK_CtrlConexiones_EqpIP FOREIGN KEY (EqpIP) REFERENCES EQUIPOS (EqpIP);
ALTER TABLE CTRLCONEXIONES Add Constraint FK_CtrlConexiones_TarID FOREIGN KEY (TarID) REFERENCES TAREAS (TarId);

CREATE INDEX IDX_CtrlConexiones_Usuario ON CTRLCONEXIONES (Usuario);
CREATE INDEX IDX_CtrlConexiones_EqpIP ON CTRLCONEXIONES (EqpIP);
CREATE INDEX IDX_CtrlConexiones_TarID ON CTRLCONEXIONES (TarID);

ALTER table ESCANEOS Add EscanId int IDENTITY (1,1) not null;
ALTER Table ESCANEOS Add Constraint PK_ESCANEOS PRIMARY KEY (EscanId);
ALTER table ESCANEOS Add Constraint UK_ExPKEscaneos UNIQUE (ScnHerr, ScnVulnNom);

ALTER TABLE CTRLVULNERABILIDADES Add CtrlVulId int IDENTITY (1,1) not null;
ALTER TABLE CTRLVULNERABILIDADES Add Constraint PK_CTRLVULNERABILIDADES PRIMARY KEY (CtrlVulId);
ALTER TABLE CTRLVULNERABILIDADES Drop Column ScnHerr, ScnVulnNom; -- SUSTITUIMOS ScnHerr, ScnVulnNom => EscanId
ALTER TABLE CTRLVULNERABILIDADES Add EscanId int not null;
ALTER TABLE CTRLVULNERABILIDADES Alter Column ZonaId int not null;
ALTER TABLE CTRLVULNERABILIDADES Alter Column VulnFchScanO date not null;
ALTER TABLE CTRLVULNERABILIDADES Add Constraint UK_ExPKCtrlVulnerabilidades UNIQUE (EscanId, VulnFchScanO); 
ALTER TABLE CTRLVULNERABILIDADES Add Constraint FK_CtrlVulnerabilidades_EscanId FOREIGN KEY (EscanId) REFERENCES ESCANEOS (EscanId);
ALTER TABLE CTRLVULNERABILIDADES Add Constraint FK_CtrlVulnerabilidades_ZonaId FOREIGN KEY (ZonaId) REFERENCES ZONAS (ZonaId);
ALTER TABLE CTRLVULNERABILIDADES Add Constraint FK_CtrlVulnerabilidades_TarID FOREIGN KEY (TarID) REFERENCES TAREAS (TarId);
ALTER TABLE CTRLVULNERABILIDADES Add Constraint CK_VulnCriticidad CHECK (VulnCriticidad IN ('BAJA', 'MEDIA', 'ALTA'));

CREATE INDEX IDX_CtrlVulnerabilidades_EscanId ON CTRLVULNERABILIDADES (EscanId);
CREATE INDEX IDX_CtrlVulnerabilidades_ZonaId ON CTRLVULNERABILIDADES (ZonaId);
CREATE INDEX IDX_CtrlVulnerabilidades_TarID ON CTRLVULNERABILIDADES (TarID);

ALTER TABLE RACI Add RaciId int IDENTITY (1,1) not null;
ALTER TABLE RACI Add Constraint PK_RACI PRIMARY KEY (RaciId);
ALTER TABLE RACI Add Constraint UK_ExPKRaci UNIQUE (RaciTarId, RaciUsuario, RaciRol); 
ALTER TABLE RACI Add Constraint FK_RACI_RaciTarId FOREIGN KEY (RaciTarId) REFERENCES TAREAS (TarId);
ALTER TABLE RACI Add Constraint FK_RACI_RaciUsuario FOREIGN KEY (RaciUsuario) REFERENCES USUARIOS (Usuario);
ALTER TABLE RACI Add Constraint CK_RaciRol CHECK (RaciRol IN ('R', 'A', 'C', 'I'));

CREATE INDEX IDX_RACI_RaciTarId ON RACI (RaciTarId);
CREATE INDEX IDX_RACI_RaciUsuario ON RACI (RaciUsuario);




					

Create Database OBLSem2
GO
Use OBLSem2
GO

Create Table TAREAS (
	TarId int identity(1,1)	not null, 
	TarEstado varchar(15) , 
	TarHrsAcum int , 
	TarFchIni date , 
	TarFchFin date, 
	TarFchFPrev date, 
	TarDescrip varchar(200) )
GO

Create Table ZONAS (
	ZonaId int not null, 
	ZonaNom varchar(50),
	ZonaDescrip varchar(100)
	)
GO

Create Table USUARIOS (
	Usuario varchar(50) not null, 
	UsuPsw varchar(200) , 
	UsuNomApp varchar(200), 
	UsuMail varchar(200)
	) 
GO

Create Table EQUIPOS (
	EqpIP char(15) not null,  
	EqpNom varchar(50) , 
	EqpTipo varchar(10), 
	EqpSO  varchar(10), 
	ZonaId int 
	)
GO

Create Table PERMISOSCNX (
	Usuario varchar(50) , 
	ZonaId int , 
	Habilitado char(2),
	)
GO

Create Table CTRLCONEXIONES (
	CnxId int identity(1,1) not null, 
	Usuario varchar(50) , 
	EqpIP char(15), 
	CnxFchHr datetime , 
	CnxPermitida bit, 
	TarID int)
GO

Create Table ESCANEOS (
	ScnHerr varchar(100), 
	ScnVulnNom varchar(100), 
	ScnDescrip varchar(200),
	)
GO

create table CTRLVULNERABILIDADES (
	ScnHerr varchar(100), 
	ScnVulnNom varchar(100), 
	ZonaId int , 
	VulnFchScanO date, 
	VulnFchScanU date, 
	VulnCriticidad varchar(5),
	TarID int 
	)
GO

Create Table RACI (
	RaciTarId int, 
	RaciUsuario varchar(50) , 
	RaciRol char(1),
	)
GO


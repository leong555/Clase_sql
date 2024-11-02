create TABLE Tip_doc (
  Tip_docId INT PRIMARY KEY IDENTITY(1,1),
  Tipo Varchar(3),
 )
 
 create TABLE Identificacion (
  IdentificacionId INT PRIMARY KEY,
  Numero INT,
  Fec_ini DATE NOT NULL,
  Fec_fin DATE NOT NULL,
  Tip_docId  INT,
  FOREIGN key (tip_docid) REFERENCES Tip_doc(tip_docid)
)
 
create TABLE Estados (
  EstadosId INT PRIMARY KEY IDENTITY(1,1),
  Valor Varchar(3),
 )
 
  create TABLE Condicion_afiliacion (
  Condicion_afiliacionId INT PRIMARY KEY,
  Fec_ini DATE NOT NULL,
  Fec_fin DATE NOT NULL,
  estadosid INT,
  identificacionid INT, 
  FOREIGN key (estadosid) REFERENCES Estados(estadosid),
  FOREIGN key (identificacionid) REFERENCES Identificacion(identificacionid)
)
 
 create TABLE Eps (
  EpsId INT PRIMARY KEY IDENTITY(1,1),
  Eps Varchar(6),
 )
 
  create TABLE Condicion_afiliacion_subsidiado (
  Condicion_afiliacion_subsidiadoId INT PRIMARY KEY,
  Fec_ini DATE NOT NULL,
  Fec_fin DATE NOT NULL,
  Nivel varchar(2),  
  Grup_pob varchar(3),
  Epsid INT,
  FOREIGN key (epsid) REFERENCES Eps(epsid)
)

 create TABLE Condiciones (
  CondicionesId INT PRIMARY KEY IDENTITY(1,1),
  condicion_afiliacionid INT,
  Condicion_afiliacion_subsidiadoid INT,
  FOREIGN key (condicion_afiliacionid) REFERENCES Condicion_afiliacion(condicion_afiliacionid),
  FOREIGN key (condicion_afiliacion_subsidiadoid) REFERENCES Condicion_afiliacion_subsidiado(condicion_afiliacion_subsidiadoid)
)
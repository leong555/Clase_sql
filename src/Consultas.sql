-- primera consulta
select * 
from Condiciones;

select * 
from Condicion_afiliacion_subsidiado;

select * 
from Estados;

-- segunda consulta alias 

select e.condicion_afiliacionid 
from Condiciones e;

select a.Grup_pob
from Condicion_afiliacion_subsidiado a;

select e.EstadosId
from Estados e;

-- tercera consulta 

select a.Valor as Nombre_Estado
from Condicion_afiliacion e inner JOIN Estados a on e.estadosid = a.EstadosId ;

select a.Tipo as Nombre_Tipo
from Identificacion e inner JOIN Tip_doc a on e.Tip_docId = a.Tip_docId;


-- intersepcion de queries 

SELECT a.Numero as Numero 
from Identificacion a inner join Tip_doc e on a.Tip_docId = e.Tip_docId
where e.Tipo = 'ti'
INTERSECT
SELECT a.Numero as Numero 
from Identificacion a inner JOIN  Condicion_afiliacion f on  f.identificacionid = a.IdentificacionId;

select f.fec_ini as Fecha_Inicio
from Condicion_afiliacion f inner join Estados d on f.estadosid = d.EstadosId
where d.Valor = 'ac'
INTERSECT
select f.fec_ini as Fecha_Inicio
from Condicion_afiliacion f inner join Identificacion g on f.identificacionid = g.IdentificacionId;

-- EXCEPT

SELECT a.Numero as Numero 
from Identificacion a inner join Tip_doc e on a.Tip_docId = e.Tip_docId
where e.Tipo = 'ti'
EXCEPT
SELECT a.Numero as Numero 
from Identificacion a inner JOIN  Condicion_afiliacion f on  f.identificacionid = a.IdentificacionId;

select f.fec_ini as Fecha_Inicio
from Condicion_afiliacion f inner join Estados d on f.estadosid = d.EstadosId
where d.Valor = 'ac'
EXCEPT
select f.fec_ini as Fecha_Inicio
from Condicion_afiliacion f inner join Identificacion g on f.identificacionid = g.IdentificacionId;
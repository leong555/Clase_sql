Insert INTO Tip_doc(Tipo)
VALUES
('CE'),
('TI'),
('CC'),
('NI'),
('RC'),
('PA'),
('ME'),
('NU'),
('MS'),
('AS'),
('CD'),
('CN'),
('SC'),
('PE'),
('PT');

Insert INTO Identificacion(IdentificacionId,Numero,Fec_ini,Fec_fin,Tip_docId)
VALUES
('1056777','777402','2010-06-01','2018-04-17','5'),
('2368962','9627','2004-12-01','2999-12-31','3'),
('1013680','680323','2006-06-15','2014-07-14','5'),
('1050091','091277','2013-02-01','2024-03-13','2'),
('1056708','708740','2008-04-15','2015-01-21','5'),
('1079609','609525','2022-05-23','2999-12-31','5'),
('1048932','932100','2011-02-11','2020-01-09','2'),
('7326794','7941','2021-07-14','2999-12-31','3'),
('1007561','561667','2015-03-04','2999-12-31','3'),
('1064720','720568','2013-04-17','2020-03-26','5'),
('1140841','841215','2011-01-01','2999-12-31','3'),
('1001788','788881','2014-09-04','2999-12-31','2'),
('1001965','965982','2002-10-01','2010-11-02','5'),
('1043015','015565','2001-10-01','2010-06-30','5'),
('1001835','835454','2018-07-06','2999-12-31','3'),
('1039083','083714','2024-03-14','2999-12-31','3'),
('1043664','664054','2015-04-01','2023-05-07','2'),
('1050550','550054','2017-07-01','2999-12-31','2'),
('1047226','226154','2015-09-24','2999-12-31','2'),
('1041773','773179','2008-02-13','2014-10-27','5');


Insert INTO Estados(Valor)
VALUES
('AC'),
('AF'),
('RE'),
('PL'),
('SU');

Insert INTO Condicion_afiliacion(Condicion_afiliacionId ,Fec_ini, Fec_fin, estadosid, identificacionid)
VALUES
('103480','2020-01-01','2999-12-31','1','1056777'),
('700938','2021-08-10','2999-12-31','1','2368962'),
('103612','2020-04-01','2020-12-31','1','1013680'),
('880472','2017-10-01','2999-12-31','1','1050091'),
('941076','2020-09-01','2021-05-19','1','1056708'),
('118970','2022-02-10','2022-08-31','1','1079609'),
('912915','2022-10-01','2999-12-31','1','1048932'),
('118292','2024-06-01','2024-09-04','1','7326794'),
('943970','2021-08-10','2022-07-13','1','1007561'),
('109630','2022-03-01','2999-12-31','1','1064720'),
('105010','2021-09-01','2999-12-31','1','1140841'),
('968358','2022-08-24','2999-12-31','3','1001788'),
('905755','2023-03-15','2999-12-31','3','1001965'),
('783503','2023-04-01','2999-12-31','1','1043015'),
('849745','2021-10-03','2021-10-28','1','1001835'),
('824280','2023-08-01','2999-12-31','1','1039083'),
('111716','2024-06-01','2999-12-31','1','1043664'),
('102091','2021-05-01','2999-12-31','1','1050550'),
('978532','2021-05-01','2999-12-31','1','1047226'),
('927326','2024-09-11','2024-09-30','1','1041773');


Insert INTO Eps(Eps)
VALUES
('EPS001'),
('EPS002'),
('EPS003'),
('EPS005'),
('EPSS41');


Insert INTO Condicion_afiliacion_subsidiado(Condicion_afiliacion_subsidiadoId ,Fec_ini, Fec_fin, Nivel, Grup_pob, Epsid)
VALUES
('703721','2020-01-01','2022-02-28','1','5','5'),
('754019','2021-08-10','2022-09-30','1','5','5'),
('709006','2020-04-01','2020-12-31','1','5','5'),
('624492','2022-10-01','2999-12-31','1','5','5'),
('728161','2020-09-01','2021-10-31','1','5','5'),
('770677','2024-03-01','2999-12-31','1','5','5'),
('720403','2020-09-01','2999-12-31','1','5','5'),
('847294','2024-06-01','2024-09-04','2','5','5'),
('752912','2021-08-10','2022-07-13','1','5','5'),
('655827','2022-11-01','2999-12-31','N','9','5'),
('750898','2022-11-01','2999-12-31','1','5','5'),
('744633','2021-05-01','2999-12-31','1','5','5'),
('529825','2016-01-01','2016-01-01','1','5','5'),
('805698','2023-04-01','2999-12-31','1','5','5'),
('760150','2021-10-01','2021-10-28','1','5','5'),
('819766','2023-08-01','2999-12-31','N','9','5'),
('843850','2024-06-01','2999-12-31','1','5','5'),
('744698','2022-11-01','2999-12-31','N','9','5'),
('744314','2021-05-01','2022-09-30','1','5','5'),
('849432','2024-07-01','2024-09-30','1','5','5'),
('703729','2022-03-01','2999-12-31','N','9','5'),
('744319','2022-10-01','2999-12-31','1','5','5'),
('752913','2022-07-15','2022-09-30','2','5','5'),
('752914','2022-10-01','2999-12-31','N','9','5');

Insert INTO Condiciones(condicion_afiliacionid,Condicion_afiliacion_subsidiadoid)
VALUES
('103480','703721'),
('700938','754019'),
('103612','709006'),
('880472','624492'),
('941076','728161'),
('118970','770677'),
('912915','720403'),
('118292','847294'),
('943970','752912'),
('109630','655827'),
('105010','750898'),
('968358','744633'),
('905755','529825'),
('783503','805698'),
('849745','760150'),
('824280','819766'),
('111716','843850'),
('102091','744698'),
('978532','744314'),
('927326','849432'),
('103480','703729'),
('978532','744319'),
('943970','752913'),
('943970','752914');

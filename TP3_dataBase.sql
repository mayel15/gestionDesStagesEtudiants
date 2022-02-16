CREATE DATABASE TP3;
USE TP3;
create table etudiant(
idetudiant int,
nom varchar(50),
prenom varchar(50),
datenaissance date,
annee int,
idconvention int,
idformation varchar(50),
primary key(idEtudiant)
);

insert into etudiant
values 
(1,'Luzieux','Clara','2002-05-12',2022,20020512,'Master2'),
(2,'Hien','Albert','1992-11-22',2015,19921122,'Master1'),
(3,'Tassembedo','Ayman','2000-06-01',2022,20000601,'Licence3'),
(4,'Faye','Hanes','2003-05-12',2022,20030512,'Prépa1'),
(5,'Thiam','Pape','2000-12-05',2022,20001205,'Ingénieurie3'),
(6,'Dieng','Fallou','1990-05-12',2015,19900512,'Ingénieurie5'),
(7,'Ka','Demba','1981-05-12',2001,19810512,'DUT1'),
(8,'Vincent','Julien','1997-05-12',2018,19970512,'Licence1'),
(9,'Vercier','Roman','2001-09-02',2022,20010902,'Licence2'),
(10,'Rashford','Isabelle','1996-07-31',2017,19960731,'Licence3'),
(11,'Maidana','Pedro','2000-05-12',2021,20000512,'Prépa2'),
(12,'Sanchez','Alex','2002-08-15',2022,20020815,'DUT2'),
(13,'Gatto','Elisa','1972-04-28',1992,19720428,'Prépa2'),
(14,'Boulanger','Elias','2002-10-10',2021,20021010,'Licence1'),
(15,'Poubelle','Eugène','1999-03-03',2022,19990303,'Ingénieurie4'),
(16,'Sy','Oumar','2000-08-20',2020,20000820,'Licence1'),
(17,'Ba','Sadio','2002-11-12',2022,20021112,'Prépa2'),
(18,'Tricot','Ines','2001-01-01',2021,20010101,'DUT1'),
(19,'Varin','Leo','1960-12-04',1983,19601204,'Ingénieurie3'),
(20,'Einstein','Albert','1970-06-15',1995,19700615,'Master2');

create table formation(
idFormation varchar(50),
libelle varchar(50),
NecessiteStage boolean,
MobiliteInter boolean,
idenseignant int,
idemployer int,
primary key(idFormation,libelle)
);
insert into formation
values
('Licence1','TNSID',FALSE,FALSE,10,12),
('Licence1','Réseaux et télécommunications',FALSE,FALSE,9,20),
('Licence2','TNSID',FALSE,FALSE,7,25),
('Licence2','Réseaux et télécommunications',FALSE,FALSE,7,25),
('Licence3','TNSID',FALSE,FALSE,6,26),
('Licence3','Réseaux et télécommunications',FALSE,FALSE,1,21),
('Master1','TNSID',TRUE,FALSE,5,29),
('Master1','Data science',TRUE,FALSE,7,27),
('Master2','TNSID',TRUE,FALSE,3,17),
('Master2','Data science',TRUE,FALSE,4,19),
('Prépa1','Intégrée',TRUE,FALSE,5,15),
('Prépa1','Intégrée*',TRUE,FALSE,4,18),
('Prépa2','Intégrée',FALSE,FALSE,1,22),
('Prépa2','Intégrée*',FALSE,FALSE,9,23),
('Ingénieurie3','Génie industriel',TRUE,FALSE,10,24),
('Ingénieurie3','Informatique',TRUE,FALSE,4,16),
('Ingénieurie4','Informatique et cybersécurité',TRUE,TRUE,6,26),
('Ingénieurie4','Mécatronique',TRUE,TRUE,7,27),
('Ingénieurie5','Informatique et cybersécurité',TRUE,TRUE,8,28),
('Ingénieurie5','Mécatronique',TRUE,TRUE,9,29),
('DUT1','Télécommunications',TRUE,FALSE,3,30),
('DUT2','Informatique Indutriel',TRUE,FALSE,6,24);

create table universite(
iduniversite int,
nom varchar(50),
adresse varchar(50),
primary key(iduniversite)
);
insert into universite
values
(1,'UPHF/INSA','Valenciennces');

create table soutenance(
datesoutenance date,
idformation varchar(50),
primary key(datesoutenance)
);
insert into soutenance
values
('2022-04-01','Master2'),
('2015-08-01','Master1'),
('2022-05-01','Licence3'),
('2022-06-01','Prépa1'),
('2022-07-01','Ingénieurie3'),
('2015-07-01','Ingénieurie5'),
('2001-07-01','DUT1'),
('2018-07-01','Licence1'),
('2022-08-01','Licence2'),
('2017-07-01','Licence3'),
('2021-07-01','Prépa2'),
('2022-09-01','DUT2'),
('1992-07-01','Prépa2'),
('2021-08-01','Licence1'),
('2022-10-01','Ingénieurie4'),
('2020-07-01','Licence1'),
('2022-11-01','Prépa2'),
('2021-09-01','DUT1'),
('1983-07-01','Ingénieurie3'),
('1995-07-01','Master2');

create table respuniversitaire(
idenseignant int,
nom varchar(50),
prenom varchar(50),
iduniversite int,
primary key(idenseignant)
);
insert into respuniversitaire
values
(1,'Guy','Albert',1),
(2,'Leroy','Robert',1),
(3,'Carrefour','Jully',1),
(4,'Pouelle','Zac',1),
(5,'Sac','Lisa',1),
(6,'Duneaud','Paul',1),
(7,'Zemmour','Rose',1),
(8,'Lampard','Krous',1),
(9,'Baky','Sall',1),
(10,'Trump','zoé',1);

create table respindustriel(
idemployer int,
nom varchar(50),
prenom varchar(50),
identreprise int,
primary key(idemployer)
);
insert into respindustriel
values
(10,'Thilliez','François',1),
(11,'Basse','Françoise',10),
(12,'Pont','Leo',12),
(13,'Champ','Mari',3),
(14,'Seine','Eric',4),
(15,'Tor','jean',15),
(16,'Soulier','Ana',16),
(17,'Einstein','Albert',20),
(18,'Bourbon','Anthony',2),
(19,'Vans','Francisse',11),
(20,'Jordan','Michel',13),
(21,'Bac','François',9),
(22,'Basse','Françoise',19),
(23,'Pont','Leo',15),
(24,'Champ','Mari',14),
(25,'Seine','Eric',17),
(26,'Tor','jean',18),
(27,'Soulier','Ana',5),
(28,'Versier','Victor',8),
(29,'Bourbon','Anthony',19),
(30,'Vans','Francisse',20);

create table stage(
idstage int,
sujet varchar(50),
dureemin int,
dureemax int,
duree int,
primary key(idstage)
);
insert into stage
values
(1,'Stage ouvrier',1,12,2), 
(2,'Stage de découverte',1,12,2),
(3,'Stage apprenti informatique',1,12,2),
(4,'Stage ouvrier',1,12,2),
(5,'Stage ouvrier',1,12,2),
(6,'Stage ouvrier',1,12,2),
(7,'Stage ouvrier',1,12,2),
(8,'Stage ouvrier',1,12,2),
(9,'Stage ouvrier',1,12,2),
(10,'Stage ouvrier',1,12,2),
(11,'Stage ouvrier',1,12,2),
(12,'Stage ouvrier',1,12,2),
(13,'Stage ouvrier',1,12,2),
(14,'Stage ouvrier',1,12,2),
(15,'Stage ouvrier',1,12,2),
(16,'Stage ouvrier',1,12,2),
(17,'Stage ouvrier',1,12,2),
(18,'Stage ouvrier',1,12,2),
(19,'Stage ouvrier',1,12,2),
(20,'Stage ouvrier',1,12,2);


create table entreprise(
identreprise int,
nom varchar(50),
adresse varchar(50),
replegal varchar(50),
contact int,
primary key(identreprise)
);
insert into entreprise
values
(1,'ATOS Worldline','Paris','Ulrich Tiono','0354675560'),
(2,'SALTO','Paris','Rimka Hector','0454675561'),
(3,'ARAMISAUTO','Paris','Canne Yazid','0554675562'),
(4,'BOUYGUE','Paris','Ferdinand Lopez','0654675563'),
(5,'SFR','Paris','Bella Abou','0754675564'),
(6,'PICARD','Paris','Poutch Riko','0854675565'),
(7,'CANDY','Paris','Helly lam','0954675566'),
(8,' BIC','Paris','Law JIN','1054675567'),
(9,' BOMBARDIER','Paris','Biquet Bouse','1154675568'),
(10,'SNCF','Paris','Madina de Moustique','1254675569'),
(11,'TOYOTA','Paris','LOUIS Morez','1354675570'),
(12,' FEED','Paris','Loic Lenz','1454675573'),
(13,'ATLAS','Paris','Alan Boole','1554675583'),
(14,'MAF','Paris','Pythagore Trame','1654675593'),
(15,'AIRFRANCE ','Paris','Noix Farida','1754675543'),
(16,'KAYAK ','Paris','Elsa Book','1854675533'),
(17,'NETFLIX ','Paris','Emry Val','1954675523'),
(18,'ALDI','Paris','Steck Candice','2054675513'),
(19,'PETIT-FRAIS','Paris','Roi Pierre','0154675553'),
(20,'AMAZON','Paris','Face Emmanuel','0254675503');

create table convention(
idconvention int,
datesignature date,
primary key(idconvention)
);
insert into convention
values
(20020512,'2022-01-01'),
(19921122,'2015-05-01'),
(20000601,'2022-02-01'),
(20030512,'2022-01-01'),
(20001205,'2022-04-01'),
(19900512,'2001-04-01'),
(19810512,'2018-04-01'),
(19970512,'2022-05-01'),
(20010902,'2017-04-01'),
(19960731,'2021-04-01'),
(20000512,'2022-06-01'),
(20020815,'1992-04-01'),
(19720428,'2021-05-01'),
(20021010,'2022-07-01'),
(19990303,'2020-04-01'),
(20000820,'2022-08-01'),
(20021112,'2021-06-01'),
(20010101,'2000-10-01'),
(19601204,'1983-04-01'),
(19700615,'1995-01-01');

create table realise_conv(
idconvention int,
iduniversite int,
primary key(idconvention,iduniversite),
foreign key(idconvention) references convention(idconvention),
foreign key (iduniversite) references universite(iduniversite)
);
insert into realise_conv
values
(20020512,1),
(19921122,1),
(20000601,1),
(20030512,1),
(20001205,1),
(19900512,1),
(19810512,1),
(19970512,1),
(20010902,1),
(19960731,1),
(20000512,1),
(20020815,1),
(19720428,1),
(20021010,1),
(19990303,1),
(20000820,1),
(20021112,1),
(20010101,1),
(19601204,1),
(19700615,1);

create table signe_conv(
idconvention int,
identreprise int,
primary key(idconvention,identreprise),
foreign key(idconvention) references convention(idconvention),
foreign key (identreprise) references entreprise(identreprise)
);
insert into signe_conv
values
(20020512,1),
(19921122,2),
(20000601,3),
(20030512,4),
(20001205,5),
(19900512,6),
(19810512,7),
(19970512,8),
(20010902,8),
(19960731,10),
(20000512,10),
(20020815,12),
(19720428,13),
(20021010,14),
(19990303,15),
(20000820,16),
(20021112,17),
(20010101,18),
(19601204,20),
(19700615,20);

create table propose(
libellestage varchar(50),
idformation varchar(50),
identreprise int,
primary key(idformation,identreprise),
foreign key(idformation) references formation(idformation),
foreign key(identreprise) references entreprise(identreprise)
);
insert into propose
values
('Stage ouvrier','Master2',1),
('Stage ouvrier','Master2',2),
('Stage ouvrier','Prépa2',3),
('Stage ouvrier','Master2',4),
('Stage ouvrier','Licence2',5),
('Stage ouvrier','DUT2',6),
('Stage ouvrier','DUT1',7),
('Stage ouvrier','Master1',8),
('Stage ouvrier','Master2',9),
('Stage ouvrier','Ingénieurie5',10),
('Stage ouvrier','Ingénieurie4',11),
('Stage ouvrier','Ingénieurie3',12),
('Stage ouvrier','Prépa2',13),
('Stage ouvrier','Prépa2',14),
('Stage ouvrier','Licence2',15),
('Stage ouvrier','Prépa1',16),
('Stage ouvrier','DUT1',17),
('Stage ouvrier','Licence1',18),
('Stage ouvrier','Master1',19),
('Stage ouvrier','Master2',20);

create table comprend(
idstage int,
idformation varchar(50),
remuneration int,
primary key(idstage,idformation),
foreign key(idformation) references formation(idformation),
foreign key(idstage) references stage(idstage)
);
insert into comprend
values
(1,'Master2',1000),
(2,'Master1',700),
(3,'Licence3',1200),
(4,'Prépa2',1000),
(5,'Ingénieurie3',900),
(6,'Ingénieurie5',1000),
(7,'DUT1',1000),
(8,'Licence1',700),
(9,'Licence2',800),
(10,'Licence3',1000),
(11,'Prépa2',900),
(12,'DUT2',700),
(13,'Prépa2',1000),
(14,'Licence1',1000),
(15,'Ingénieurie4',1000),
(16,'Licence1',1000),
(17,'Prépa2',1000),
(18,'DUT1',1000),
(19,'Ingénieurie3',600),
(20,'Master2',800);


create table estinclus(
iduniversite int,
idformation varchar(50),
libelle varchar(50),
primary key(iduniversite,idformation,libelle),
foreign key(iduniversite) references universite(iduniversite),
foreign key(idformation) references formation(idformation)
);

insert into estinclus 
values();
show tables;


create view stagiairesannee(nom,prenom,annee) as
select etudiant.nom,etudiant.prenom,etudiant.annee
from etudiant,formation,signe_conv
where etudiant.idformation=formation.idformation 
and etudiant.idconvention=signe_conv.idconvention 
group by idformation;

create view elevesingenieurs(nom,prenom) as
select etudiant.nom,etudiant.prenom
from etudiant,formation,signe_conv
where etudiant.idformation=formation.idformation 
and signe_conv.idconvention=etudiant.idconvention
and formation.mobiliteinter=TRUE
and necessitestage=TRUE
and (formation.idformation='Ingénieurie4' or formation.idformation='Ingénieurie5');

create view anciensetudiantsrecruites(nom,prenom) as
select etudiant.nom,etudiant.prenom
from etudiant,respindustriel,entreprise,signe_conv
where etudiant.idconvention=signe_conv.idconvention 
and respindustriel.identreprise=entreprise.identreprise
and signe_conv.identreprise=entreprise.identreprise
and etudiant.nom in(select respindustriel.nom from entreprise,respindustriel where entreprise.identreprise=respindustriel.identreprise);


SELECT stage.sujet,entreprise.adresse,entreprise.contact 
FROM stage,comprend,signe_conv,entreprise,formation,respindustriel,etudiant
WHERE etudiant.idformation=formation.idformation 
AND respindustriel.identreprise=entreprise.identreprise
AND signe_conv.identreprise=entreprise.identreprise
AND etudiant.idconvention=signe_conv.idconvention
AND stage.idstage=comprend.idstage
AND comprend.idformation=etudiant.idformation
AND etudiant.annee=2020 
AND formation.idformation='Master2' AND formation.libelle='TNSID'
AND respindustriel.nom='Thilliez';

SELECT DISTINCT etudiant.nom,etudiant.prenom FROM etudiant,convention,formation WHERE etudiant.idformation=formation.idformation AND etudiant.idconvention=convention.idconvention AND  etudiant.annee=2022 AND convention.idconvention IN(SELECT idconvention FROM convention);

SELECT DISTINCT etudiant.nom,etudiant.prenom,etudiant.idformation,formation.libelle
FROM etudiant,convention,formation
WHERE etudiant.idformation=formation.idformation 
AND etudiant.idconvention=convention.idconvention 
AND  etudiant.annee=2022 AND formation.necessitestage=TRUE 
AND convention.idconvention IN(SELECT idconvention FROM convention);

SELECT etudiant.nom,etudiant.prenom,etudiant.datenaissance
FROM etudiant,formation,comprend
WHERE comprend.idformation=formation.idformation AND etudiant.idformation=formation.idformation AND comprend.remuneration=(SELECT MAX(remuneration) FROM comprend,formation WHERE comprend.idformation=formation.idformation AND etudiant.annee=2008);

SELECT etudiant.nom,etudiant.prenom,etudiant.datenaissance 
FROM  etudiant,formation,entreprise,signe_conv
WHERE etudiant.idformation=formation.idformation 
AND etudiant.idconvention=signe_conv.idconvention
AND entreprise.identreprise=signe_conv.identreprise
AND entreprise.nom='ATOS Worldline' AND etudiant.annee=2021;

SELECT AVG(remuneration),formation.libelle
FROM comprend,formation
WHERE comprend.idformation=formation.idformation AND (formation.idformation='Ingénieurie3' OR formation.idformation='Ingénieurie4' OR formation.idformation='Ingénieurie5')
GROUP BY formation.libelle;

SELECT count(*),formation.libelle
FROM etudiant,formation
WHERE etudiant.idformation=formation.idformation
GROUP BY formation.libelle;

SELECT etudiant.nom,etudiant.prenom
FROM etudiant
WHERE etudiant.nom IN (SELECT respindustriel.nom FROM respindustriel,signe_conv,formation WHERE respindustriel.identreprise=signe_conv.identreprise AND formation.idemployer=respindustriel.idemployer);

SELECT entreprise.nom,count(*)
FROM entreprise,signe_conv
WHERE entreprise.identreprise=signe_conv.identreprise 
GROUP BY entreprise.nom
ORDER BY count(*) DESC
LIMIT 1;

SELECT AVG(stage.duree)
FROM stage
WHERE stage.duree IS NOT NULL;

SELECT *
FROM entreprise 
WHERE identreprise NOT IN ( 
SELECT identreprise 
FROM etudiant,signe_conv,convention,formation
WHERE etudiant.idconvention=convention.idconvention 
AND signe_conv.idconvention=convention.idconvention 
AND etudiant.idformation=formation.idformation
AND (formation.idformation='Ingénieurie3' OR formation.idformation='Ingénieurie4' OR formation.idformation='Ingénieurie5') );

SELECT count(*)
FROM etudiant
WHERE idetudiant IN (
SELECT idetudiant 
FROM signe_conv,formation,propose 
WHERE formation.idformation=propose.idformation 
AND propose.identreprise=signe_conv.identreprise);

SELECT *
FROM entreprise
WHERE entreprise.identreprise IN (
SELECT entreprise.identreprise
FROM entreprise,signe_conv,etudiant,convention
WHERE entreprise.identreprise=signe_conv.identreprise 
AND etudiant.idconvention=convention.idconvention
AND signe_conv.idconvention=etudiant.idconvention
GROUP BY etudiant.idformation HAVING count(*)>=3);

SELECT *,idetudiant
FROM stage,etudiant,comprend
WHERE stage.idstage=comprend.idstage AND etudiant.idformation=comprend.idformation
GROUP BY etudiant.idetudiant;

SELECT *
FROM entreprise
WHERE identreprise IN (
SELECT entreprise.identreprise,etudiant.idformation
FROM entreprise,signe_conv,etudiant,convention 
WHERE entreprise.identreprise=signe_conv.identreprise
AND convention.idconvention=etudiant.idconvention 
AND signe_conv.idconvention=etudiant.idconvention 
AND (etudiant.annee=2022 OR etudiant.annee=2021) GROUP BY etudiant.idformation);

SELECT DISTINCT nom,prenom
FROM etudiant,comprend,formation,signe_conv
WHERE comprend.idformation=formation.idformation 
AND etudiant.idformation=formation.idformation 
AND signe_conv.idconvention=etudiant.idconvention 
AND comprend.remuneration=(SELECT MAX(remuneration) FROM comprend WHERE remuneration IS NOT NULL);

SELECT entreprise.nom,count(*)
FROM entreprise,signe_conv,etudiant,convention,formation
WHERE entreprise.identreprise=signe_conv.identreprise 
AND etudiant.idconvention=convention.idconvention 
AND signe_conv.idconvention=convention.idconvention 
AND etudiant.idformation=formation.idformation 
AND formation.libelle='Informatique et cybersécurité'
GROUP BY entreprise.nom
ORDER BY count(*) DESC
LIMIT 10;

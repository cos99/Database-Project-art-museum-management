create table
DONATORI(
id_donator number(4) constraint donatori_pk primary key,
nume varchar2(50) constraint ver_nume not null,
prenume varchar2(50),
privilegii varchar2(255),
constraint nume_prenume_unic unique(nume, prenume));

create table 
LOCATII(
id_locatie number(4) constraint locatii_pk primary key,
tara varchar2(50) not null,
judet varchar2(50),
oras varchar2(50) constraint ver_oras not null,
strada varchar2(50) constraint ver_strada not null,
numar number(6) constraint ver_numar not null,
constraint adresa_uinca unique(strada, numar));

create table 
CLADIRI(
id_cladire number(4) constraint cladiri_pk primary key,
nume_cladire varchar2(50) not null,
numar_etaje number(2) not null,
an_constructie date default sysdate,
numar_sali number(4) not null,

id_locatie number(4) constraint val_locatie check(id_locatie > 0), 
constraint ver_etaje check (numar_etaje >= 0),
constraint ver_sali check (numar_sali >= 0));

alter table cladiri
add constraint fk_id_locatie foreign key (id_locatie)
references LOCATII(id_locatie) on delete cascade;

create table 
EVENIMENTE(
id_eveniment number(4) constraint eveniment_pk primary key,
nume_eveniment varchar2(50),
tip_eveniment varchar2(50) not null,
organizator varchar2(50),
data date default sysdate,
ora_inceput varchar2(8),
ora_sfarsit varchar2(8),
id_cladire number(4) constraint val_cladire check(id_cladire > 0));

alter table evenimente 
add constraint fk_id_cladire foreign key (id_cladire)
references CLADIRI(id_cladire) on delete cascade;

create table 
ANGAJATI(
id_angajati number(4) constraint angajati_pk primary key,
nume varchar2(50) not null,
prenume varchar2(50) not null,
departament varchar2(20) not null,
id_sef number(4) constraint sef_fk references angajati(id_angajati),
salariu number(8,2) not null,
email varchar2(50),
numar_telefon varchar2(10),

id_cladire number(4) constraint val_cladire2 check(id_cladire > 0),
constraint nume_prenume_unic2 unique(nume, prenume));

alter table angajati 
add constraint fk_id_cladire2 foreign key (id_cladire)
references CLADIRI(id_cladire) on delete cascade;

create table 
EXPOZITII(
id_expozitie number(4) constraint expozitii_pk primary key,
numar_opere number(4) not null,
titlu_expozitie varchar2(50) unique,
curent varchar2(20),
id_cladire number(4) constraint val_cladire3 check(id_cladire > 0));

alter table expozitii 
add constraint fk_id_cladire3 foreign key (id_cladire)
references CLADIRI(id_cladire) on delete cascade;

create table 
OPERA_DE_ARTA(
id_opera number(4) constraint opera_pk primary key,
nume varchar2(50),
autor varchar2(100),
tip_opera varchar2(50) not null,
descriere varchar2(255),
inaltime number(4,2),
latime number(4,2),
material varchar2(50),
perioada varchar2(100),
id_expozitie number(4) constraint val_expozitie check(id_expozitie > 0),
id_donator number(4) constraint val_donator check(id_donator > 0));

alter table opera_de_arta
add constraint fk_id_expozitie foreign key (id_expozitie)
references expozitii(id_expozitie) on delete set null;

alter table opera_de_arta
add constraint fk_id_donator foreign key (id_donator)
references donatori(id_donator) on delete cascade;






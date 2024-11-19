DROP TABLE Boss;
DROP TABLE Heal;
DROP TABLE Oruzje;
DROP TABLE Oklop;
DROP TABLE Modifier;
DROP TABLE Npc;
DROP TABLE Magije;


DROP TABLE Tip;
DROP TABLE Klase;
DROP TABLE Igra;



CREATE TABLE Igra (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    ime VARCHAR2(30) NOT NULL
);

CREATE TABLE Klase (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    vrsta VARCHAR2(30) NOT NULL
);

CREATE TABLE Boss (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(255) NOT NULL
);

CREATE TABLE Heal (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL
);

CREATE TABLE Oruzje (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL,
    klasa NUMBER(10) NOT NULL
);

CREATE TABLE Oklop (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL
);

CREATE TABLE Modifier (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL,
    tip NUMBER(10) NOT NULL
);

CREATE TABLE Npc (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL
);

CREATE TABLE Magije (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    igra NUMBER(10) NOT NULL,
    ime VARCHAR2(30) NOT NULL,
    klasa NUMBER(10) NOT NULL
);

CREATE TABLE Tip (
    id NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    vrsta VARCHAR2(30) NOT NULL
);




ALTER TABLE Boss ADD CONSTRAINT Boss_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Heal ADD CONSTRAINT Heal_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Oruzje ADD CONSTRAINT Oruzje_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Oruzje ADD CONSTRAINT Oruzje_fk3 FOREIGN KEY (klasa) REFERENCES Klase(id);
ALTER TABLE Oklop ADD CONSTRAINT Oklop_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Modifier ADD CONSTRAINT Modifier_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Modifier ADD CONSTRAINT Modifier_fk3 FOREIGN KEY (tip) REFERENCES Tip(id);
ALTER TABLE Npc ADD CONSTRAINT Npc_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Magije ADD CONSTRAINT Magije_fk1 FOREIGN KEY (igra) REFERENCES Igra(id);
ALTER TABLE Magije ADD CONSTRAINT Magije_fk3 FOREIGN KEY (klasa) REFERENCES Klase(id);

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-10-13 19:58:07.448

-- tables
-- Table: producenci
CREATE TABLE producenci (
    id_producenta serial  NOT NULL,
    nazwa_producenta varchar  NOT NULL,
    mail varchar  NOT NULL,
    telefon varchar  NOT NULL,
    CONSTRAINT producenci_pk PRIMARY KEY (id_producenta)
);

-- Table: produkty
CREATE TABLE produkty (
    id_produktu serial  NOT NULL,
    nazwa_produktu varchar  NOT NULL,
    cena money  NOT NULL,
    id_producenta int  NOT NULL,
    CONSTRAINT produkty_pk PRIMARY KEY (id_produktu)
);

-- Table: zamowienia
CREATE TABLE zamowienia (
    id_zamowienia serial  NOT NULL,
    id_produktu int  NOT NULL,
    data date  NOT NULL,
    dostawca varchar  NOT NULL,
    CONSTRAINT zamowienia_pk PRIMARY KEY (id_zamowienia)
);

-- foreign keys
-- Reference: producenci_produkty (table: produkty)
ALTER TABLE produkty ADD CONSTRAINT producenci_produkty
    FOREIGN KEY (id_producenta)
    REFERENCES producenci (id_producenta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: zamowienia_produkty (table: zamowienia)
ALTER TABLE zamowienia ADD CONSTRAINT zamowienia_produkty
    FOREIGN KEY (id_produktu)
    REFERENCES produkty (id_produktu)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.


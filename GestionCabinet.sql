DROP TABLE IF EXISTS Client ;
CREATE TABLE Client (IdClient_Client INT(4) AUTO_INCREMENT NOT NULL,
Nom_Client TEXT,
Prenom_Client TEXT,
Adresse_Client VARCHAR(20),
Email_Client VARCHAR(20),
PRIMARY KEY (IdClient_Client)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Affaire ;
CREATE TABLE Affaire (IdFacture_Affaire INT(4) AUTO_INCREMENT NOT NULL,
Description_Affaire TEXT,
DateDebut_Affaire DATE,
DateFin_Affaire DATE,
statut_Affaire TEXT,
IdClient_Client **NOT FOUND**(4),
IdAvocat_Avocat **NOT FOUND**(4),
dossier_iddossier_dossier **NOT FOUND**(4),
PRIMARY KEY (IdFacture_Affaire)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Avocat ;
CREATE TABLE Avocat (IdAvocat_Avocat INT(4) AUTO_INCREMENT NOT NULL,
Nom_Avocat TEXT,
Prenom_Avocat TEXT,
specialiste_Avocat TEXT,
PRIMARY KEY (IdAvocat_Avocat)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Facture ;
CREATE TABLE Facture (IdFacture_Facture INT(4) AUTO_INCREMENT NOT NULL,
Montant_Facture INT(10),
DateEmission_Facture DATE,
statut_Facture TEXT,
IdFacture_Affaire **NOT FOUND**(4),
paiement_idpaiememt_paiement **NOT FOUND**(4),
PRIMARY KEY (IdFacture_Facture)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Paiement ;
CREATE TABLE Paiement (IdPaiememt_Paiement INT(4) AUTO_INCREMENT NOT NULL,
Montant_Paiement INT(10),
DatePaiememt_Paiement DATE,
facture_idfacture_facture **NOT FOUND**(4),
PRIMARY KEY (IdPaiememt_Paiement)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Dossier ;
CREATE TABLE Dossier (IdDossier_Dossier INT(3) AUTO_INCREMENT NOT NULL,
Ttitre_Dossier TEXT,
Descriprtion_Dossier TEXT,
DateOuverture_Dossier DATE,
statut_Dossier TEXT,
affaire_idfacture_affaire **NOT FOUND**(3),
PRIMARY KEY (IdDossier_Dossier)) ENGINE=InnoDB;

ALTER TABLE Affaire ADD CONSTRAINT FK_Affaire_IdClient_Client FOREIGN KEY (IdClient_Client) REFERENCES Client (IdClient_Client);

ALTER TABLE Affaire ADD CONSTRAINT FK_Affaire_IdAvocat_Avocat FOREIGN KEY (IdAvocat_Avocat) REFERENCES Avocat (IdAvocat_Avocat);
ALTER TABLE Affaire ADD CONSTRAINT FK_Affaire_dossier_iddossier_dossier FOREIGN KEY (dossier_iddossier_dossier) REFERENCES Dossier (IdDossier_Dossier);
ALTER TABLE Facture ADD CONSTRAINT FK_Facture_IdFacture_Affaire FOREIGN KEY (IdFacture_Affaire) REFERENCES Affaire (IdFacture_Affaire);
ALTER TABLE Facture ADD CONSTRAINT FK_Facture_paiement_idpaiememt_paiement FOREIGN KEY (paiement_idpaiememt_paiement) REFERENCES Paiement (IdPaiememt_Paiement);
ALTER TABLE Paiement ADD CONSTRAINT FK_Paiement_facture_idfacture_facture FOREIGN KEY (facture_idfacture_facture) REFERENCES Facture (IdFacture_Facture);
ALTER TABLE Dossier ADD CONSTRAINT FK_Dossier_affaire_idfacture_affaire FOREIGN KEY (affaire_idfacture_affaire) REFERENCES Affaire (IdFacture_Affaire);

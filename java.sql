DROP TABLE IF EXISTS Utilisateur ;
CREATE TABLE Utilisateur (id_utilisateur_Utilisateur INT(6) AUTO_INCREMENT NOT NULL,
Nom_Utilisateur VARCHAR(20),
Email_Utilisateur VARCHAR(20),
Role_Utilisateur VARCHAR(50),
Mot_de_passe_Utilisateur VARCHAR(15),
Id_Statut_Statut **NOT FOUND**(6),
PRIMARY KEY (id_utilisateur_Utilisateur)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Tache ;
CREATE TABLE Tache (Id_Tache_Tache INT(5) AUTO_INCREMENT NOT NULL,
Nom_Tache VARCHAR(20),
DateDebut_Tache DATE,
DateFin_Tache DATE,
Description_Tache VARCHAR(20),
prioriteId_Tache INT(5),
statut_id_Tache INT(5),
Utilisateur_id_Tache INT(5),
Id_Statut_Statut **NOT FOUND**(5),
PRIMARY KEY (Id_Tache_Tache)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Priorite ;
CREATE TABLE Priorite (Id_priorite_Priorite INT(3) AUTO_INCREMENT NOT NULL,
Niveau_Priorite VARCHAR(8),
Id_Statut_Statut **NOT FOUND**(3),
PRIMARY KEY (Id_priorite_Priorite)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Statut ;
CREATE TABLE Statut (Id_Statut_Statut INT(4) AUTO_INCREMENT NOT NULL,
Description_Statut TEXT,
PRIMARY KEY (Id_Statut_Statut)) ENGINE=InnoDB;

ALTER TABLE Utilisateur ADD CONSTRAINT FK_Utilisateur_Id_Statut_Statut FOREIGN KEY (Id_Statut_Statut) REFERENCES Statut (Id_Statut_Statut);

ALTER TABLE Tache ADD CONSTRAINT FK_Tache_Id_Statut_Statut FOREIGN KEY (Id_Statut_Statut) REFERENCES Statut (Id_Statut_Statut);
ALTER TABLE Priorite ADD CONSTRAINT FK_Priorite_Id_Statut_Statut FOREIGN KEY (Id_Statut_Statut) REFERENCES Statut (Id_Statut_Statut);

DROP DATABASE IF EXISTS juego
CREATE DATABASE juego;
USE juego:
CREATE TABLE jugador(
	Id INTEGER,
	Username VARCHAR(255),
	password VARCHAR(255),
	ganadas INTEGER
	PRIMARY KEY(Id)
)ENGINE = InnoDB;

CREATE TABLE Partida (
	identificador INTEGER PRIMARY KEY NOT NULL,
	fecha DATETIME,
)ENGINE = InnoDB;

CREATE TABLE Participacion (
	Jugador INTEGER NOT NULL,
	Partida INTEGER NOT NULL,
	Posicion INTEGER NOT NULL,
	FOREIGN KEY (Jugador) REFERENCES jugador(Username),
	FOREIGN KEY (Partida) REFERENCES Partida(Identificador)
)ENGINE = InnoDB;


INSERT INTO jugador(Code,Username,password) VALUES(1,'ajudan','234afbnadf');
INSERT INTO jugador(Code,Username,password) VALUES(2,'MichaelJackson','undostrespicaparet');
INSERT INTO jugador(Code,Username,password) VALUES(3,'Carolina Herrera','123123');
INSERT INTO jugador(Code,Username,password) VALUES(4,'Donald Trump','macarrronsperdinar');
INSERT INTO jugador(Code,Username,password) VALUES(5,'ELJOseleete','12341234password');


INSERT INTO Partida(identificador,fecha,duracion,ganador) VALUES(1,'12-23-22','15:43','00:20:43','ajudan');
INSERT INTO Partida(identificador,fecha,duracion,ganador) VALUES(2,'12-23-22','23:32','00:43:32','ajudan');
INSERT INTO Partida(identificador,fecha,duracion,ganador) VALUES(3,'12-11-22','12:55','01:32:34','MichaelJackson');
INSERT INTO Partida(identificador,fecha,duracion,ganador) VALUES(4,'21-07-22','06:06','00:12:32','Donald Trump');
INSERT INTO Partida(identificador,fecha,duracion,ganador) VALUES(5,'22-12-22','13:22','00:34:10','MichaelJackson');


INSERT INTO Participacion VALUES('MichaelJackson',1,1);
INSERT INTO Participacion VALUES('Carolina Herrera',1,2);
INSERT INTO Participacion VALUES('Donald Trump',1,3);
INSERT INTO Participacion VALUES('Michael Jackson',2,2);
INSERT INTO Participacion VALUES('ajudan',1,5);
INSERT INTO Participacion VALUES('ajudan',2,1);
INSERT INTO Participacion VALUES('ELJOseleete',1,4);
INSERT INTO Participacion VALUES('ELJOseleete',2,3);
INSERT INTO Participacion VALUES('MichaelJackson',3,1);
INSERT INTO Participacion VALUES('Donald Trump',2,5);
INSERT INTO Participacion VALUES('Carolina Herrera',2,4);
INSERT INTO Participacion VALUES('Carolina Herrera',3,2);
INSERT INTO Participacion VALUES('ajudan',3,3);
INSERT INTO Participacion VALUES('Donald Trump',3,4);
INSERT INTO Participacion VALUES('ELJOseleete',3,5);


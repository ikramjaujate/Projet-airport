CREATE TABLE Country(
	idPays char(3) not null,
	name char(50) not null,
	CONSTRAINT pk_idCountry PRIMARY KEY (idPays)
	);

CREATE TABLE Airports(
	idAirport char(3) not null,
	name char(255) not null,
	idPays char(3) not null,
	CONSTRAINT pk_idAirport PRIMARY KEY (idAirport),
	CONSTRAINT fk_idCountry FOREIGN KEY (idPays) REFERENCES country (idPays)
	);

CREATE TABLE Airline(
	idAirline char(3) not null,
	name char(50) not null,
	CONSTRAINT pkAirline PRIMARY KEY (idAirline)
	);

CREATE TABLE Flightinfo (
	idCode INTEGER NOT NULL,
	idAirline char(3) not null,
	seats INTEGER not null,
	CONSTRAINT fk_airline FOREIGN KEY(idAirline) REFERENCES Airline (idAirline),
	CONSTRAINT pk_idFligth PRIMARY KEY (idCode)
	);

CREATE TABLE Flight(
	idCode INTEGER NOT NULL,
	idAirline char(3) not null,
	deptTime DATETIME NOT NULL,
	arrTime DATETIME NOT NULL,
	deptAirport char(3) NOT NULL,
	destAirport char(3) NOT NULL,
	CONSTRAINT fk_deptAirport FOREIGN KEY(deptAirport) REFERENCES Airports (idAirport),
	CONSTRAINT fk_destAirport FOREIGN KEY(destAirport) REFERENCES Airports (idAirport),
	CONSTRAINT fk_airline FOREIGN KEY(idAirline) REFERENCES Airline (idAirline),
	CONSTRAINT fk_idFligth FOREIGN KEY(idCode) REFERENCES Flightinfo (idCode)
	);

CREATE TABLE Langues(
	idLangue char(2) NOT NULL,
	libLangue char(30) NOT NULL,
	constraint pk_Langues PRIMARY KEY (idLangue));

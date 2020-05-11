CREATE FUNCTION "DBA"."getAirline"( in abreviation char(3))
RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE code integer;
    SET code = (
                SELECT DBA.Flight.idCode from DBA.Flight join Airline
                            where DBA.Airline.idAirline = abreviation
                );
       RETURN code;
END;

CREATE FUNCTION "DBA"."getAirportEtPays"(in abreviation char(3) ) /*Reçoit en parametre l'abreviation du nom de l'aeroport*/
RETURNS LONG VARCHAR
DETERMINISTIC
BEGIN
	DECLARE nomPays CHAR(50); //declaration de variable
	SET nomPays = (
                SELECT DBA.Country.name from Country join Airports /*Renvoi pays de l'aeroport*/
                    where DBA.Airports.idAirport = abreviation /*depend de abreviation*/
            );
	RETURN nomPays; //Retourne la réponse
END;

CREATE FUNCTION "DBA"."getNomAirline"( abreviation char(3) )
RETURNS LONG VARCHAR
DETERMINISTIC
BEGIN
	DECLARE code char(50);
    SET code = (
                SELECT DBA.Airline.name from Airline
                            where  DBA.Airline.idAirline = abreviation
                );
       RETURN code;
END;

CREATE FUNCTION "DBA"."getNomAirport"( abreviation char(3))
RETURNS LONG VARCHAR
DETERMINISTIC
BEGIN
	DECLARE code char(50);
    SET code = (
                SELECT DBA.Airports.name from Airports
                            where  DBA.Airports.idAirport = abreviation
                );
       RETURN code;
END;

CREATE FUNCTION "DBA"."getPath"()
// renvoie le chemin (path) de la racine du site (où est située la base de données)
returns long varchar
deterministic
BEGIN
 declare dbPath long varchar; // chemin de la db
 declare dbName long varchar; // nom de la db
 --
 set dbPath = (select db_property ('file'));        -- path + nom de la db
 set dbName = (select db_property('name')) + '.db'; -- nom de la db
 set dbPath = left(dbPath, length(dbPath)-length(dbName)); -- path seul
 --
 return dbPath; // renvoyer path
END;

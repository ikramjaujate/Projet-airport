/* Auteur : HE201844 Jaujate Ouldkhala Ikram */

/* Procedure qui permet d'ajouter à la base de donnée depuis HTML */

CREATE PROCEDURE "DBA"."ajout"(in id char(3), in nom char(50) )
/* RESULT( nom_colonne type_colonne, ... ) */
BEGIN
Call sa_set_http_header('Access-Control-Allow-Origin', '*');
	INSERT into Airline values( id , nom);
END;


CREATE SERVICE "TableInfo" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_TableInfo(:code,:depart,:destination);


/*Procedure qui réalise réquete afin de trouver l'information nécessaire sur chaque vol*/

CREATE PROCEDURE "DBA"."proc_TableInfo"( codeVol INTEGER ,depart char(3), destination char(3) )
RESULT (idCode INTEGER, name char(50), deptTime char(10),arrTime char(10), deptAirport char(50), destAirport char(50))
BEGIN
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
	select DBA.Flight.idCode, DBA.Airline.name, DBA.Flight.deptTime, DBA.Flight.arrTime, getNomAirport(depart), getNomAirport(destination)
        from DBA.Flight join Airline on Flight.idAirline = Airline.idAirline join Airports on DBA.Flight.deptAirport = idAirport
        where deptAirport = depart and destAirport = destination
END;

CREATE SERVICE "ajout" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call ajout(:id,:nom);

/* auteur : HE201843 Fino Julie */

/*Procédure pour ajouter un nouveau vol*/

CREATE PROCEDURE "DBA"."ajoutVols"(in codeVol INTEGER,in nomCompagnie char(3), in heureDep char(50), in heureArr char(50), in aerD char(3), in aerDest char(3))
BEGIN
Call sa_set_http_header('Access-Control-Allow-Origin', '*');
	INSERT INTO Flight values (codeVol, nomCompagnie , heureDep, heureArr, aerD, aerDest);
END;



CREATE SERVICE "ajoutVols" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call ajoutVols(:code,:nom,:hDep,:hDest,:dept,:dest);


/* Procedures qui permet d'afficher tous les vols disponibles dans la page HTML */

CREATE PROCEDURE "DBA"."proc_ToutLesVols"( )
RESULT ( idCode INTEGER, name char(50), deptTime char(10),arrTime char(10), deptAirport char(50), destAirport char(50))
BEGIN
Call sa_set_http_header('Access-Control-Allow-Origin', '*');
	select idCode, getNomAirline(idAirline), deptTime, arrTime, getNomAirport(deptAirport),getNomAirport(destAirport) from DBA.Flight
        order by idCode
END;

CREATE SERVICE "toutLesVols" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_ToutLesVols();




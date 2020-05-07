/* auteur: HE201907 Thomas Vonck 1TM2*/


/*Procedure qui permet de voir combien de aéroports il y a par pays*/

ALTER PROCEDURE "DBA"."proc_Pays"( in abreviation char(3) )
RESULT (html long varchar)
BEGIN
    call sa_set_http_header('Content-Type', 'text/html;');
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
	select  string('<tr><td>', idAirport, '</td><td>' , DBA.Airports.name, '</td><td>' ,DBA.Country.name, '</td></tr>')
        from Country join Airports
            where Country.idPays = abreviation

   
END

CREATE SERVICE "Pays" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Pays(:abreviation);

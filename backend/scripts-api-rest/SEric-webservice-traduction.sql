/* auteur : HE Eric Suys */

/*Procedure qui permet de selectionner la langue souhaiter et donc réaliser changement de la page*/

ALTER PROCEDURE "DBA"."getLangues"()
RESULT( idLangue char(2), libLangue char(30) ) // noms en sortie
BEGIN
// header http
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
        select idLangue, libLangue
            from Langues
END

CREATE SERVICE "getLangues" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call getLangues();

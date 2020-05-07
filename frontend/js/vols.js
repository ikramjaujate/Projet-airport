"use strict"
//Initiation de la page 
document.addEventListener('DOMContentLoaded', initPage);                   // dès que la page est chargée (équivalent onload)

function initPage() {
    let formulaireTable = document.getElementById("formulaireInfoVol");
    formulaireTable.addEventListener("submit", soumettreRequete);
	
	let formulaireAeroport = document.getElementById("formulaireAeroport");
   formulaireAeroport.addEventListener("submit", soumettreRequeteAeroport);	// lorsque le formulaire est soumis (équivalent onsubmit)
   
   let formulaireAjout = document.getElementById("formulaireAjoutVols");
   formulaireAjout.addEventListener("submit", soumettreRequeteAjout);
   
   let formulairePush = document.getElementById("formulaireAjout");
   formulairePush.addEventListener("submit", soumettreRequetePush);
	affichage(); //affiche tout les vols
	langues(); //Affiche langues disponibles
}

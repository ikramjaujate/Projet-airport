"use strict"

function soumettreRequeteAeroport(event) {                         // recoit l'évènement, envoyé par addEventListener
    event.preventDefault();                                // bloque l'envoi du formulaire et donc le rafraichissement de la page.

    let formulaire = this;                                 // this est l'élément qui enclenche l'appel à la fonction, soit le formulaire
    envoie(formulaire.codePays.value);            // récupère le code du vol + de aéroport départ + de airport de destination dans le champ et l'utilise pour envoyer la requête
}

function envoie(codePays){
	
	let xhr = new XMLHttpRequest();
	xhr.open('get', "http://localhost:70/Pays?abreviation=" + codePays, true);    // définit le type (get), l'url et l'asynchrone de la requête
    xhr.onload = callPays;
	
	xhr.send();
}
function callPays(){
	document.getElementById("zoneOutputPays").innerHTML= this.responseText;
}

//Utilise type RAW dans base de donnée

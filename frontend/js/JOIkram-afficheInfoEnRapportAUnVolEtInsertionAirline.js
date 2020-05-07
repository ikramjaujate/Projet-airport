"use strict"
function soumettreRequete(event) {                         // recoit l'évènement, envoyé par addEventListener
    event.preventDefault();                                // bloque l'envoi du formulaire et donc le rafraichissement de la page.

    let formulaire = this;                                 // this est l'élément qui enclenche l'appel à la fonction, soit le formulaire
    envoyerRequete(formulaire.code.value, formulaire.depart.value, formulaire.destination.value );            // récupère le code du vol + de aéroport départ + de airport de destination dans le champ et l'utilise pour envoyer la requête
}

function envoyerRequete(code, depart, destination) { //3 parametres 
    let xhr = new XMLHttpRequest();                            // création d'un objet servant à effectuer la requête Ajax
    xhr.open('get', "http://localhost:70/TableInfo?code=" + code + "&depart=" + depart.toUpperCase() + "&destination=" + destination.toUpperCase(), true);    // définit le type (get), l'url et l'asynchrone de la requête
    xhr.onload = callBack; // en fonction des 3 parametres nous allons envoyer la recherche
	  
	xhr.send();
}
function callBack() {
			let reponse = JSON.parse(this.responseText);
			let trHtml = "<tr>";
				for(let i of reponse){
					trHtml += "<td>" + i.idCode + "</td>" + "<td>" + i.name + "</td>" + "<td>" + i.deptTime + "</td>" + "<td>" + i.arrTime + "</td>" + "<td>" + i.deptAirport + "</td>" + "<td>" + i.destAirport + "</td>"
					trHtml += "</tr>";
				}
				
				document.querySelector("#zoneOutput").innerHTML = trHtml;  // ici, place simplement la réponse dans un élément de la page
}

/*AJOUT NOUVELLE COMPAGNIE*/

function soumettreRequetePush(event) {                         // recoit l'évènement, envoyé par addEventListener
    event.preventDefault();                                // bloque l'envoi du formulaire et donc le rafraichissement de la page.

    let formulaire = this;                                 // this est l'élément qui enclenche l'appel à la fonction, soit le formulaire
    ajout(formulaire.nom.value,formulaire.compagnie.value);            // récupère le code du vol + de aéroport départ + de airport de destination dans le champ et l'utilise pour envoyer la requête
}

function ajout(nom, compagnie){
	let xhr = new XMLHttpRequest();
	xhr.open('get', "http://localhost:70/ajout?id=" + nom + "&nom=" + compagnie, true); 
		if(document.documentElement.getAttribute('lang') == 'fr'){
			let th = "<tr>";
			th += "<td>" + "Vous avez ajouté une nouvelle compagnie aérienne : " + compagnie +"</td></tr>";
			document.getElementById("ajouterAirlines").innerHTML = th;
	}else{
		let th = "<tr>";
			th += "<td>" + "You've added a new airline : " + compagnie +"</td></tr>";
			document.getElementById("ajouterAirlines").innerHTML = th;
	}
		
	xhr.send();
	
}

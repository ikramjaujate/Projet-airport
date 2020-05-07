"use strict"
function soumettreRequeteAjout(event) {                         // recoit l'évènement, envoyé par addEventListener
    event.preventDefault();                                // bloque l'envoi du formulaire et donc le rafraichissement de la page.

    let formulaire = this;                                 // this est l'élément qui enclenche l'appel à la fonction, soit le formulaire
    ajoutVols(formulaire.codeVol.value,formulaire.airline.value,formulaire.hdepart.value,formulaire.harrivee.value,formulaire.adepart.value,formulaire.aarrivee.value, );            // récupère le code du vol + de aéroport départ + de airport de destination dans le champ et l'utilise pour envoyer la requête
}
function ajoutVols(codeVol,airline, hdepart, harrivee, adepart, aarrivee){
	
	let xhr = new XMLHttpRequest();
	xhr.open('get', "http://localhost:70/ajoutVols?code=" + codeVol +"&nom=" + airline +"&hDep=" + hdepart +"&hDest=" + harrivee +"&dept=" + adepart +"&dest=" + aarrivee , true); 
		if(document.documentElement.getAttribute('lang') == 'fr'){
			let th = "<tr>";
			th += "<td>" + "Vous avez ajouté un nouveau vol allant de " + adepart +" à " + aarrivee +"</td></tr>";
			document.getElementById("ajouterVols").innerHTML = th;
	}else{
		let th = "<tr>";
			th += "<td>" + "You've added a new flight from "  + adepart +" to " + aarrivee +"</td></tr>";
			document.getElementById("ajouterVols").innerHTML = th;
	}
	xhr.send();
}

function affichage(){
	let xhr = new XMLHttpRequest();           // création d'un objet servant à effectuer la requête Ajax
    xhr.open('get', "http://localhost:70/toutLesVols", true)    // définit le type (get), l'url et l'asynchrone de la requête
    xhr.onload = traiterReponse; 
	  
	xhr.send()
}
function traiterReponse(){ //Traite la reponse ( dans ce cas tout les vols )
	let reponse = JSON.parse(this.responseText); //En Parser le JSON
	let trHtml = "<tr>"; //Tableau 
	for(let i of reponse){
					trHtml += "<td>" + i.idCode + "</td>" + "<td>" + i.name + "</td>" + "<td>" + i.deptTime + "</td>" + "<td>" + i.arrTime + "</td>" + "<td>" + i.deptAirport + "</td>" + "<td>" + i.destAirport + "</td>"
					trHtml += "</tr>";
				}
				document.querySelector("#affichage").innerHTML = trHtml; //Introduction des élements dans le tableau
}

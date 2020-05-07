"use strict"
function langues(){
	let xhr = new XMLHttpRequest();           // création d'un objet servant à effectuer la requête Ajax
    xhr.open('get', "http://localhost:70/getLangues", true) ;
	
	xhr.onload = makeOptions;
	
	xhr.send();
}

function makeOptions(){
	let reponse = JSON.parse(this.responseText);
	let liste = '<select onChange="setLangue(this);"><option> Choisis la langue / Select Language</option>'; //Inserer élements select 
		for(let i in reponse){
			
			liste += '<option id=' + reponse[i].idLangue;
			if(reponse[i].idLangue == 'FR'){
				liste +=  " value=http://localhost:70/page?url=airport" +'>'+ reponse[i].libLangue + '</option>'; //Page en Français
			}else{
				liste += " value=http://localhost:70/page?url=airportEN" +'>'+ reponse[i].libLangue + '</option>'; //Page en Anglais
			}
			
		}
		liste += '</select>';
		document.getElementById("lang").innerHTML = liste;
}

function setLangue(x){
	return window.document.location.href=x.options[x.selectedIndex].value //Selon de option choisit nous realisos la redirection vers la page correspondant au language choisit
}

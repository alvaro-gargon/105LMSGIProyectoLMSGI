var titulo=document.getElementById("titulo");
titulo.innerText="UD3.1 DOCUMENT OBJECT MODEL";

var parrafos=document.getElementsByClassName("parrafo");
parrafos[0].innerText="Este es un parrafo 1";
parrafos[1].innerHTML="Este es un parrafo 2"; //poniendo outerHtml se jode el Css
parrafos[2].innerText="Este es un parrafo 3";

var body=document.getElementById("cuerpo");
cuerpo.style.backgroundColor="#f4f4f4";
cuerpo.style.textAlign="center";

titulo.style.color="#333";
titulo.style.fontWeight="bold";
titulo.style.marginBottom="15px";
titulo.style.textTransform="uppercase";

for (var i = 0; i < parrafos.length; i++) {
    parrafos[i].style.fontSize = "18px";
    parrafos[i].style.padding = "10px";
    parrafos[i].style.width = "60%";
    parrafos[i].style.borderLeft = "5px solid";
    parrafos[i].style.borderRadius = "5px";
    parrafos[i].style.lineHeight = "1.6";
    parrafos[i].style.margin = "0 auto 15px";
}

parrafos[0].style.color="#e74c3c";
parrafos[0].style.backgroundColor="#ffe6e6";
parrafos[0].style.borderColor="#c0392b";

parrafos[1].style.color="#2ecc71";
parrafos[1].style.backgroundColor="#eaffea";
parrafos[1].style.bordercolor="#27ea60";

parrafos[2].style.color="#3498db";
parrafos[2].style.backgroundColor="#e6f2ff";
parrafos[2].style.bordercolor="#2980b9";

var footer=document.querySelector("footer");

var enlace=document.getElementsByTagName("a");
for (var i=0;i<enlace.length;i++){
    enlace[i].style.color="green";
}

var botones=document.getElementsByTagName("button");
for (var i=0;i<botones.length;i++){
    botones[i].style.backgroundColor="#009af2";
    botones[i].style.color="white";
    botones[i].style.padding="8px";
}
function saludar(){
    alert("Esto es una alerta");
}
function cambiarColor(){
    //titulo.style.color="white";
    //cuerpo.style.backgroundColor="black";
    cuerpo.classList.toggle("fondo-cambiado");
}
function cambiarParrafos(){
    let boton3=document.getElementById("boton1")
    for (var i = 0; i < parrafos.length; i++) {
        //parrafos[i].style.transform="rotate(10deg)";
        parrafos[i].classList.toggle("estilo-cambiado"); //es una classe dentro del css
    }
    boton3.value=boton3.value === "Cambiar Parrafos" ? "Parrafo original" : "Cambiar Parrafos"
}
document.addEventListener("DOMContentLoaded", function(){
    document.getElementById("boton1").addEventListener("click", saludar);
    document.getElementById("boton2").addEventListener("click", cambiarColor);
    document.getElementById("boton3").addEventListener("click", cambiarParrafos);
    } // fin de la funciÃ³n
    ) // fin AddEventListener
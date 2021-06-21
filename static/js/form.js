/**
 * @author: manolohidalgo_
 */

document.addEventListener("DOMContentLoaded", function (){
    let verMas = document.getElementById("verMas");
    let listGenerosComp = Array.from(document.getElementById("listGenerosComp").children);
    let generosOcultos = listGenerosComp.slice(9);

    // Ocultamos los géneros por defecto
    ocultarGeneros();

    verMas.addEventListener("click", function () {
        if (verMas.innerHTML == "Ver más"){
            verMas.innerHTML = "Ocultar últimos estilos";
            listGenerosComp.forEach((e) => e.className = "");
        } else {
            verMas.innerHTML = "Ver más";
            ocultarGeneros();
        }
    });
    
    // Funciones
    function ocultarGeneros() {
        generosOcultos.forEach((e)=> e.className = "lista-oculta");
    }

});
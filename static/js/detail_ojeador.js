/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let verMasNoticias = document.getElementById("verMasNoticias");
    let lista_noticias = Array.from(document.getElementById("lista-noticias").children);
    let noticiasOcultos = lista_noticias.slice(2);


    // Ocultamos los géneros por defecto
    ocultarLista(noticiasOcultos);

    verMasNoticias.addEventListener("click", function () {
        verMasOcultar(verMasNoticias, lista_noticias);
    });
    
    // Funciones
    function verMasOcultar(boton, lista) {
        if (boton.innerHTML == "Ver más"){
            boton.innerHTML = "Ocultar";
            lista.forEach((e) => e.className = "");
        } else {
            boton.innerHTML = "Ver más";
            switch (lista) {
                case lista_noticias:
                    ocultarLista(noticiasOcultos);
                    break;
                default:
                    break;
            }
        }
    }
    function ocultarLista(lista) {
        lista.forEach((e)=> e.className = "lista-oculta");
    }

});
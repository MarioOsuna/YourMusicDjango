/**
 * @author: Manolo Hidalgo y Mario Osuna
 */

document.addEventListener("DOMContentLoaded", function() {
    let form_video = document.getElementById("form-video");
    let form_audio = document.getElementById("form-audio");
    let edit_nombre = document.getElementById("nombre-grupo");
    let sel_audio = document.getElementById("sel-audio");
    let tit_audio = document.getElementById("titulo-audio");
    let enlace_video = document.getElementById("enlace-video");

    document.getElementById("addVideos").addEventListener("click", function() {
        mostrarOcultar(form_video);
    });

    document.getElementById("edit-nombre").addEventListener("click", function() {
        mostrarOcultar(edit_nombre);
    });

    document.getElementById("addAudios").addEventListener("click", function() {
        mostrarOcultar(form_audio);
    });

    document.getElementById("save-audio").addEventListener("click", function(oEvent) {
        if (sel_audio.value == "" || tit_audio.value == "") {
            oEvent.preventDefault();
        }
    });

    document.getElementById("guardar-video").addEventListener("click", function(oEvent) {
        let patron_video = /^((?:https?:)?\/\/)?((?:www|m)\.)?((?:youtube\.com|youtu.be))(\/(?:[\w\-]+\?v=|embed\/|v\/)?)([\w\-]+)(\S+)?$/;
        let resultado;
        resultado = enlace_video.value.match(patron_video);
        resultado = resultado[5];
        enlace_video.value = resultado;
    });

    function mostrarOcultar(campo) {
        (campo.getAttribute("hidden") == "true") ? campo.removeAttribute("hidden"): campo.setAttribute("hidden", true);
    }
});
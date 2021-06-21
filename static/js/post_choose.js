/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let text = document.getElementById("text");
    let titMensaje;
    try{
        titMensaje = document.getElementById("titMensaje");
        titMensaje.addEventListener("keyup", () => comprobarEstilo(titMensaje));
    } catch {
        titMensaje = "";
    }

    document.getElementById("enviarMensaje").addEventListener("click", function (oEvent) {
        comprobarValidez(oEvent)
    } );
    text.addEventListener("keyup", () => comprobarEstilo(text));

    function comprobarValidez(oEvent) {
        let value = true;
        if (titMensaje.value == ""){
            value = false;
            titMensaje.className = "input-mensajes invalid";
        }
        if (text.value == ""){
            value = false;
            text.className = "input-mensajes textarea-error";
        }
        if (!value) oEvent.preventDefault();
    }

    function comprobarEstilo(campo) {
        if (campo.value != "") campo.className = "input-mensajes";
    }

});
/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let btnEnviar = document.getElementById("btnEnviar");
    let email = document.getElementById("email");
    let resultado;
    let mensaje = "Hemos enviado un email a su dirección de correo. Si no lo recibe en su bandeja de entrada, revise su carpeta de Spam.";
    try {
        resultado = document.getElementById("resultado");
    } catch {
        resultado = "";
    }

    btnEnviar.addEventListener("click", (oEvent) => comprobarEnvio(oEvent));

    if (resultado.innerHTML != "" && resultado.innerHTML != mensaje){
        btnEnviar.style = "display: none";
    };
    
    function comprobarEnvio(oEvent) {
        if (email.value == "" || !(/^\w+([.-]?\w)*[@]\w+([.-]?\w)*[.]\w{2,4}$/).test(email.value)){
            oEvent.preventDefault();
        }
    }
});
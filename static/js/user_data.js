/**
 * @author: MANUEL HIDALGO PÉREZ
 */

document.addEventListener("DOMContentLoaded", function (){
    let pass_form = document.getElementById("datos-pass");
    let check_pass = document.getElementById("pass");
    let enviar = document.getElementById("enviar");
    let pass1 = document.getElementById("pass1");
    let pass2 = document.getElementById("pass2");
    let email = document.getElementById("email");
    
    document.getElementById("pass").addEventListener("click", function () {
        (check_pass.checked == false) ? pass_form.setAttribute("hidden", true) : pass_form.removeAttribute("hidden");
    });

    enviar.addEventListener("click", (oEvent) => {
        if ((check_pass.checked) && (pass1.value == "" || pass2.value == "")){
            mensajeError(oEvent, "Los campos de nueva contraseña no pueden estar vacíos");
        } else if ((check_pass.checked) && (pass1.value != pass2.value)){
            mensajeError(oEvent, "Las dos contraseñas deben ser iguales");
        } else if (!(/^\w+([.-]?\w)*[@]\w+([.-]?\w)*[.]\w{2,4}$/).test(email.value)){
            mensajeError(oEvent, "Debe introducir un email correcto");
        }
    });


    // Funciones
    function mensajeError(oEvent, mensaje){
        oEvent.preventDefault();
        alert(mensaje);
    }
    // Ocultar-Mostrar cambio de contraseña


});
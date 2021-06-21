/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let btnEnviar = document.getElementById("btnEnviar");
    let pass1 = document.getElementById("pass1");
    let pass2 = document.getElementById("pass2");
    
    btnEnviar.addEventListener("click", (oEvent) => comprobarEnvio(oEvent));
    pass1.addEventListener("keyup", () => comprobarEstilo(pass1));
    pass2.addEventListener("keyup", () => comprobarEstilo(pass2));

    function comprobarEnvio(oEvent) {
        let value = true;
        if (pass1.value == "") {
            value = false;
            pass1.className = "invalid";
        }
        if (pass2.value == ""){
            value = false;
            pass2.className = "invalid";
        }
        if (pass1.value != pass2.value && pass1.value != "" && pass2.value != ""){
            value = false;
            alert("Las contraseñas no coinciden. Introduce de nuevo ambas contraseñas.");
            pass1.className = "invalid";
            pass2.className = "invalid";
            pass1.focus();
        }
        if (!value) oEvent.preventDefault();
    }

    function comprobarEstilo(campo) {
        if (campo.value != "") campo.className = "";
    }
});
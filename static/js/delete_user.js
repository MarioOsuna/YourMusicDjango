/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let baja = document.getElementById("baja");
    let formBaja = document.getElementById("formBaja");


    baja.addEventListener("click", function () {
        let resultado;
        resultado = window.confirm("Estás a un click de dejarnos, ¿Estás seguro?");
        if (resultado) formBaja.submit();
    });
});
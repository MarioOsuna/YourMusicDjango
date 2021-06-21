/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function() {
    let currentTab = 0; // Current tab is set to be the first tab (0)
    let x = document.getElementsByClassName("tab");
    let prevBtn = document.getElementById("prevBtn");
    let nextBtn = document.getElementById("nextBtn");
    let grupo = document.getElementById("registro-grupo");
    let ojeador = document.getElementById("registro-ojeador");
    let inputGrupo = document.getElementById("grupo");
    let inputOjeador = document.getElementById("ojeador");
    let nombreGrupo = document.getElementById("nombre-grupo");
    let descripcionGrupo = document.getElementById("descripcionGrupo");
    let descripcionOjeador = document.getElementById("descripcionOjeador");
    let selTipoOjeador = document.getElementById("selec-tipo-ojeador");
    let imagen = document.getElementById("inputFile1");
    let img = document.getElementById('img1');
    let eventoImagen;


    showTab(currentTab); // Display the current tab

    prevBtn.addEventListener("click", () => nextPrev(-1));
    nextBtn.addEventListener("click", () => nextPrev(1));
    grupo.addEventListener("click", () => marcarOpcion(1));
    ojeador.addEventListener("click", () => marcarOpcion(-1));
    imagen.addEventListener("change", mostrarImagen, false);
    nombreGrupo.addEventListener("keyup", () => comprobarEstilo());



    function marcarOpcion(n) {
        if (n == 1) {
            inputGrupo.checked = true;
            grupo.className = "registro-marcado";
            ojeador.className = "registro";
            descripcionGrupo.className = "wizzard-parrafo";
            descripcionOjeador.className = "descripcionWizzardOculto";
        } else {
            inputOjeador.checked = true;
            grupo.className = "registro";
            ojeador.className = "registro-marcado";
            descripcionGrupo.className = "descripcionWizzardOculto";
            descripcionOjeador.className = "wizzard-parrafo";
        }
    }

    function showTab(n) {
        x[n].style.display = "block";
        // ... and fix the Previous/Next buttons:
        if (n == 0) {
            prevBtn.style.display = "none";
        } else {
            prevBtn.style.display = "inline";
        }

        if (n == (x.length - 1)) {
            nextBtn.innerHTML = "Enviar";
        } else {
            nextBtn.innerHTML = "Siguiente";
        }
        // ... and run a function that displays the correct step indicator:
        fixStepIndicator(n);
    }

    function nextPrev(n) {
        comprobarCamposMostrar();
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form... :
        if (currentTab == x.length) {
            document.getElementById("regForm").submit();
            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    function validateForm() {
        // This function deals with validation of the form fields
        let valid = true;
        let y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "" && y[i] != imagen) {
                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false:
                valid = false;
            }
        }
        if (currentTab == (x.length - 1)) {
            let patron_email = /^\w+([.-]?\w)*[@]\w+([.-]?\w)*[.]\w{2,4}$/;
            // let patron_telefono = /(\+34|0034|34)?[ -]*(6|7)[ -]*([0-9][ -]*){8}/;

            if (patron_email.test(y[0].value)) {
                valid = true;
                y[0].className = "input-wizzard";
            } else if (!patron_email.test(y[0].value)) {
                valid = false;
                y[0].className += " invalid";
                y[1].className = "input-wizzard";
            } else {
                valid = false;
                y[1].className += " invalid";
                y[0].className = "input-wizzard";
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        let z = document.getElementsByClassName("step");
        for (i = 0; i < z.length; i++) {
            z[i].className = z[i].className.replace(" active", "");
        }
        //... and adds the "active" class to the current step:
        z[n].className += " active";
    }

    /* Mostrar imagen */
    
    

    function mostrarImagen(oEvent) {
        eventoImagen = oEvent;
        let file = oEvent.target.files[0];
        let reader = new FileReader();
        reader.onload = function(oEvent) {
            img.src = oEvent.target.result;
        }
        reader.readAsDataURL(file);
    }
    function comprobarEstilo(params) {
        if (nombreGrupo.value != "") nombreGrupo.className = "input-wizzard";
    }

    function comprobarCamposMostrar(params) {
        (!inputOjeador.checked) ? selTipoOjeador.className = "lista-oculta" : selTipoOjeador.className = "";
        if (imagen.value != "" && !eventoImagen) imagen.value = "";
    }
});
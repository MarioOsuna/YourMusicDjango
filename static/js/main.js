/**
 * @author: manolohidalgo_
 */

document.addEventListener("DOMContentLoaded", function (){
    let menu = document.getElementById("menu");
    

    document.getElementById("barra-menu").addEventListener("click", function () {
        menu.style.left = (menu.style.left != "0px") ? "0px" : "-100%";
    });        
    
    
});

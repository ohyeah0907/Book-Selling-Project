import * as modal from "../homepage-js/Modal.js"
import * as searchBar from "../homepage-js/SearchBar.js"; 
import * as menu from "../homepage-js/Menu.js";
window.addEventListener("load",function(){ 

     //Login and Register
     const loginButton = this.document.getElementsByClassName("button--login");
     const registerButton = this.document.getElementsByClassName("button--register");   

     modal.IdentifyButton(loginButton, modal.loginForm, modal.registerForm);
     modal.IdentifyButton(registerButton, modal.registerForm, modal.loginForm);
     
     //Search bar
     const firstSearchBar = this.document.querySelector("#first-search-bar input");
     const secondSearchBar = this.document.querySelector("#second-search-bar input");
     const menuComponentsContainerItems = this.document.querySelectorAll(".menu-components-container__items:not(.menu-components-container__items:first-child)");
     const first = "first-search-bar"; 
     const second = "second-search-bar";

     firstSearchBar.addEventListener("keyup", function(e) {
             searchBar.List(e, first);
     })
     secondSearchBar.addEventListener("keyup", function(e) {
             searchBar.List(e, second);
     })
     this.document.querySelector("#first-search-bar .icons--erase").addEventListener("click", function() {
             searchBar.Erase(firstSearchBar, first);
     });
     this.document.querySelector("#second-search-bar .icons--erase").addEventListener("click", function() {
             searchBar.Erase(secondSearchBar, second);
     });
     
    //Toggle menu
    menu.ToggleMenu(); 
})
import * as modal from "../homepage-js/Modal.js"
import * as searchBar from "../homepage-js/SearchBar.js"; 
import * as menu from "../homepage-js/Menu.js";
window.addEventListener("load",function(){ 

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
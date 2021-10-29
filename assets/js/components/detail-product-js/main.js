import * as modal from "../homepage-js/Modal.js";
import * as searchBar from "../homepage-js/SearchBar.js";  
import * as createBooks from "../homepage-js/CreateBooks.js";
import * as rating from "../homepage-js/Rating.js";
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

        //Create books
        const books= [
            { 
                    book_name: "HarryPottervaHoangTuLai",
                    book_title: "Harry Potter và Hoàng Tử Lai",
                    book_image: "/assets/images/pictures/homepage-images/others/harry-potter-va-hoang-tu-lai.jpg",
                    book_price: 50000,
                    book_rating: 2
            },
            { 
                    book_name: "HarryPottervaHonDaPhuThuy",
                    book_title: "Harry Potter và Hòn Đá Phù Thủy",
                    book_image: "/assets/images/pictures/homepage-images/others/harry-potter-va-hon-da-phu-thuy.jpg",
                    book_price: 50000,
                    book_rating: 1.5
            },
            { 
                    book_name: "HarryPottervaHoiPhuongHoang",
                    book_title: "Harry Potter và Hòn Đá Phù Thủy",
                    book_image: "/assets/images/pictures/homepage-images/others/harry-potter-va-hoi-phuong-hoang.jpg",
                    book_price: 50000,
                    book_rating: 1.5
            },
            { 
                    book_name: "HarryPottervaTenTuNhanNgucAzakaban",
                    book_title: "Harry Potter và Hòn Đá Phù Thủy",
                    book_image: "/assets/images/pictures/homepage-images/others/harry-potter-va-ten-tu-nhan-nguc-azakaban.jpg",
                    book_price: 50000,
                    book_rating: 1.5
            },
            { 
                    book_name: "HarryPottervaHonDaPhuThuy",
                    book_title: "Harry Potter và Hòn Đá Phù Thủy",
                    book_image: "/assets/images/pictures/homepage-images/others/harry-potter-va-hon-da-phu-thuy.jpg",
                    book_price: 50000,
                    book_rating: 1.5
            }
        ]
        createBooks.CreateNewBook(books, "relative-book"); 

        //Rating star
        rating.RatingStar(books);
        
        //Toggle menu
        menu.ToggleMenu(); 

})
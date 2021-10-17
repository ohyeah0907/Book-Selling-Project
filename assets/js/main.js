import * as Modal from "./components/Modal.js";
import * as SearchBar from "./components/SearchBar.js";  
import * as Slider from "./components/Slider.js";
import * as Book from "./components/CreateBooks.js";
import * as Rating from "./components/Rating.js";
import * as Toggle from "./components/Menu.js";
import * as Reveal from "./components/Reveal.js";

window.addEventListener("load",function(){
        
        //Login and Register
        const loginButton = this.document.getElementsByClassName("button--login");
        const registerButton = this.document.getElementsByClassName("button--register");   

        Modal.IdentifyButton(loginButton, Modal.loginForm, Modal.registerForm);
        Modal.IdentifyButton(registerButton, Modal.registerForm, Modal.loginForm);
        
        //Search bar
        const firstSearchBar = this.document.querySelector("#first-search-bar input");
        const secondSearchBar = this.document.querySelector("#second-search-bar input");
        const menuComponentsContainerItems = this.document.querySelectorAll(".menu-components-container__items:not(.menu-components-container__items:first-child)");
        const first = "first-search-bar"; 
        const second = "second-search-bar";

        firstSearchBar.addEventListener("keyup", function(e) {
                SearchBar.List(e, first);
        })
        secondSearchBar.addEventListener("keyup", function(e) {
                SearchBar.List(e, second);
        })
        this.document.querySelector("#first-search-bar .icons--erase").addEventListener("click", function() {
                SearchBar.Erase(firstSearchBar, first);
        });
        this.document.querySelector("#second-search-bar .icons--erase").addEventListener("click", function() {
                SearchBar.Erase(secondSearchBar, second);
        });
        
        //Slider
        Slider.AutoSlider();

        //Create books
        const books= [
                { 
                        book_name: "HarryPottervaHoangTuLai",
                        book_title: "Harry Potter và Hoàng Tử Lai",
                        book_image: "./assets/images/pictures/harry-potter-va-hoang-tu-lai.jpg",
                        book_price: 50000,
                        book_rating: 2
                },
                { 
                        book_name: "HarryPottervaHonDaPhuThuy",
                        book_title: "Harry Potter và Hòn Đá Phù Thủy",
                        book_image: "./assets/images/pictures/harry-potter-va-hon-da-phu-thuy.jpg",
                        book_price: 50000,
                        book_rating: 1.5
                },
                { 
                        book_name: "HarryPottervaHoiPhuongHoang",
                        book_title: "Harry Potter và Hòn Đá Phù Thủy",
                        book_image: "./assets/images/pictures/harry-potter-va-hoi-phuong-hoang.jpg",
                        book_price: 50000,
                        book_rating: 1.5
                },
                { 
                        book_name: "HarryPottervaTenTuNhanNgucAzakaban",
                        book_title: "Harry Potter và Hòn Đá Phù Thủy",
                        book_image: "./assets/images/pictures/harry-potter-va-ten-tu-nhan-nguc-azakaban.jpg",
                        book_price: 50000,
                        book_rating: 1.5
                },
                { 
                        book_name: "HarryPottervaHonDaPhuThuy",
                        book_title: "Harry Potter và Hòn Đá Phù Thủy",
                        book_image: "./assets/images/pictures/harry-potter-va-hon-da-phu-thuy.jpg",
                        book_price: 50000,
                        book_rating: 1.5
                }
        ]

        Book.CreateNewBook(books,"best-seller");
        Book.CreateNewBook(books,"feature");
        Book.CreateNewBook(books,"book-for-month");

        //Rating star
        Rating.RatingStar(books);

        //Advertise banner
        Slider.AdvertiseSlider();
        
        //Toggle menu
        Toggle.ToggleMenu(); 

        //Reveal section
        Reveal.RevealSection();
        
})





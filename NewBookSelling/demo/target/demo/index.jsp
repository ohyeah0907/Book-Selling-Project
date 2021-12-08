<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
        <link rel="stylesheet" href="./asset/css/general/base.css">
        <link rel="stylesheet" href="./asset/css/home-page/header.css">
        <link rel="stylesheet" href="./asset/css/home-page/content.css">
        <title>Homepage</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
    </head>
    <body>
        <div id="login-register-container" onclick="outLogin()">
            <form method="post" action="main-page" name='login' class="login-form">
                <input type="hidden" id="login-register-action" name="login-register" value="login">
        
                <div class='container-mode'>
                    <div id="login-mode-box" class='mode-box chosen' onclick='handleMode()' >Login</div>
                    <div id="signup-mode-box" class='mode-box' onclick='handleMode()' >Signup</div>           
                </div>
                <div class="input-container">
                    <input type="text" id="username" name="username" placeholder="Username" class="input-item" required>

                    <input type="password" id="password" name="password" placeholder="Password" class="input-item" required>

                    <input type="hidden" id="confirm-password" name="confirm-password" placeholder="Confirm Password" class="input-item">
                    <a id="forgot-password" href="">Forgot password?</a>
                </div>
                <input type="submit" value="Login" class="submit" id='submit'>

                <p id="not-a-member">Not a member? <a href="#" id="signup-now" onclick="handleMode()">Signup now</a></p>
                </form>
        </div>
        <div id="header">
            <div class="header__container__box">
                <div id="group-name" class="">Book Store</div>
            </div>
            <div class="header__container">
                <div class="header__container__box__item" >
                    <a onclick="loginClick()" class="header__container__box">Category</a>
                </div>
                <div class="header__container__box__item" >
                    <a onclick="loginClick()" class="header__container__box">Login</a>
                </div>
                <div class="header__container__box__item" >
                    <a onclick="loginClick()" class="header__container__box">Register</a>
                </div>
            </div>
        </div>
        <div class="grid" id="final-project">
            <div class="final-project-container row">
                <div id="book-box-container" class="col l-6 m-6 s-12 mm-12">
                    <div id="book-box"><span>Book Store</span></div>
                    <div id="a-new-world-box" class=""><span>Change your life</span></div>
                </div>
                <div class="slider-container col l-6 m-6 s-12 mm-12">
                    <!-- Slider -->
                    <div class="slider slider-1">
                        <div class="slides">
                            <input type="radio" name="radio" id="radio1">
                            <input type="radio" name="radio" id="radio2">
                            <input type="radio" name="radio" id="radio3">
                            <div class="slide first">
                                <img src="./asset/images/home-page/slider/slider-1-banner-1-min.png" alt="">
                            </div>
                            <div class="slide">
                                <img src="./asset/images/home-page/slider/slider-1-banner-2-min.png" alt="">
                            </div>
                            <div class="slide">
                                <img src="./asset/images/home-page/slider/slider-1-banner-3-min.png" alt="">
                            </div>
                        </div>
                            <!-- Manual navigation -->
                        <div class="manual-navigation">
                            <label for="radio1" class="manual-button"></label>
                            <label for="radio2" class="manual-button"></label>
                            <label for="radio3" class="manual-button"></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="projects-container grid">
            <div class="section">
                <div class="section section--popular row">
                    <a onclick="loginClick()" class="view-all font-white col l-12 m-12 s-12 mm-12">View all</a>
                    <div class="section-popular__container row col l-12 m-12 s-12">
                        <div class="section-header section-popular__header col l-4 m-12 s-12 mm-12">
                            <h1 class="header-item font-white">Popular books of the month.</h1>
                        </div>
                        <div class="section-popular__item-wrapper item-wrapper col l-8 m-12 s-12 mm-12">
                            <div class="item section-popular__item item-1 no-deco col l-4 m-4 s-6 mm-12">
                                <div class="item__description">
                                    <h2 class="item-name font-black">${allBook.get(0).getTitle()}</h2>
                                    <p class="item-author font-black">${allBook.get(0).getAuthor()}</p>
                                    <div class="item-rating item-rating--medium">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                                <div class="item__img">
                                    <img src="${allBook.get(0).getLink()}" alt="" class="width-100">
                                    
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a onclick="loginClick()" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a onclick="loginClick()" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            <div class="item section-popular__item item-2 col l-4 m-4 s-6 mm-12">
                                <div class="item__description">
                                    <h2 class="item-name font-black">${allBook.get(1).getTitle()}</h2>
                                    <p class="item-author font-black">${allBook.get(1).getAuthor()}</p>
                                    <div class="item-rating item-rating--medium">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                                <div class="item__img">
                                    <img src="${allBook.get(1).getLink()}" alt="" class="width-100">
                                    
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a onclick="loginClick()" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a onclick="loginClick()" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                                
                            </div>
                            <div class="item section-popular__item item-3 col l-4 m-4 s-12 mm-12">
                                <div class="item__description">
                                    <h2 class="item-name font-black">${allBook.get(2).getTitle()}</h2>
                                    <p class="item-author font-black">${allBook.get(2).getAuthor()}</p>
                                    <div class="item-rating item-rating--medium">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                                <div class="item__img">
                                    <img src="${allBook.get(2).getLink()}" alt="" class="width-100">
                                    
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a onclick="loginClick()" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a onclick="loginClick()" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="projects-container-header">
                <p class="projects-container-header__title">
                    Available books
                </p>
            </div>
            <ul id="projects" class="content-container wrap">
                <!-- Lấy dữ liệu sách từ database -->
                <c:forEach items="${allBook}" var="book">
                    <li class="projects__item">
                        <a onclick="loginClick()" class="projects__container__box ">
                            <div class="book-img"><img src='${book.getLink()}'></div>
                            <div class="book-title">${book.getTitle()}</div>
                        </a>
                    </li>          
                </c:forEach>
            </ul>
            <div class="section">
                <div class="section-blog__container">
                    <div class="section-col-2 section-header">
                        <h1 class="header-item blog-header">Top 10 Vietnamese novels</h1>
                        <p class="header-description">
                            Novels have long become spiritual food for human life.
                            Not only in foreign countries, but also in Vietnam, there are countless good novels that have made their name in world literature.</p>
                            <button class="btn btn--primary">See the books</button>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="section-hint__container row">
                    <div class="section-hint__item col m-12 s-12 mm-12">
                        <div class="hint-img ">
                            <img src="./asset/images/home-page/banner/slider-2-banner-1-min.png" alt="" class="width-100" style="height:100%">
                        </div>
                        <div class="hint-content">
                            <h3 class="hint-content__item hint-header"><a onclick="loginClick()" class="no-deco hint-header__link">Used Books</a></h3>
                            <p class="hint-content__item hint-description">Giving used books new life is what we do best. The choice of used books is massive - from classic novels to cookbooks, children's books, and so much more.</p>
                            <a onclick="loginClick()" class="hint-content__item go-to no-deco">
                                Search for used books<i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="section-hint__item col m-12 s-12 mm-12">
                        <div class="hint-img ">
                            <img src="./asset/images/home-page/banner/slider-2-banner-2-min.png" alt="" class="width-100" style="height:100%">
                        </div>
                        <div class="hint-content">
                            <h3 class="hint-content__item hint-header"><a onclick="loginClick()" class="no-deco hint-header__link">Seller Sales</a></h3>
                            <p class="hint-content__item hint-description">Each month, select sellers offer their items for sale on AbeBooks at huge discounts, making it easy to buy books, art and collectibles online.</p>
                            <a onclick="loginClick()" class="hint-content__item go-to no-deco">
                                Search for good sales <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="section-hint__item col m-12 s-12 mm-12">
                        <div class="hint-img ">
                            <img src="./asset/images/home-page/banner/slider-2-banner-3-min.png" alt="" class="width-100" style="height:100%">
                        </div>
                        <div class="hint-content">
                            <h3 class="hint-content__item hint-header"><a href="#" class="no-deco hint-header__link">Rare Books</a></h3>
                            <p class="hint-content__item hint-description">Trusted independent sellers from around the world offer for sale curated rare books, first editions and collectible signed copies of your favorite book.</p>
                            <a onclick="loginClick()" class="hint-content__item go-to no-deco">
                                Search for rare interesting books<i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        let loginClick = () => {
            document.getElementById("login-register-container").style.display = "flex";
        }

        let outLogin = () => {
            if(event.target.id === "login-register-container") {
                document.getElementById("login-register-container").style.display = "none";
            }
        }

        function handleMode() {
            let loginMode = "mode-box chosen";
            let signupMode = "mode-box";
            
            if(event.target.id == "login-mode-box") {
                loginMode = "mode-box chosen";
                signupMode = "mode-box";
                document.getElementById("login-register-action").value = "login"
                document.getElementById("login-mode-box").classList = loginMode;
                document.getElementById("signup-mode-box").classList = signupMode;
                document.getElementById("confirm-password").type = "hidden";
                document.getElementById("submit").value = "Login";
                document.getElementById("forgot-password").style = "";
                document.getElementById("not-a-member").style = "";
                document.getElementById("username").value = "";
                document.getElementById("password").value = "";

            }
            if(event.target.id == "signup-mode-box" || event.target.id == "signup-now") {
                loginMode = "mode-box";
                signupMode = "mode-box chosen";
                document.getElementById("login-register-action").value = "signup"
                document.getElementById("login-mode-box").classList = loginMode;
                document.getElementById("signup-mode-box").classList = signupMode;
                document.getElementById("confirm-password").type = "password";
                document.getElementById("confirm-password").required = true;
                document.getElementById("submit").value = "SignUp";
                document.getElementById("forgot-password").style = "display: none";
                document.getElementById("not-a-member").style = "display: none";
                document.getElementById("username").value = "";
                document.getElementById("password").value = "";
                document.getElementById("confirm-password").value = "";
            }
        }
    </script>
</html>

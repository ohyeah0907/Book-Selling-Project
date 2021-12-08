<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./asset/css/logedIn-page/header.css">
        <link rel="stylesheet" href="./asset/css/logedIn-page/content.css">
        <link rel="stylesheet" href="./asset/css/general/base.css">
        <title>Homepage</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
    </head>
    <body>
        <div id="header">
            <div class="header__container__box">
                <div id="group-name" class="">Book Store</div>
            </div>
            <div class="header__container">
                <div class="header__container__box__item" >
                    <form id="category-view" action="category" method="post">
                        <input type="hidden" name="view-category" value="default">
                        <input type="hidden" name="username" value="${user.userName}">
                        <a class="header__container__box" href="javascript:document.getElementById('category-view').submit();">Category</a>
                    </form>
                </div>
                <div class="header__container__box__item" >
                    <div class="header__container__box">${user.userName}</div>
                </div>
                <div class="header__container__box__item" >
                    <form id="view-cart" action="cart" method="post">
                        <input type="hidden" name="username" value="${user.userName}">
                        <a href="javascript:document.getElementById('view-cart').submit();" class="header__container__box">Cart</a>
                    </form>
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
                    <a class="view-all font-white col l-12 m-12 s-12 mm-12">View all</a>
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
                                    <form id="book-view0" class='form-book-view' action="book-review" method="post">
                                        <input type="hidden" name="userName" value="${user.userName}">
                                        <input type="hidden" name="bookId" value="${allBook.get(0).getId()}">
                                        <button class="btn btn--slide-down"><a href="javascript:document.getElementById('book-view0').submit();" class="product-view no-deco">View Item</a></button>
                                        <button class="btn btn--slide-up"><a href="javascript:document.getElementById('book-view0').submit();" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                    </form>
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
                                    <form id="book-view1" class='form-book-view' action="book-review" method="post">
                                        <input type="hidden" name="userName" value="${user.userName}">
                                        <input type="hidden" name="bookId" value="${allBook.get(1).getId()}">
                                        <button class="btn btn--slide-down"><a href="javascript:document.getElementById('book-view1').submit();" class="product-view no-deco">View Item</a></button>
                                        <button class="btn btn--slide-up"><a href="javascript:document.getElementById('book-view1').submit();" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                    </form>
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
                                    <form id="book-view2" class='form-book-view' action="book-review" method="post">
                                        <input type="hidden" name="userName" value="${user.userName}">
                                        <input type="hidden" name="bookId" value="${allBook.get(2).getId()}">
                                        <button class="btn btn--slide-down"><a href="javascript:document.getElementById('book-view2').submit();" class="product-view no-deco">View Item</a></button>
                                        <button class="btn btn--slide-up"><a href="javascript:document.getElementById('book-view2').submit();" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                    </form>
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
                        <form id="book-view" action="book-review" method="post">
                            <input type="hidden" name="userName" value="${user.userName}">
                            <input type="hidden" name="bookId">
                            <li class="projects__item">
                                <a href="javascript:document.getElementsByName('bookId')[3].value='${book.getId()}';document.getElementById('book-view').submit();" class="projects__container__box ">
                                    <div class="book-img"><img src='${book.getLink()}'></div>
                                    <div class="book-title">${book.getTitle()}</div>
                                </a>
                            </li>
                        </form>
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
                    <div class="section-col-2 section-img">
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
                            <h3 class="hint-content__item hint-header"><a href="#" class="no-deco hint-header__link">Used Books</a></h3>
                            <p class="hint-content__item hint-description">Giving used books new life is what we do best. The choice of used books is massive - from classic novels to cookbooks, children's books, and so much more.</p>
                            <a class="hint-content__item go-to no-deco">
                                Search for used books<i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="section-hint__item col m-12 s-12 mm-12">
                        <div class="hint-img ">
                            <img src="./asset/images/home-page/banner/slider-2-banner-2-min.png" alt="" class="width-100" style="height:100%">
                        </div>
                        <div class="hint-content">
                            <h3 class="hint-content__item hint-header"><a href="#" class="no-deco hint-header__link">Seller Sales</a></h3>
                            <p class="hint-content__item hint-description">Each month, select sellers offer their items for sale on AbeBooks at huge discounts, making it easy to buy books, art and collectibles online.</p>
                            <a class="hint-content__item go-to no-deco">
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
                            <a class="hint-content__item go-to no-deco">
                                Search for rare interesting books<i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- <ul id="projects" class="content-container wrap">
            <li>
                <form id="slot0" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot0').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(0).getLink()}'></div>
                        <div class="book-title">${allBook.get(0).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(0).getId()}">
                </form>
            </li>
            <li>
                <form id="slot1" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot1').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(1).getLink()}'></div>
                        <div class="book-title">${allBook.get(1).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(1).getId()}">
                </form>
            </li>
            <li>
                <form id="slot2" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot2').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(2).getLink()}'></div>
                        <div class="book-title">${allBook.get(2).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(2).getId()}">
                </form>
            </li>
            <li>
                <form id="slot3" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot3').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(3).getLink()}'></div>
                        <div class="book-title">${allBook.get(3).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(3).getId()}">
                </form>
            </li>

            <li>
                <form id="slot4" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot4').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(4).getLink()}'></div>
                        <div class="book-title">${allBook.get(4).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(4).getId()}">
                </form>
            </li>
            <li>
                <form id="slot5" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot5').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(5).getLink()}'></div>
                        <div class="book-title">${allBook.get(5).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(5).getId()}">
                </form>
            </li>
            <li>
                <form id="slot6" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot6').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(6).getLink()}'></div>
                        <div class="book-title">${allBook.get(6).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(6).getId()}">
                </form>
            </li>
            <li>
                <form id="slot7" action="book-review" method="post">
                    <a href="javascript:document.getElementById('slot7').submit();" class="projects__container__box ">
                        <div class="book-img"><img src='${allBook.get(7).getLink()}'></div>
                        <div class="book-title">${allBook.get(7).getTitle()}</div>
                    </a>
                    <input type="hidden" name="userName" value="${user.userName}">
                    <input type="hidden" name="bookId" value="${allBook.get(7).getId()}">
                </form>
            </li>
        </ul> -->
    </body>
</html>

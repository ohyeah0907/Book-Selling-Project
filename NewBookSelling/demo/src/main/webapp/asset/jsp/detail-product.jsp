<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
        <link rel="stylesheet" href="./asset/css/detail-product-page/content.css">
        <link rel="stylesheet" href="./asset/css/general/header.css">
        <link rel="stylesheet" href="./asset/css/general/base.css">
        <title>Detail product</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
    </head>
    <body>
        <div id="header">
            <div class="header__container__box">
                <form id="back" method="post" action="main-page">
                    <a href="javascript:document.getElementById('back').submit();" id="group-name">Book Store</a>
                    <input type="hidden" name="username" value="${userName}">
                    <input type="hidden" name="login-register" value="back-to-main-page">
                </form>
            </div>
            <div class="header__container">
                <div class="header__container__box__item">
                    <div class="header__container__box header__container--hover">${userName}</div>
                </div>
            </div>
        </div>
        
        <div class="body-content grid">
            <div class="book-info-container">
                <div class="formal">
                    <div class="add-to-cart col l-12 m-12">
                        <!-- <img src="${book.getLink()}" class="book-img"> -->
                        <img src="${book.getLink()}" class="book-img">
                    </div>
                    <div class="book-info col l-12 m-12">
                        <div class="book-info__content">
                            <h2 class="book-info__title">${book.getTitle()}</h2>
                            <p class="book-info__price">Price: ${book.getPrice()} VND</p>
                        </div>
                        <div class="book-info__description">
                            <h2 class="book-info__description-header" style="margin-bottom: 20px; text-transform:uppercase">Book description</h2>
                            <p class="book-info__description-paragraph">${book.getDescription()}</p>
                        </div>
    
                        <form action="cart" method="post">
                            <input type="submit" value="Add to Cart" id="add-button">
                            <input type="hidden" name="book-id" value="${book.getId()}">
                            <input type="hidden" name="add-to-card" value="add">
                            <input type="hidden" name="username" value="${userName}">
                        </form>
                    </div>
                </div>
            </div>
            <!-- Fix cứng không cần thay đổi -->
            <!-- <div class="product-review row">
                <div class="product-review__header section-header col l-12">
                    <h1 class="header-item">Reviews and ratings</h1>
                </div>
                <div class="product-review__container col l-12">
                    <div class="product-review__overall">
                        <div class="overall__ratings-summary">4.8 out of 5</div>
                        <div class="overall__ratings-resutl">
                            <div class="overall-rating item-rating item-rating--large">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="product-ratings">
                        <div class="product-rating">
                            <div class="product-rating__avatar">
                                <img src="./images/detail-product-page/male.jpg" alt="" class="avatar__img width-100">
                            </div>
                            <div class="product-rating__main">
                                <h3 class="client__name">Nguyễn Văn A</h3>
                                <div class="item-rating item-rating--medium mt-10">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p class="client__comment mt-10">This product is very good!</p>
                            </div>
                        </div>
                        <div class="product-rating">
                            <div class="product-rating__avatar">
                                <img src="./images/detail-product-page/male.jpg" alt="" class="avatar__img width-100">
                            </div>
                            <div class="product-rating__main">
                                <h3 class="client__name mt-10">Nguyễn Văn B</h3>
                                <div class="item-rating item-rating--medium mt-10">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p class="client__comment mt-10">Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam sed pariatur aut soluta ut reiciendis tenetur voluptas molestias perspiciatis rem dolore voluptate odio aperiam adipisci, incidunt ea qui ratione nihil!</p>
                            </div>
                        </div>
                        <div class="product-rating">
                            <div class="product-rating__avatar">
                                <img src="./images/detail-product-page/male.jpg" alt="" class="avatar__img width-100">
                            </div>
                            <div class="product-rating__main">
                                <h3 class="client__name mt-10">Nguyễn Văn C</h3>
                                <div class="item-rating item-rating--medium mt-10">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p class="client__comment mt-10">This product is very good!</p>
                            </div>
                        </div>
                        <div class="product-rating">
                            <div class="product-rating__avatar">
                                <img src="./images/detail-product-page/male.jpg" alt="" class="avatar__img width-100">
                            </div>
                            <div class="product-rating__main">
                                <h3 class="client__name mt-10">Nguyễn Văn D</h3>
                                <div class="item-rating item-rating--medium mt-10">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p class="client__comment mt-10">This product is very good!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;600;700&family=Noto+Serif+Display:ital,wght@1,500;1,600&family=Zilla+Slab:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./asset/css/general/base.css">
    <link rel="stylesheet" href="./asset/css/general/header.css">
    <link rel="stylesheet" href="./asset/css/category/content.css">
    <title>Category</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
</head>
<body>
    <div class="main">
        <div class="wrapper">
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

            <div class="category grid">
                <h1 class="category__header section-header" style="text-align:center;">Collection</h1>
                <ul class="category__tag">
                    <form id="category-book" action="category" method="post">
                        <input type="hidden" name="userName" value="${userName}">
                        <input type="hidden" name="category">
                        <input type="hidden" name="view-category" value="view-category">
                        <li class="tag__item"><a href="javascript:document.getElementsByName('category')[0].value='Horror';document.getElementById('category-book').submit();" class="tag__item-link no-deco font-black">Horror</a></li>
                        <li class="tag__item"><a href="javascript:document.getElementsByName('category')[0].value='Science';document.getElementById('category-book').submit();" class="tag__item-link no-deco font-black">Science</a></li>
                        <li class="tag__item"><a href="javascript:document.getElementsByName('category')[0].value='Love';document.getElementById('category-book').submit();" class="tag__item-link no-deco font-black">Love</a></li>
                        <li class="tag__item"><a href="javascript:document.getElementsByName('category')[0].value='Educational';document.getElementById('category-book').submit();" class="tag__item-link no-deco font-black">Educational</a></li>
                    <form>
                </ul>
                <div class="category__item-wrapper item-wrapper row">
                        <c:forEach items="${allBook}" var="book">
                            <div class="category__item item col l-20-percent m-3 s-3 mm-4">
                                <div class="category__item-description item__description">
                                    <h2 class="item-name font-black">${book.getTitle()}</h2>
                                    <p class="item-author font-black">${book.getAuthor()}</p>
                                </div>
                                <div class="item__img">
                                    <img src="${book.getLink()}" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <form id="book-view" action="book-review" method="post">
                                        <input type="hidden" name="userName" value="${userName}">
                                        <input type="hidden" name="bookId">
                                        <button class="btn btn--slide-down"><a href="javascript:document.getElementsByName('bookId')[1].value='${book.getId()}';document.getElementById('book-view').submit();" class="product-view no-deco">View Item</a></button>
                                        <button class="btn btn--slide-up"><a href="javascript:document.getElementsByName('bookId')[1].value='${book.getId()}';document.getElementById('book-view').submit();" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                    </form>                   
                                </div>
                            </div>
                        </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
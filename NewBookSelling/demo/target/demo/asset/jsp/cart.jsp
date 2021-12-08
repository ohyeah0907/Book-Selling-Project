<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./asset/css/cart-page/content.css">
        <link rel="stylesheet" href="./asset/css/general/header.css">
        <link rel="stylesheet" href="./asset/css/general/base.css">
        <title>Cart</title>
        <script src="https://www.paypal.com/sdk/js?client-id=AbdW5bq7FYFXsz84xtrLK7Z9YFciIymF5pPncYXbj7n-dl4UWxZsuQ6NmpoLRTWjs9Khem0K5oTeif_q"></script>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
    </head>
    <body>
        <div id="header">
            <div class="header__container__box">
                <form id="back" method="post" action="main-page">
                    <a href="javascript:document.getElementById('back').submit();" id="group-name" class="">Book Store</a>
                    <input type="hidden" name="username" value="${userName}">
                    <input type="hidden" name="login-register" value="back-to-main-page">
                </form>
            </div>
            <div class="header__container">
                <div class="header__container__box__item" >
                    <div class="header__container__box header__container--hover">${userName}</div>
                </div>
            </div>
        </div>
        <div class="cart-container grid">
            <div class="container-wrap row">
                <h2 class="section-header col l-12 m-12 s-12 mm-12">Shopping Cart</h2>
                <div class="cart-wrapper col l-12 m-12 s-12 mm-12 row">
                    <div class="product-wrapper col l-8">
                        <div class="product-container">
                            <ul class="product product--title">
                                <li class="product__item product__detail">
                                    <div class="product-title--title">Product detail</div>
                                </li>
                                <li class="product__item product__price--title">Price</li>
                                <li class="product__item product__amount--title">
                                    Amount   
                                </li>
                                <li class="product__item product__operate--title">
                                    Operate
                                </li>
                            </ul>
                            <div class="product-container-scroll">
                                <c:if test="${allProduct.size() > 0}">
                                    <c:forEach items="${allProduct}" var="product">
                                        <ul class="product">
                                            <li class="product__item product__detail">
                                                <img src="${product[3]}" class="product-img">
                                                <div class="product-title">${product[1]}</div>
                                            </li>
                                            <li class="product__item product__price">${product[2]} VND</li>
                                            <li class="product__item product__amount">
                                                <div>${product[4]}</div>    
                                            </li>
                                            <li class="product__item product__operate">
                                            <form id="remove-item" method="post" action="cart">
                                                <input type="hidden" name="book-id">
                                                <input type="hidden" name="remove-book" value ="remove">
                                                <input type="hidden" name="username" value="${product[5]}">
                                                <a href="javascript:document.getElementsByName('book-id')[0].value='${product[0]}';document.getElementById('remove-item').submit();" class="operate__remove">Remove</a>
                                            </form>
                                            </li>
                                        </ul>
                                    </c:forEach>
                                </c:if>          
                            </div>
                        </div>
                    </div>
                    <div class="payment-box col l-4">
                        <div class="payment-box-header">
                            <p class="payment-box-header-title">
                                RECEIPT
                            </p>
                        </div>
                        <div class="total-items">
                            <div class="total-items__header">
                                Total items:
                            </div>
                            <!-- Lấy dữ liệu lưu tổng số sản phẩm -->
                            <div class="total-items__content">
                                <span class="total-items__quantity">${totalProduct}</span>
                            </div>
                        </div>
                        <div class="total-box">
                            <div class="total-box__header">Total price:</div>
                            <div class="total-box__content"><span class="total-box__total-price">${totalBill}</span> VND</div>
                        </div>
                        <div class="payment-methods">
                            <div class="payment-methods-container">
                                <form id="back" method="post" action="main-page">
                                    <a href="javascript:document.getElementById('back').submit();" class="payment-methods-resume-order" id="group-name">Resume Ordering</a>
                                    <input type="hidden" name="username" value="${userName}">
                                    <input type="hidden" name="login-register" value="back-to-main-page">
                                </form>
                            </div>
                            <div class="payment-methods-container" style="margin-top: 10px; margin-bottom: 10px; background-color:orange;">
                                <a href="javascript:document.getElementById('back').submit();" class="payment-methods-resume-order" id="group-name">Pay Your Cart</a>
                            </div>
                            <div id="paypal-payment-button">
                                <form id="payment-successful" method="post" action="cart">
                                    <input type="hidden" name="delete" value="delete">
                                    <input type="hidden" name="username" value="${userName}">
                                    <input type="hidden" id="totalMoney" value="${totalBill}">
                                <form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="invisible-box">
                </div>
            </div>
        </div>
    </body>
    <script>
        let totalMoney = Math.round(document.getElementById("totalMoney").value/24000*10)/10;

        paypal.Buttons({
            style: {
                color: 'blue',
                shape: 'rect'
            },
            createOrder: function(data, actions) {
                return actions.order.create(order)
            },
            onApprove: function(data, actions) {
                document.getElementById("payment-successful").submit();
            }

        }).render('#paypal-payment-button');

        let order = {purchase_units: [{
                amount: {
                    value: totalMoney
                }
            }]
        }
    </script>
</html>

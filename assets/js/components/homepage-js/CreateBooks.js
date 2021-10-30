// Create books
function CreateNewBook(books, feature) {
    const content = document.querySelector(`.content .${feature} .book-selling-container .book-selling-body`);
    for(let book of books) {
        const bookContainer = document.createElement("div");
        bookContainer.className = `item col l-20-percent m-4 s-6 mm-12 ${book.book_name}`;
        bookContainer.innerHTML=`
            <a href="/components/detail-product-page.html" class="book">
                <img src="${book.book_image}" alt="harry-potter-va-hoang-tu-lai" class="book__image">
                <div class="book__description">
                    <div class="book__title">${book.book_title}</div>
                </div>
                <div class="side-information"></div>
            </a>
            <div class="outer-star">
                <div class="inner-star"></div>
            </div>
            <div class="book__price">${book.book_price} <u>đ</u></div>`
        content.appendChild(bookContainer);
    }
}
export {CreateNewBook};
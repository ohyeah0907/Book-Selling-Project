// Rating star
function RatingStar(books) {
    for(let book of books) {
        const resultStar = (book.book_rating / 5) * 100;
        const books = document.querySelectorAll(`.${book.book_name} .outer-star .inner-star`);
        books.forEach(book => {
            book.style.width = `${Math.round(resultStar / 10) * 10}%`;
        });
    }
}
export {RatingStar};
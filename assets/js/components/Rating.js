// Rating star
function RatingStar(books) {
    for(let book of books) {
        const resultStar = (book.book_rating / 5) * 100;
        document.querySelector(`.${book.book_name} .outer-star .inner-star`).style.width = `${Math.round(resultStar / 10) * 10}%`;
    }
}
export {RatingStar};
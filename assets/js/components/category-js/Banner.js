function Banner() {
    const slide = document.querySelectorAll(".new-book-slider-wrapper__slider__slides__slide");
    const invisibleBlock = document.querySelector(".new-book-slider-wrapper__slider__slides");
    let count = 0;
    let length = 3;
    document.querySelector("#button-arrow-left").addEventListener("click", () => {
        if(length >= slide.length)
            return;
        count++;
        length++;
        invisibleBlock.style.marginLeft = `${-25 * count}%`;
    })
    document.querySelector("#button-arrow-right").addEventListener("click", () => {
        if(length <= 3)
            return;
        count--;
        length--;
        invisibleBlock.style.marginLeft = `${-25 * count}%`;
    })
}
export {Banner};
function Banner() {
    const slide = document.querySelectorAll(".new-book-slider-wrapper__slider__slides__slide");
    const slides = document.querySelector(".new-book-slider-wrapper__slider__slides");
    let count = 0;
    let length = 0;

    if(document.body.clientWidth >= 1024)
        length = 4;
    else if (document.body.clientWidth >= 840 && document.body.clientWidth <= 1023)
        length = 3;
    else if (document.body.clientWidth <= 839)
        length = 2;
    
    window.addEventListener("resize", () => {
        slides.style.marginLeft = "0px";
        count = 0;
        if(document.body.clientWidth >= 1024)
            length = 4;
        else if (document.body.clientWidth >= 840 && document.body.clientWidth <= 1023)
            length = 3;
        else if (document.body.clientWidth <= 839)
            length = 2;
    })

    document.querySelector("#button-arrow-left").addEventListener("click", () => {
        if(length >= slide.length + 1)
            return;
        count++;
        length++;
        slides.style.marginLeft = `${-(slide[0].clientWidth + 9 * 2) * count}px`;
    })
    document.querySelector("#button-arrow-right").addEventListener("click", () => {
        if(count <= 0)
            return;
        count--;
        length--;
        slides.style.marginLeft = `${-(slide[0].clientWidth + 9 * 2) * count}px`;
    })
}
export {Banner};
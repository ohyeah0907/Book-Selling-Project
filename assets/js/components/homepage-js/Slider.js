// Auto slider
function AutoSlider() {
    let count = 1;
    setInterval(function() {
        document.getElementById("radio" + count).checked = true;
        count++;
        if(count > 3)
            count = 1;
        document.querySelector("#radio1").addEventListener("click", function() {
            count = 1;
            document.getElementById("radio1").checked = true;
        })
        document.querySelector("#radio2").addEventListener("click", function() {
            count = 2;
            document.getElementById("radio2").checked = true;
        })
        document.querySelector("#radio3").addEventListener("click", function() {
            count = 3;
            document.getElementById("radio3").checked = true;
        })
    }, 4000)
}
// Advertise slider
function AdvertiseSlider() {
    let length = document.querySelector(".highest-rate-slides .slide").clientWidth;
    const slideContainer = document.querySelector(".highest-rate-slides")
    const slide = document.querySelectorAll(".highest-rate-slides .slide");
    const rightButton = document.querySelector("#button--arrow .right");
    const leftButton = document.querySelector("#button--arrow .left");


    slideContainer.style.transform = `translateX(${(-length) * 2}px)`;
    let count = 2;
    window.addEventListener("resize", () => {   
        length = document.querySelector(".highest-rate-slides .slide").clientWidth;
        slideContainer.style.transition = "none";
        slideContainer.style.transform = `translateX(${(-length) * count}px)`;
    })
    rightButton.addEventListener("click",()=> {
        if(count >= slide.length - 2)
            return;
        count++;
        slideContainer.style.transition = "transform 0.5s ease";
        slideContainer.style.transform = `translateX(${(-length) * count}px)`;
    });

    leftButton.addEventListener("click",()=> {
        if(count <= 0)
            return;
        count--;
        slideContainer.style.transition = "transform 0.5s ease";
        slideContainer.style.transform = `translateX(${(-length) * count}px)`;
    });

    slideContainer.addEventListener("transitionend", () => {
        if(slide[count].id === "first") {
            slideContainer.style.transition = "none";
            slideContainer.style.transform = `translateX(${(-length) * 2}px)`;
            count = 2;
        }
        if(slide[count].id === "last") {
            slideContainer.style.transition = "none";
            slideContainer.style.transform = `translateX(${(-length) * 4}px)`;
            count = 4;
        }
    });
}
export {AutoSlider, AdvertiseSlider};
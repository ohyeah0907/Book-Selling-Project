// Reveal when scroll
function RevealSection() {
    const revealUp = document.querySelectorAll(".reveal-up");
    const revealRight = document.querySelector(".reveal-right");

    document.addEventListener("scroll", () => {
        for (const item of revealUp) {
            if(item.getBoundingClientRect().top < document.body.clientHeight - 50) {
                item.style.transform = "translateY(0)";
                item.style.opacity = "1";
            }
        }
    })
}
export {RevealSection};
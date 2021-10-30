// Toggle menu
function ToggleMenu() {
    const toggle = document.querySelector(".toggle");
    const menuComponents = document.querySelector(".menu-components");
    const buttonRegister = document.querySelector(".menu-components-container .button--register");
    const buttonLogin = document.querySelector(".menu-components-container .button--login");
    const html = document.querySelector("html");
    let check = true;

    toggle.addEventListener("click", () => {
        toggle.classList.toggle("switch");
        menuComponents.classList.toggle("switch");
        if(check == true) 
        {
            html.style.overflow = "hidden"; 
            check = false;
        }
        else 
        {
            html.style.overflow = "auto";
            check = true;
        }
    });

    buttonRegister.addEventListener("click", () => {
        menuComponents.style.display = "none";
    })
    buttonLogin.addEventListener("click", () => {
        menuComponents.style.display = "none";
    })

    window.addEventListener("resize", () => {
        if(document.body.clientWidth >= 1230)
        {
            toggle.classList.contains("switch");
            toggle.classList.remove("switch");   
            menuComponents.classList.remove("switch");
            html.style.overflow = "auto";
            check = true;
        }
    })
}
export {ToggleMenu};
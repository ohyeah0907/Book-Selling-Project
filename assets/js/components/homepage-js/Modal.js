// // Transfer between login form and register form
// const loginForm = ".authen-form.-login-authen-form";
// const registerForm = ".authen-form.-register-authen-form";

// function IdentifyButton(button, activeForm, inactiveForm) {
//     for(let i = 0; i < button.length; i++) {
//         button[i].addEventListener("click", function() {
//                 Transfer(activeForm, inactiveForm)});
//     }
// }
// function Transfer(activeForm, inactiveForm) {
//     let modalForm = document.querySelector("#modal");
//     modalForm.setAttribute("style", "display: flex");
//     let ableForm = document.querySelector(activeForm);
//     ableForm.setAttribute("style", "display: block");
//     let unableForm = document.querySelector(inactiveForm);
//     unableForm.setAttribute("style", "display: none");
// } 

const outAction = document.querySelectorAll(".out-box-modal");
const modalForm = document.querySelector("#modal");
const loginForm = document.querySelector(".authen-form.-login-authen-form");
const registerForm = document.querySelector(".authen-form.-register-authen-form");
const userInterface = document.querySelector(".list__items #user-avatar");
const loginButton = document.querySelector("#nav-bar .list__items .button--login");
const registerButton = document.querySelector("#nav-bar .list__items .button--register");
/* Close modal box */
function OutModalBox() {
    outAction.forEach( (item)=> {
        item.addEventListener("click", () => {
            modalForm.setAttribute("style", "display: none");
        })
    })
}
/* Open modal box */ 
function OpenModalBox(event) {
    if(event.currentTarget.classList.contains("button--login")) {
        modalForm.style.display = "flex";
        loginForm.style.display ="block";
        registerForm.style.display = "none";
    }
    if(event.currentTarget.classList.contains("button--register")) {
        modalForm.style.display = "flex";
        registerForm.style.display ="block";
        loginForm.style.display = "none";
    }
}
/* Login successfully */
function LoginSuccessfully() {
    modalForm.style.display = "none";
    loginButton.style.display ="none";
    registerButton.style.display = "none";
    userInterface.style.display = "flex";
}
window.OpenModalBox = OpenModalBox;
window.OutModalBox = OutModalBox;
window.LoginSuccessfully = LoginSuccessfully;

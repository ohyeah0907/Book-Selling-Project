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
    if(event.target.classList.contains("button--login")) {
        modalForm.setAttribute("style", "display: flex");
        loginForm.setAttribute("style", "display: block");
        registerForm.setAttribute("style", "display: none");
    }
    if(event.target.classList.contains("button--register")) {
        modalForm.setAttribute("style", "display: flex");
        registerForm.setAttribute("style", "display: block");
        loginForm.setAttribute("style", "display: none");
    }
}
/* Login successfully */
function LoginSuccessfully() {
    modalForm.setAttribute("style", "display: none");
    loginButton.setAttribute("style", "display: none");
    registerButton.setAttribute("style", "display: none");
    userInterface.setAttribute("style", "display: flex");
}
window.OpenModalBox = OpenModalBox;
window.OutModalBox = OutModalBox;
window.LoginSuccessfully = LoginSuccessfully;

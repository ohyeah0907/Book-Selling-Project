// Transfer between login form and register form
// const loginForm = ".authen-form.-login-authen-form";
// const registerForm = ".authen-form.-register-authen-form";

// function IdentifyButton(button, activeForm, inactiveForm) {
//     for(let i = 0; i < button.length; i++) {
//         button[i].addEventListener("click", function() {
//                 Transfer(activeForm, inactiveForm)});
//     }
// }
// function Transfer(activeForm, inactiveForm) {
//         let modalForm = document.querySelector("#modal");
//         modalForm.setAttribute("style", "display: flex");
//         let ableForm = document.querySelector(activeForm);
//         ableForm.setAttribute("style", "display: block");
//         let unableForm = document.querySelector(inactiveForm);
//         unableForm.setAttribute("style", "display: none");
// } 
// export {loginForm, registerForm, IdentifyButton, Transfer};
function OpenModelBox(event) {
    if(event.target.classList.contains("button--login")) {
        let modalForm = document.querySelector("#modal");
        modalForm.setAttribute("style", "display: flex");
        let ableForm = document.querySelector(".authen-form.-login-authen-form");
        ableForm.setAttribute("style", "display: block");
        let unableForm = document.querySelector(".authen-form.-register-authen-form");
        unableForm.setAttribute("style", "display: none");
       
    }
    if(event.target.classList.contains("button--register")) {
        let modalForm = document.querySelector("#modal");
        modalForm.setAttribute("style", "display: flex");
        let ableForm = document.querySelector(".authen-form.-register-authen-form");
        ableForm.setAttribute("style", "display: block");
        let unableForm = document.querySelector(".authen-form.-login-authen-form");
        unableForm.setAttribute("style", "display: none");
       
    }
}
export {OpenModelBox};
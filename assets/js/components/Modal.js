// Transfer between login form and register form
const loginForm = ".authen-form.-login-authen-form";
const registerForm = ".authen-form.-register-authen-form";

function IdentifyButton(button, activeForm, inactiveForm) {
    for(let i = 0; i < button.length; i++) {
        button[i].addEventListener("click", function() {
                Transfer(activeForm, inactiveForm)});
    }
}
function Transfer(activeForm, inactiveForm) {
        let modalForm = document.querySelector("#modal");
        modalForm.setAttribute("style", "display: flex");
        let ableForm = document.querySelector(activeForm);
        ableForm.setAttribute("style", "display: block");
        let unableForm = document.querySelector(inactiveForm);
        unableForm.setAttribute("style", "display: none");
} 
export {loginForm, registerForm, IdentifyButton, Transfer};
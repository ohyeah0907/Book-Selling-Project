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
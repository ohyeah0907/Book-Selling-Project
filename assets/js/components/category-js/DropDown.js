function DropDown() {
    document.querySelector(".selected-box-container__header").addEventListener("click", () => {
        const dropDownBar = document.querySelector(".selected-box-container__body");
        const headerDropDownBar =   document.querySelector(".selected-box-container__header");
        const selectedDefault = document.querySelector(".selected-default");
        const lastField = document.querySelector(".sort-bar");
        const options = document.querySelectorAll(".options");
        headerDropDownBar.classList.toggle("active");
        dropDownBar.classList.toggle("active");
        lastField.classList.toggle("active");
        options.forEach(option => {
            option.addEventListener("click", () => {
                selectedDefault.textContent = option.querySelector("label").innerHTML;  
                headerDropDownBar.classList.remove("active");
                dropDownBar.classList.remove("active");
                lastField.classList.remove("active");
            })
        })
    });
}
export {DropDown};
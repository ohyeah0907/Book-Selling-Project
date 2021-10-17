// Display auto combo-box
const bookList = [
    "Akira",
    "Attack on Titan",
    "Berserk",
    "Detective Conan",
    "Death Note",
    "Demon Slayer: Kimetsu no Yaiba",
    "Dragon Ball",
    "Naruto",
];

function List(e, nthSearch) {
    const searchBar = document.querySelector(`#${nthSearch} .input-text`);
    const autoComboBox = document.querySelector(`#${nthSearch} .input-text__autocom-box`);
    const inputText = document.querySelector(`#${nthSearch} .input-text input`);
    let result = e.target.value;
    let array = [];
    if(result) {
            array = bookList.filter( (data) => {
                    return data.toLocaleLowerCase().includes(result.toLocaleLowerCase());
            });
            array = array.map( (data) => {
                    return "<li>" + data + "</li>";
            });
            searchBar.classList.add("active");
            AddToComboBox(array);
            const list = autoComboBox.querySelectorAll("li");
            for (let index = 0; index < list.length; index++) {
                    list[index].addEventListener("click", function() {
                        inputText.value = list[index].textContent;
                        searchBar.classList.remove("active");
                    });
            }
    }
    else {
            searchBar.classList.remove("active");
            autoComboBox.innerHTML="";
    }
    function AddToComboBox(list) {
        if(list.length) {
                autoComboBox.innerHTML = list.join("");
        }
        else {
                let invalidResult = inputText.value;
                autoComboBox.innerHTML = "<li>" + invalidResult + "</li>";
        }
    }
}
//Erase the input text
function Erase(element, nthSearch) {
    const searchBar = document.querySelector(`#${nthSearch} .input-text`);
    element.value = "";
    searchBar.classList.remove("active");
}

export {bookList, List, Erase};

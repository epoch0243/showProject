var checker = true;

var search = document.getElementById("search");



function changeShowHide() {

    if (checker) {
        search.style.display = "inline";
        checker = false;
    } else {
        search.style.display = "none";
        checker = true;
    }
    
}
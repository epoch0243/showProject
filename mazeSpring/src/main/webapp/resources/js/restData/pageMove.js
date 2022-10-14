var pageCenter = document.getElementById("pageCenter");
var ageCenter = pageCenter.getElementsByTagName("input");

function pageMove() {
    
    var pageNumber = parseInt(ageCenter[0].value);
    if(pageNumber > 47) {

        ageCenter[0].value = 47;

    } else if (pageNumber <= 0) {

        ageCenter[0].value = 1;
        
    }

    insertPage(ageCenter[0].value);
    ajaxHttp();    
}

function setPage() {
    
    ageCenter[0].value = getPageNumber(parameter);
}

function getPageNumber(page) {            
    let indexOfFirst = page.indexOf("&pageNo=");
    let toLast = page.indexOf('&', (indexOfFirst + 1));
    
    return page.slice((indexOfFirst + 8), toLast);
}

function insertPage(pageNumber) {
    parameter = "&pageNo=" + pageNumber + "&numOfRows=5";
}

function pagePrevious() {

    let previousPage = parseInt(ageCenter[0].value);

    if (previousPage > 1) {                
        previousPage--;
        insertPage(previousPage);
        ajaxHttp();
    } else {
        ajaxHttp();
    }

}


function pageNext() {

   let nextPage = parseInt(ageCenter[0].value);
   
   if (nextPage < 47) {
        nextPage++;
        insertPage(nextPage);
        ajaxHttp();
    } else {
        ajaxHttp();
    }
}
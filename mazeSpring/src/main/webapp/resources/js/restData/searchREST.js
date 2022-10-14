function searchREST() {
    let select = document.getElementById("countrySelect");            
    let searchText = document.getElementById("restSearch");
    searchText = searchText.getElementsByTagName("input");

    
    let selectValue = select.value;
    let searchValue = searchText[0].value;
    // console.log(searchValue);

    if (selectValue == "countryKR" && 
        !(searchValue.trim().length <= 0)) {
        
        removeTable();
        parameter = "&pageNo=1&numOfRows=5&cond[country_nm::EQ]=" + searchValue;

    } else if (selectValue == "countryISO" && 
        !(searchValue.trim().length <= 0)) {
        
        removeTable();
        parameter = "&pageNo=1&numOfRows=5&cond[country_iso_alp2::EQ]=" + searchValue;

    } else {

        parameter = "&pageNo=1&numOfRows=5";
    }
        
    xhr.open('GET', url + serviceKey + parameter);
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
            // plain = JSON.parse(this.responseText);
            removeTable();
            convertData(this.responseText);
            setTable();
            setPage();
        }
    };
    function convertData(data) {
        plain = JSON.parse(data);
        stringData = plain.data;
    }

    xhr.send();
}
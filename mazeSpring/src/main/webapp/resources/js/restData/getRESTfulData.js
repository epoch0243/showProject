var plain = "";
var stringData = "";
var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/1262000/CountryKorTradeService2/getCountryKorTradeList2';
var serviceKey = '?' + encodeURIComponent('serviceKey') + '='+'15vOK7wDB2htuOvRqOBcSMWPFm%2FhRfJ9e%2F8lJrZKH6LWIPZDLyIuE1pVBNG9h2LYPt50godUPyX9vhb7MMORrg%3D%3D'; /*Service Key*/
var parameter = "&pageNo=1&numOfRows=5";
var page = parameter.substring(1);

/*
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); 
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); 
queryParams += '&' + encodeURIComponent('cond[country_nm::EQ]') + '=' + encodeURIComponent('가나'); 
queryParams += '&' + encodeURIComponent('cond[country_iso_alp2::EQ]') + '=' + encodeURIComponent('GH'); 
queryParams += '&' + encodeURIComponent('returnType') + '=' + encodeURIComponent('JSON'); 
*/

function ajaxHttp() {
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

    xhr.send();
}

function convertData(data) {
    plain = JSON.parse(data);
    stringData = plain.data;
}


xhr.open('GET', url + serviceKey + parameter);
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
            // plain = JSON.parse(this.responseText);        
            convertData(this.responseText);
            setTable();
            setPage();
        }
    };

    xhr.send();
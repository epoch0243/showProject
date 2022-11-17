var table = document.getElementsByClassName("table");
// table[0].innerHTML = "";

var tr = document.createElement('div');
var th = document.createElement('div');
var td = document.createElement('div');

tr.setAttribute('class', 'tr');
th.setAttribute('class', 'th');
td.setAttribute('class', 'td');

for (let i = 0; i <= 5; i++) {
    table[0].appendChild(tr.cloneNode(true));
}

var trList = document.getElementsByClassName("tr");
        
for (let i = 0; i < 6; i++) {
    trList[0].appendChild(th.cloneNode(true));
}



for (let i = 1; i <= 5; i++) {
    for (j = 0; j < 6; j++) {
        trList[i].appendChild(td.cloneNode(true));
    }
}

let thList = document.getElementsByClassName('th');
thList[0].innerHTML += "<p>국가</p>";
thList[1].innerHTML += "<p>교환 연도</p>";
thList[2].innerHTML += "<p>수출 내용</p>";
thList[3].innerHTML += "<p>수출 금액</p>";
thList[4].innerHTML += "<p>수입 내용</p>";
thList[5].innerHTML += "<p>수입 금액</p>";
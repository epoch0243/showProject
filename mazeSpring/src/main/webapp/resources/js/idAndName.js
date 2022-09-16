let dragon = document.getElementById("dragon");
let passwordCheck = document.getElementById('passwordCheck');
let nameCheck = document.getElementById('nameCheck');


function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     // document.getElementById("loadForm").innerHTML = this.responseText;
     
     dragon.submit();
    }
  };
  xhttp.open("GET", "../member/idAndName", true);
  xhttp.send();
}


function textDoc() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
	    if (xhr.readyState === 4){
	        // submit.serialize();
	        dragon.serialize();
	        document.getElementById("loadForm").innerHTML = this.responseText
	    }
	};
	xhr.open('POST', 'idAndName');
	xhr.send();
	
}


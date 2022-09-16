window.onload = function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("loadBoard").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "../board/boardList", true);
  xhttp.send();
}

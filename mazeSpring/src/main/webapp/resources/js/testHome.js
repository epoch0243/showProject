setInterval(autoTime, 1000);

function autoTime() {
	var date = new Date();
	var hours = date.getHours();
	var minutes = date.getMinutes();
	var seconds = date.getSeconds();
	
	var meridiem = hours >= 12 ? 'pm' : 'am';
	hours = hours % 12;
	hours = hours ? hours : 12;
	
	minutes = minutes >= 10 ? minutes : '0' + minutes;
	seconds = seconds >= 10 ? seconds : "0" + seconds;
	
	var time = hours + ':' + minutes + ':' + seconds + ' ' + meridiem;
	
	document.getElementById("show").innerHTML = time;	
}


/*
function updateTime(){
    var currentTime = new Date()
    var hours = currentTime.getHours()
    var minutes = currentTime.getMinutes()
    if (minutes < 10){
        minutes = "0" + minutes
    }
    var t_str = hours + ":" + minutes + " ";
    if(hours > 11){
        t_str += "PM";
    } else {
        t_str += "AM";
    }
    document.getElementById('time_span').innerHTML = t_str;
}
setInterval(updateTime, 1000);
*/
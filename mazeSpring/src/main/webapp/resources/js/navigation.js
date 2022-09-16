var picIndex = 0;
var picSwitch = 1;
let pic = document.getElementsByClassName("imgWithBoard");
let picButton = document.getElementsByClassName("picButton");
let picPause = document.getElementById("picPause");
var autoRun = setInterval(changeDis, 10000);
window.onload = picPause;

function changePicSwitch() {
    picSwitch *= -1;
    
    if (picSwitch > 0) {
        picPause.src = "../resources/image/pause.png";
    } else {
        picPause.src ="../resources/image/play.png";
    }
}

// clearInterval(setInterval(changeDis, 1000));

function changeDis() {
    
    if(picSwitch > 0) {
        
        picIndex = checkIndex(picIndex);
        for(i = 0; i < pic.length; i++) {
            
            pic[i].style.display = "none";
            picButton[i].style.opacity = "0.3";
        };
        
        
        pic[picIndex].style.display = "block";
        picButton[picIndex].style.opacity = "0.7";

        
        
        picIndex++;
    }    
}

function checkIndex(picIndex) {
    // alert(picIndex + " " + pic.length + (picIndex >= pic.length));
    if(picIndex >= pic.length) {

        picIndex = 0;

    } else if (picIndex < 0) {

        picIndex = pic.length-1;
    }

    return picIndex;
}

function choicePic(index) {

    for(i =0; i< pic.length; i++ ) {
        pic[i].style.display = "none";
        picButton[i].style.opacity = "0.3";
    }

    pic[index].style.display = "block";
    picButton[index].style.opacity = "0.7";
}
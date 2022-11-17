var tdList = document.getElementsByClassName('td');

function setTable() {
    let tdIterator = 0;

    for (let i = 0; i < stringData.length; i++) {
        
        while (tdIterator < tdList.length && 
                !(stringData[i] == undefined || 
                stringData[i] == null)) {
            
            if (changeNull(stringData[i])) {
                continue;
            } else {
                tdList[tdIterator].append(stringData[i].country_nm + "(" 
                                    + stringData[i].country_eng_nm + ")"
                                    + " - " + stringData[i].country_iso_alp2);
                tdIterator++;

                tdList[tdIterator].append(stringData[i].yt_trade_year);
                tdIterator++;

                tdList[tdIterator].append(stringData[i].export_cn);
                tdIterator++;
                                
                tdList[tdIterator].append(addComma(stringData[i].yt_export_amount));
                tdIterator++;

                tdList[tdIterator].append(stringData[i].income_cn);
                tdIterator++;

                tdList[tdIterator].append(addComma(stringData[i].yt_income_amount));
                tdIterator++;
            }

            break;
        }
    }
}


function addComma(data) {
    let amountText = data + "";

    let range = amountText.length / 3 - 1;
    let point = amountText.length;

    for (let i = 0; i < range; i++) {
        
        amountText = amountText.slice(0, point - 3) + "," + amountText.slice(point -3, amountText.length);            
        point -= 3;
    }
    
    return amountText;
}

function removeTable() {
    
    for (i= 0; i < tdList.length; i++) {
        tdList[i].innerHTML = "";
    }
}

function changeNull(stringData) {
    if (stringData.yt_trade_year == null) {
        stringData.yt_trade_year = "";
        stringData.export_cn = "";
        stringData.yt_export_amount = "";
        stringData.income_cn = "";
        stringData.yt_income_amount = "";

        return true;
    } else {
        
        return false;
    }
    
}
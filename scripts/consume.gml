//Argument 0 is item to consume, numberical.
gotcha = false
counter = 63
do{
    if(global.item[counter] == argument0){
        gotcha = true
        global.item[counter] = 0
    }
    else{
        counter -= 1
    }
}until(gotcha == true || counter < 0)
if gotcha == false drawMenuMessage("Had none.")


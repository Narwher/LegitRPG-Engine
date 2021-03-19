// code for getting objects
// argument 0 is item to consume, numberical.

gotcha = false
counter = 0
do{
    if(global.item[counter] = 0){
        gotcha = true
        global.item[counter] = argument0
    }
    else{
        counter += 1
    }
}until(gotcha = true || counter > 63)
if gotcha = false drawMenuMessage("No place left for it.")
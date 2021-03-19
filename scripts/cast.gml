// code for using using magic. this goes for both players and enemies
// each skill's actions will go here.

// argument0 - skill number
// argument1 - skill casting player
// argument2 = target player


// 1 - Fire
if argument0 == 1{
    drawBattleMessage("Can't cast here!")   
}
// 2 - Soothe
else if argument0 == 2{
    if global.mp[argument1] > global.skill_mpCost[global.skill[argument1,argument0]]{
        global.mp[argument1] -= global.skill_mpCost[argument0];
        global.hp[argument2] += 12;
        drawBattleMessage(global.name[argument1] +" cast " + global.skill_name[argument0]
        + "! " + global.name[argument2] + " healed 12 Hp.");
    }else{
        drawBattleMessage("Not enough Mp!!")
    }
}
// 3 - Revive
else if argument0 == 3{
    drawBattleMessage(global.name[argument2] + " is alive and well!!!")
}
// 4 - poison
else if argument0 == 4{
    drawBattleMessage("Can't cast here!"); 
}
else{
    drawBattleMessage("Nothing happened.");   
}
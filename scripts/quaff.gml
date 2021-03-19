// code for using items
// each item's actions will go here.

// argument0 - item number
// argument1 - target player
// argument2 - used item slot (becomes empty)

// 1 - potion
if argument0 == 1{
    global.hp[argument1] += 25;
    drawBattleMessage(global.name[argument1]+ " rejuvenated.");
    if global.item_consumable[argument0]{
        global.item[argument2] = 0;
    }
} 

// 2 - potion
else if argument0 == 2{
    if global.status[argument1] == "Poison"{
        drawBattleMessage("The poison was vanquished from " +global.name[argument1]+ "'s body.");
        if global.item_consumable[argument0]{
            global.item[argument2] = 0; 
        }
    }else{
        drawBattleMessage(global.name[argument1] + " is not poisoned.");
    }
} 

// 3 - ball of returning
else if argument0 == 3{
    if global.hp[argument1] > 0{
        drawBattleMessage(global.name[argument1] + " is alive and well!!!");
    }else{
        drawBattleMessage(global.name[argument1]+ " revived");
        if global.item_consumable[argument0]{
            global.item[argument2] = 0; 
        }
    }
}

// 4 - bomb
else if argument0 == 4{
    if !instance_exists(obj_battlecontroller){
        drawBattleMessage("Can't use here.");
    }else{
        drawBattleMessage("Used the bomb!!")
        if global.item_consumable[argument0]{
            global.item[argument2] = 0; 
        }
    }
}

// 5 - Wood Spear
else if argument0 == 5{
    if instance_exists(obj_battlecontroller){
        drawBattleMessage("Can't equip now!");
    }else{
        drawBattleMessage("Can be equipped. Use the 'Equip' menu.")
    }
}

// 6 - Iron Sabre
else if argument0 == 6{
    if instance_exists(obj_battlecontroller){
        drawBattleMessage("Can't equip now!");
    }else{
        drawBattleMessage("Can be equipped. Use the 'Equip' menu.")
    }
}

// 7 - elixir
else if argument0 == 7{
    global.mp[argument1] += 10;
    drawBattleMessage(global.name[argument1]+ " gained 10 Mp.");
    if global.item_consumable[argument0]{
        global.item[argument2] = 0;
    }
} 

// 8 - Cloth Hat
else if argument0 == 8{
    if instance_exists(obj_battlecontroller){
        drawBattleMessage("Can't equip now!");
    }else{
        drawBattleMessage("Can be equipped. Use the 'Equip' menu.")
    }
}

else{
    drawBattleMessage("Nothing happened.");   
}

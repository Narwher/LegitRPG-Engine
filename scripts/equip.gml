// code for equipping

// argument0 - equipment number
// argument1 - target player
// argument2 - weapon type (int - head=1, armor=2, weapon=3, acc=4)
// argument3 - used item slot (becomes empty)

var oldHead;
var oldArmor;
var oldWeapon;
var oldAccs;
   
if global.item_canEquip[argument0]{    
    
    // 5 - Wood Spear
    if argument0 == 5{
        if global.class[argument1] = "Fighter"{ // must be correct player class
            if argument2 == 3{ // must be matching type #
                //checks done, good to equip now..almost
                if global.weapon[argument1] == 0 {
                    global.weapon[argument1] = argument0;
                    drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; // temporarily consume while equipped
                }else{ // remove previously equipped item if something's there
                    oldWeapon = global.weapon[argument1]
                    global.weapon[argument1] = argument0; 
                    drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldWeapon] 
                    + " and equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; // temporarily consume while equipped
                    obtain(oldWeapon) // get prev equipped item back
                }
            }else{
                drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
            } 
        }else{
            drawBattleMessage(global.class[argument1] + "s cannot equip that!");
        }
    }
    
    // 6 - Iron Sword
    if argument0 == 6{
        if global.class[argument1] = "Fighter"{ // must be correct player class
            if argument2 == 3{ // must be matching type #
                //checks done, good to equip now..almost
                if global.weapon[argument1] == 0 {
                    global.weapon[argument1] = argument0;
                    drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; // temporarily consume while equipped
                }else{ // remove previously equipped item if something's there
                    oldWeapon = global.weapon[argument1]
                    global.weapon[argument1] = argument0; 
                    drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldWeapon] 
                    + " and equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; // temporarily consume while equipped
                    obtain(oldWeapon) // get prev equipped item back
                }
            }else{
                drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
            } 
        }else{
            drawBattleMessage(global.class[argument1] + "s cannot equip that!");
        }
    } 
    
    // 8 - Cloth Hat
    if argument0 == 8{
        // any class can equip this
        if argument2 == 1{ 
            if global.head[argument1] == 0 {
                global.head[argument1] = argument0;
                drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                global.item[argument3] = 0; 
            }else{ 
                oldHead = global.head[argument1]
                global.head[argument1] = argument0; 
                drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldHead] 
                + " and equipped the " + global.item_name[argument0] + ".");
                global.item[argument3] = 0; 
                obtain(oldHead) 
            }
        }else{
            drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
        } 
    } 
    
    // 9 - Wood Cane
    if argument0 == 9{
        if global.class[argument1] = "White Mage" || global.class[argument1] = "Black Mage"{ 
            if argument2 == 3{ 
                if global.weapon[argument1] == 0 {
                    global.weapon[argument1] = argument0;
                    drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                }else{ 
                    oldWeapon = global.weapon[argument1]
                    global.weapon[argument1] = argument0; 
                    drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldWeapon] 
                    + " and equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                    obtain(oldWeapon) 
                }
            }else{
                drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
            } 
        }else{
            drawBattleMessage(global.class[argument1] + "s cannot equip that!");
        }
    } 
    
    // 10 - Chain Mail
    if argument0 == 10{
        if global.class[argument1] = "Fighter" { 
            if argument2 == 2{ 
                if global.armor[argument1] == 0 {
                    global.armor[argument1] = argument0;
                    drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                }else{ 
                    oldArmor = global.armor[argument1]
                    global.armor[argument1] = argument0; 
                    drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldArmor] 
                    + " and equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                    obtain(oldArmor) 
                }
            }else{
                drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
            } 
        }else{
            drawBattleMessage(global.class[argument1] + "s cannot equip that!");
        }
    } 
    
    // 11 - Mage's Robe
    if argument0 == 11{
        if global.class[argument1] == "Black Mage" || global.class[argument1] == "White Mage" { 
            if argument2 == 2{ 
                if global.armor[argument1] == 0 {
                    global.armor[argument1] = argument0;
                    drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                }else{ 
                    oldArmor = global.armor[argument1]
                    global.armor[argument1] = argument0; 
                    drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldArmor] 
                    + " and equipped the " + global.item_name[argument0] + ".");
                    global.item[argument3] = 0; 
                    obtain(oldArmor) 
                }
            }else{
                drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
            } 
        }else{
            drawBattleMessage(global.class[argument1] + "s cannot equip that!");
        }
    } 
    
    // 12 - Defense Ring
    if argument0 == 12{
        // any class can equip this
        if argument2 == 4{ 
            if global.accs[argument1] == 0 {
                global.accs[argument1] = argument0;
                drawBattleMessage(global.name[argument1]+ " equipped the " + global.item_name[argument0] + ".");
                global.item[argument3] = 0; 
            }else{ 
                oldAccs = global.accs[argument1]
                global.accs[argument1] = argument0; 
                drawBattleMessage(global.name[argument1]+ " removed the " + global.item_name[oldAccs] 
                + " and equipped the " + global.item_name[argument0] + ".");
                global.item[argument3] = 0; 
                obtain(oldAccs) 
            }
        }else{
            drawBattleMessage(global.item_name[argument0] + " cannot be equipped there!!");
        } 
    } 
     
}else{
    // 0 - DeQuip
    if argument0 = 0{
        if argument2 = 1{
            if global.head[argument1] = 0{
                drawBattleMessage("Nothing was equipped.")
            }else{
                oldHead = global.head[argument1]; 
                drawBattleMessage("Removed the " + global.item_name[global.head[argument1]] + ".")
                global.head[argument1] = 0;
                obtain(oldHead);
            }
        }else if argument2 = 2{
            if global.armor[argument1] = 0{
                drawBattleMessage("Nothing was equipped.")
            }else{
                oldArmor = global.armor[argument1]; 
                drawBattleMessage("Removed the " + global.item_name[global.armor[argument1]] + ".")
                global.armor[argument1] = 0;
                obtain(oldArmor);
            }
        }else if argument2 = 3{
            if global.weapon[argument1] = 0{
                drawBattleMessage("Nothing was equipped.")
            }else{
                oldWeapon = global.weapon[argument1]; 
                drawBattleMessage("Removed the " + global.item_name[global.weapon[argument1]] + ".")
                global.weapon[argument1] = 0;
                obtain(oldWeapon);
            }
        }else if argument2 = 4{
            if global.accs[argument1] = 0{
                drawBattleMessage("Nothing was equipped.")
            }else{
                oldAccs = global.accs[argument1]; 
                drawBattleMessage("Removed the " + global.item_name[global.accs[argument1]] + ".")
                global.accs[argument1] = 0;
                obtain(oldAccs);
            }
        }
    }else{
        drawBattleMessage("Can't equip that!");
    }
}
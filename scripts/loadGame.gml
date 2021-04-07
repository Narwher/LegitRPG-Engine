// load game code
// save file is stored locally. only 1 for now.

if(file_exists(working_directory + "rpgsave.ini")){
    ini_open(working_directory + "rpgsave.ini")
    
    //PLayer 1 stats
    global.name[1] = ini_read_string("Player1","name","")
    global.class[1] = ini_read_string("Player1","class","")
    global.status[1] = ini_read_string("Player1","status","")
    global.hp[1] = ini_read_real("Player1","hp",5)
    global.mp[1] = ini_read_real("Player1","mp",5)
    global.xp[1] = ini_read_real("Player1","xp",5)
    global.xp_up[1] = ini_read_real("Player1","xp_up",5)
    global.level[1] = ini_read_real("Player1","level",5)
    global.maxhp[1] = ini_read_real("Player1","maxhp",5)
    global.maxmp[1] = ini_read_real("Player1","maxmp",5)
    global.atk[1] = ini_read_real("Player1","atk",5)
    global.def[1] = ini_read_real("Player1","def",5)
    global.pow[1] = ini_read_real("Player1","pow",5)
    global.res[1] = ini_read_real("Player1","res",5)
    global.spd[1] = ini_read_real("Player1","spd",5)
    global.attack[1,0] = ini_read_real("Player1","attack1",0) 
    global.attack[1,1] = ini_read_real("Player1","attack2",0) 
    global.attack[1,2] = ini_read_real("Player1","attack3",0) 
    global.attack[1,3] = ini_read_real("Player1","attack4",0) 
    global.weapon[1] = ini_read_real("Player1","weapon",0)
    global.armor[1] = ini_read_real("Player1","armor",0)
    global.head[1] = ini_read_real("Player1","head",0)
    global.accs[1] = ini_read_real("Player1","accs",0)
    global.skill[1,0] = ini_read_real("Player1","skill1",0) 
    global.skill[1,1] = ini_read_real("Player1","skill2",0) 
    global.skill[1,2] = ini_read_real("Player1","skill3",0) 
    global.skill[1,3] = ini_read_real("Player1","skill4",0) 
    global.skill[1,4] = ini_read_real("Player1","skill5",0) 
    global.skill[1,5] = ini_read_real("Player1","skill6",0) 
    global.skill[1,6] = ini_read_real("Player1","skill7",0) 
    global.skill[1,7] = ini_read_real("Player1","skill8",0) 
    global.skill[1,8] = ini_read_real("Player1","skill9",0) 
    
    //PLayer 2 stats
    global.name[2] = ini_read_string("Player2","name","")
    global.class[2] = ini_read_string("Player2","class","")
    global.status[2] = ini_read_string("Player2","status","")
    global.hp[2] = ini_read_real("Player2","hp",5)
    global.mp[2] = ini_read_real("Player2","mp",5)
    global.xp[2] = ini_read_real("Player2","xp",5)
    global.xp_up[2] = ini_read_real("Player2","xp_up",5)
    global.level[2] = ini_read_real("Player2","level",5)
    global.maxhp[2] = ini_read_real("Player2","maxhp",5)
    global.maxmp[2] = ini_read_real("Player2","maxmp",5)
    global.atk[2] = ini_read_real("Player2","atk",5)
    global.def[2] = ini_read_real("Player2","def",5)
    global.pow[2] = ini_read_real("Player2","pow",5)
    global.res[2] = ini_read_real("Player2","res",5)
    global.spd[2] = ini_read_real("Player2","spd",5)
    global.attack[2,0] = ini_read_real("Player2","attack1",0) 
    global.attack[2,1] = ini_read_real("Player2","attack2",0) 
    global.attack[2,2] = ini_read_real("Player2","attack3",0) 
    global.attack[2,3] = ini_read_real("Player2","attack4",0) 
    global.weapon[2] = ini_read_real("Player2","weapon",0)
    global.armor[2] = ini_read_real("Player2","armor",0)
    global.head[2] = ini_read_real("Player2","head",0)
    global.accs[2] = ini_read_real("Player2","accs",0)
    global.skill[2,0] = ini_read_real("Player2","skill1",0) 
    global.skill[2,1] = ini_read_real("Player2","skill2",0) 
    global.skill[2,2] = ini_read_real("Player2","skill3",0) 
    global.skill[2,3] = ini_read_real("Player2","skill4",0) 
    global.skill[2,4] = ini_read_real("Player2","skill5",0) 
    global.skill[2,5] = ini_read_real("Player2","skill6",0) 
    global.skill[2,6] = ini_read_real("Player2","skill7",0) 
    global.skill[2,7] = ini_read_real("Player2","skill8",0) 
    global.skill[2,8] = ini_read_real("Player2","skill9",0) 
    
    //PLayer 3 stats
    global.name[3] = ini_read_string("Player3","name","")
    global.class[3] = ini_read_string("Player3","class","")
    global.status[3] = ini_read_string("Player3","status","")
    global.hp[3] = ini_read_real("Player3","hp",5)
    global.mp[3] = ini_read_real("Player3","mp",5)
    global.xp[3] = ini_read_real("Player3","xp",5)
    global.xp_up[3] = ini_read_real("Player3","xp_up",5)
    global.level[3] = ini_read_real("Player3","level",5)
    global.maxhp[3] = ini_read_real("Player3","maxhp",5)
    global.maxmp[3] = ini_read_real("Player3","maxmp",5)
    global.atk[3] = ini_read_real("Player3","atk",5)
    global.def[3] = ini_read_real("Player3","def",5)
    global.pow[3] = ini_read_real("Player3","pow",5)
    global.res[3] = ini_read_real("Player3","res",5)
    global.spd[3] = ini_read_real("Player3","spd",5)
    global.attack[3,0] = ini_read_real("Player3","attack1",0) 
    global.attack[3,1] = ini_read_real("Player3","attack2",0) 
    global.attack[3,2] = ini_read_real("Player3","attack3",0) 
    global.attack[3,3] = ini_read_real("Player3","attack4",0) 
    global.weapon[3] = ini_read_real("Player3","weapon",0)
    global.armor[3] = ini_read_real("Player3","armor",0)
    global.head[3] = ini_read_real("Player3","head",0)
    global.accs[3] = ini_read_real("Player3","accs",0)
    global.skill[3,0] = ini_read_real("Player3","skill1",0) 
    global.skill[3,1] = ini_read_real("Player3","skill2",0) 
    global.skill[3,2] = ini_read_real("Player3","skill3",0) 
    global.skill[3,3] = ini_read_real("Player3","skill4",0) 
    global.skill[3,4] = ini_read_real("Player3","skill5",0) 
    global.skill[3,5] = ini_read_real("Player3","skill6",0) 
    global.skill[3,6] = ini_read_real("Player3","skill7",0) 
    global.skill[3,7] = ini_read_real("Player3","skill8",0) 
    global.skill[3,8] = ini_read_real("Player3","skill9",0) 
    
    //item data
    for(c = 0; c < 75; c += 1){
        global.item[c] = ini_read_real("Items","item " + string(c),0)
    }
       
    // get opened chests data
    ds_list_read(global.openChests, ini_read_string("Misc", "openedChests", ""));
    
    global.player_x = ini_read_real("Misc","player_x",0)
    global.player_y = ini_read_real("Misc","player_y",0)
    global.field_room = ini_read_string("Misc","room","")
    global.money = ini_read_real("Misc","gil",0)
    global.dir = ini_read_real("Misc","direction",1) 
    
    // delet persistent instances
    for (var i = 0; i < instance_count; i++;){
        with (instance_id[i]) {
            if persistent instance_destroy();
        }
    }
    
    drawBattleMessage("Loaded file successfully!")

}else drawBattleMessage("Save file not found.")




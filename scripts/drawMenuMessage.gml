// slow scroll message, shown in readably-small font in bottom menu window

if !instance_exists(obj_message){
    writer = instance_create(0,0,obj_message);
    writer.text = argument0;
}


// draws quickly written, readable-font messages in a window up top for battles and more

if !instance_exists(obj_battlemessage){
    writer = instance_create(0,0,obj_battlemessage);
    writer.text = argument0;
}


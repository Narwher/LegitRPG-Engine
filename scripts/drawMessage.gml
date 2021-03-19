// draws message in big font/medium speed, used mainly for field.
// takes up like the whole bottom half of the screen lol

if !instance_exists(obj_message){
    writer = instance_create(0,0,obj_message);
    writer.text = argument0;
    msgCount += 1;
}


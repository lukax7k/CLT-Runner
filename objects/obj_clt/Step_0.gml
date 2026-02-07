if (y > room_height + 32)
{
    instance_destroy();
    
}

if (!global.pause && !global.morreu)
{
    vspeed = 1.5 + (global.dificuldade * 0.5);
    image_speed = 1;
}
else if (global.morreu)
{
    image_speed = 1;
    vspeed = 0;	
}
else 
{
    image_speed = 0;
    vspeed = 0;	
}
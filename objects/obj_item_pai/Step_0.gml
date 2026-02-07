if (y > room_height + 32)
{
    instance_destroy();
}

if (!global.pause && !global.morreu)
{
    vspeed =  1.2 + (global.dificuldade * 0.4);
    image_speed = 1;
}
else if (global.morreu)
{
    image_speed = 1;
    vspeed = 0;	
}
else
{
    vspeed = 0;
    image_speed = 0;
}

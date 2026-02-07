vspeed = 1;

aumentando_vel = function()
{
    vspeed = 1 + global.dificuldade * .3
}

voltando = function()
{
    if (y >= room_height) 
    {
        y -= sprite_height * 2;
    }   
}
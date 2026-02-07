if (!global.pause)
{
    if (!global.morreu)
    {
        pega_input();
        muda_calcada();
    }
    
    muda_sprite();
}
else 
{
    image_speed = 0;
}



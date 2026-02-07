initial_timer = 60;

audio_play_sound(snd_intro, 0, 1);

estado = "inicio"

passa_quadro = false;

anim_inicial = function()
{
    if (estado == "inicio")
    {
        if(initial_timer > 0)
        {
            initial_timer --;
        }
        else 
        {
            if (image_alpha > 0)
            {
                image_alpha -= .03;
            }
            else 
            {
                estado = "pages"
            }
            
        }
    }
}

pega_input = function()
{
    if (keyboard_check_pressed(vk_space) && global.quadro <= 3 && estado = "pages")
    {
        passa_quadro = true;
    }
}

passando_quadro = function()
{
    if (passa_quadro)
    {
        if(global.quadro < 3)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.03;
            }
            else
            {
                global.quadro ++;
                passa_quadro = false;
            }
            
        }
        else 
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.03;
                audio_sound_gain(snd_intro, .2, 60)
            }
            else 
            {
                audio_stop_sound(snd_intro);
                room_goto(rm_game);
            }
            
        }
        
    }
    else 
    {
        if (image_alpha > 0)
        {
            image_alpha -= .03;
        }
    }
}
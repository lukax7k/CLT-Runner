anim_inicial();
pega_input();
passando_quadro();  

if (!audio_is_playing(snd_intro))
{
    if(keyboard_check(vk_space))
    {
        audio_play_sound(snd_intro, 0, 1);
    }
}








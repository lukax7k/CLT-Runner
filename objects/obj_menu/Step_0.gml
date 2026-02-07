menu_ativo = global.pause;
fim_de_jogo = global.morreu;


if (menu_ativo)
{
    image_alpha = .8;
    
    pega_input();
    controla_menu_paused();
}
else if (fim_de_jogo)
{
    image_alpha = .8;
    
    pega_input();
    controla_menu_morto();
}
else 
{
    image_alpha = 0;
}
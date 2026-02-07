if (menu_ativo)
{
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(fnt_menu);
    
    if (option == 1)
    {
        draw_text_scribble(216, 218, "[c_aqua]Continuar");
    }
    else 
    {
    	draw_text_scribble(216, 218, "[c_white]Continuar");
    }
    
    if (option == 2)
    {
        draw_text_scribble(216, 308, "[c_aqua]Reiniciar");
    }
    else 
    {
    	draw_text_scribble(216, 308, "[c_white]Reiniciar");
    }
    
    if (option == 3)
    {
        draw_text_scribble(216, 398, "[c_aqua]Sair");
    }
    else 
    {
    	draw_text_scribble(216, 398, "[c_white]Sair");
    }
    
    
    draw_set_font(-1);
    draw_set_halign(-1);
}

if (fim_de_jogo)
{
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(fnt_menu);
    
    
    draw_text_scribble(216, 188, "Boa Tentativa");
    draw_text_scribble(216, 235, "Voce fez:");
    draw_text_scribble(216, 278, "[rainbow]" + string(global.pontos) + " [/rainbow]Pontos!")
    
    
    if (option == 1)
    {
        draw_text_scribble(216, 358, "[c_aqua]Reiniciar");
    }
    else 
    {
    	draw_text_scribble(216, 358, "[c_white]Reiniciar");
    }
    
    if (option == 2)
    {
        draw_text_scribble(216, 408, "[c_aqua]Sair");
    }
    else 
    {
    	draw_text_scribble(216, 408, "[c_white]Sair");
    }
    
    
    draw_set_font(-1);
    draw_set_halign(-1);
}
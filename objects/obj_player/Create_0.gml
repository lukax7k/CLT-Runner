
right = 0;
left = 0;

ganhei_pontos = false;

pontos_ganhos = 10;

text_alfa = 1;

pega_input = function()
{
    right = keyboard_check_pressed(vk_right);
    left = keyboard_check_pressed(vk_left);
}

muda_sprite = function()
{
    if(global.dificuldade > 6 && !global.morreu)
    {
        sprite_index = spr_player_onfire;
    }
    else if(global.morreu)
    {
        sprite_index = spr_player_morte;
    }
}

muda_calcada = function()
{
    image_speed = 1 + global.dificuldade/10
    
    if(right)
    {
        x = room_width -16;
        image_xscale = -1;
    }
    if(left)
    {
        x = 16;
        image_xscale = 1;
    }
}

desenha_pontos = function(_pontos = 10)
{
    if (ganhei_pontos)
    {
        if (text_alfa > 0.1)
        {
            draw_set_halign(fa_center);
            draw_set_font(fnt_points);
            
            draw_text_colour(212, 70, "+" + string(_pontos), c_white, c_white, c_white, c_white, text_alfa);
        
            draw_set_halign(-1);
            draw_set_font(-1);
            
            text_alfa -= .03;
        }
        
        else 
        {
            ganhei_pontos = false;
            text_alfa = 1;	
        }
        
        
       
    }
        
}
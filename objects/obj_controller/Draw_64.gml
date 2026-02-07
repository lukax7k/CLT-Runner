draw_self();

draw_set_font(fnt_points);

draw_set_halign(fa_center);

scribble_anim_wave(1, 1, .1)

if (global.pontos < 300)
{
    draw_text_scribble(212, 30, "[wave]" + string(global.pontos));
}
else if (global.pontos > 300 && global.pontos < 999) 
{
    draw_text_scribble(212, 30, "[wave][rainbow]" + string(global.pontos));
}
else 
{
    draw_text_scribble(212, 30, "[pulse][rainbow]" + string(global.pontos));
}



draw_set_halign(-1);

draw_set_font(-1);


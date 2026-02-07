draw_self();

draw_set_font(fnt_points);

draw_set_halign(fa_center);

if (global.pontos < 300)
{
    draw_text(212, 30, string(global.pontos));
}
else if (global.pontos > 300 && global.pontos < 999) 
{
    draw_text(212, 30, string(global.pontos));
}
else 
{
    draw_text(212, 30, string(global.pontos));
}



draw_set_halign(-1);

draw_set_font(-1);


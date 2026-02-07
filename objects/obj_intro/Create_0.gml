image_xscale = .5;
image_yscale = image_xscale;

pages = [spr_page_1, spr_page_2, spr_page_3, spr_page_4];

global.quadro = 0;

passa_sprite = function()
{
    sprite_index = pages[global.quadro];
}


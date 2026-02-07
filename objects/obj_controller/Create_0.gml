//  Objeto que controla a fase

randomise();

if (!audio_is_playing(snd_bg))
{
    audio_play_sound(snd_bg, 0, 1);
}


calcada_esq = 16;
calcada_dir = room_width - 16;

global.dificuldade = 0;
global.pontos = 0;
global.pause = false;
global.morreu = false;

timer = 60;
timer_pontos = 60;
timer_dificuldade = 300;
timer_item = 90;

pausando = function()
{
    if(keyboard_check_pressed(vk_escape) xor keyboard_check_pressed(ord("M")))
    {
        global.pause = !global.pause;
    }
}


cria_clt = function()
{
    
    var _calcada = choose(calcada_esq, calcada_dir);
    
    if (timer <= 0)
    {
        var _roll = irandom_range(1, 100)
        var _clt = noone;
        
        if (_roll > 95)
        {
            _clt = obj_clt_2
        }
        else 
        {
            _clt = obj_clt	
        }
        
       instance_create_layer(_calcada, -16, "Inimigos", _clt); 
        
        timer = irandom_range(180, 240) - (global.dificuldade * 15);
    }
}

cltimer = function()
{
    if (timer > 0)
    {
        timer --;
    }
}

cria_item = function()
{
    var _calcada = choose(calcada_esq, calcada_dir);
    
    
    if (timer_item <= 0)
    {
        var _roll = irandom_range(1, 100);
        var _item = noone;
        
        if (_roll > 90)
        {
            _item = obj_burguer;
        }
        else if (_roll <= 90 && _roll > 70)
        {
            _item = obj_coxinha;
        }
        else if (_roll <= 70 && _roll > 40)
        {
            _item = obj_chocolate;
        }
        else 
        {
            _item = obj_batata;
        }
        
        
        instance_create_layer(_calcada, -16, "Itens", _item); 
        
        timer_item = irandom_range(210, 270) - (global.dificuldade * 10);
    }
}

timer_i = function()
{
    if (timer_item > 0)
    {
        timer_item --;
    }
}

soma_pontos = function()
{
    if(timer_pontos > 0)
    {
        timer_pontos --;
    }
    else
    {
        global.pontos ++;
        timer_pontos = 60 - global.dificuldade * 5;
    }
    
}

aumenta_dificuldade = function()
{
    if(global.dificuldade >= 10) return;
    
    if (timer_dificuldade > 0)
    {
        timer_dificuldade --;
    }
    else 
    {
        global.dificuldade ++;
        timer_dificuldade = 300 + global.dificuldade * 60;
    }
    
}
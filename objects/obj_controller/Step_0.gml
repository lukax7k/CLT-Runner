if (!global.morreu)
{
    pausando();
}


if (!global.pause && !global.morreu)
{
    cria_clt();
    cltimer();
    soma_pontos();
    aumenta_dificuldade();
    cria_item();
    timer_i();
}




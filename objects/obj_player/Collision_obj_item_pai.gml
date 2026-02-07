global.pontos += other.pontos;

audio_play_sound(snd_pickup, 0, 0);

pontos_ganhos = other.pontos;

ganhei_pontos = true;

instance_destroy(other);
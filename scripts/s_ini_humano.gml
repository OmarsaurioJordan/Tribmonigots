// arg0: id de instancia que inicializa: humano

with argument0 {
    x += random_range(-1, 1);
    y += random_range(-1, 1);
    vida = si_para_masa(m_esp_humano);
    genero = choose(0, 1);
    cabeza = irandom(sprite_get_number(d_cabeza) - 1);
    torzo = irandom(sprite_get_number(d_torzo) - 1);
    espalda = choose(0, 0, 0, 0, 0, irandom(sprite_get_number(d_espalda) - 1));
    pantalon = irandom(sprite_get_number(d_pantalon) - 1);
    calzado = choose(0, 0, 0, 0, irandom(sprite_get_number(d_calzado) - 1));
    manoi = irandom(m_herram_all - 1);
    manod = irandom(m_herram_all - 1);
}

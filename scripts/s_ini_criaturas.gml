// arg0: id de instancia que inicializa: humano, volador, terrestre, acuatico

with argument0 {
    depth = -y;
    xi = x; yi = y; zi = 0;
    vida = 1;
    especie = m_esp_humano;
    
    reloj_rojo = 0; // para ver impacto rojizo
    antebioma_x = x; // mantiene el anterior bioma adecuado
    antebioma_y = y;
    antecolision = true; // guarda si en step pasado colisiono
    mx = x; // lugar a donde ir
    my = y;
    reloj_errar = random(1);
}

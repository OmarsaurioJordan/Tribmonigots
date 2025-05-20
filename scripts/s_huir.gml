// arg0: id de el animal hervivoro que hulle de depredador

with argument0 {
    if especie != m_esp_toro and !si_para_depredador(especie, false, false) {
        var aux = s_herviatento(id);
        if aux != noone {
            if true {
                var ddd = point_direction(aux.x, aux.y, x, y) + random_range(-45, 45);
                var vvv = si_para_vision(especie) * 0.5;
                var ppp = s_busca_lugar(x + lengthdir_x(vvv, ddd), y + lengthdir_y(vvv, ddd),
                    o_solido, true, -1, vvv, 0, true);
                if ppp[0] != x {
                    mx = ppp[0];
                    my = ppp[1];
                    reloj_errar = si_para_quieto(especie);
                }
            }
        }
    }
}

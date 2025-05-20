// arg0: id instancia que se mueve
// arg1: id tipo de objeto para detectar colision, usualmente o_solido o noone
// arg2: true si debe verificar movimiento por tierra o agua, false si vuela o levita
// arg3: true si el movimiento es por tierra, false por agua
// ret: true si el reloj se disparo

var res = false;
with argument0 {
    reloj_errar -= dt;
    if reloj_errar <= 0 {
        reloj_errar = si_para_quieto(especie) * random_range(0.5, 1);
        res = true;
        // ver si ponerse en movimiento
        var forza = false;
        if object_index == o_encumbrada {
            forza = primervuelo; }
        if random(1) < si_para_actividad(especie) or forza {
            if object_index == o_encumbrada {
                primervuelo = false; }
            var misocial = si_para_social(especie);
            var ppp;
            // va hacia algun lugar o grupo aliado
            if misocial[0] != noone and random(1) < 0.333 {
                ppp = s_busca_social(x, y, argument1, argument3, misocial[0],
                    si_para_vision(especie), 0, argument2, misocial[1]);
            }
            // va a un lugar al azar dependiendo del bioma
            else {
                var bio;
                if especie == m_esp_paloma or especie == m_esp_salmon {
                    bio = -1; }
                else {
                    bio = si_para_bioma(especie);
                    if s_mizona(x, y) == bio {
                        bio = choose(bio, bio, bio, -1); }
                    else {
                        bio = choose(bio, -1); }
                }
                // hacer busqueda lejana
                if bio != -1 and random(1) < 0.05 {
                    ppp = s_busca_lugar(x, y, argument1, argument3, bio, room_width, 0, argument2);
                    if ppp[0] != x {
                        reloj_errar *= 6; }
                }
                else {
                    ppp = s_busca_lugar(x, y, argument1, argument3, bio,
                        si_para_vision(especie), si_para_vision(especie) * 0.2, argument2);
                }
            }
            mx = ppp[0];
            my = ppp[1];
        }
        // permanecer quieto
        else {
            if object_index == o_encumbrada and s_mizona(x, y) != m_bioma_mar {
                estado = m_est_bajar; }
            else {
                mx = x;
                my = y; }
        }
    }
}
return res;

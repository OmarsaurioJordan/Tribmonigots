// arg0: id instancia que se mueve
// ret: true si se elimino el ave

var res = false;
with argument0 {
    reloj_errar -= dt;
    if reloj_errar <= 0 {
        reloj_errar = si_para_quieto(especie) * random_range(0.5, 1);
        // ver si ponerse en movimiento
        if random(1) < si_para_actividad(especie) {
            var aux = instance_create(x, y, o_encumbrada);
            aux.vida = vida;
            aux.especie = especie;
            res = true;
            instance_destroy();
        }
        // permanecer quieto
        else {
            mx = x; my = y;
        }
    }
}
return res;

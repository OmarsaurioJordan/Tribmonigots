// arg0: id hervivoro terrestre que llama
// ret: id de depredador cercano

var res = noone;
if random(1) < 0.05 {
    var vvv = si_para_vision(especie) * 0.5;
    with o_terrestre {
        if si_para_depredador(especie, true, true) {
            if x > argument0.x - vvv and x < argument0.x + vvv and 
                    y > argument0.y - vvv and y < argument0.y + vvv {
                if point_distance(x, y, argument0.x, argument0.y) < vvv {
                    if id != argument0 {
                        if !collision_line(x, y, argument0.x, argument0.y, o_solido, true, true) {
                            res = id;
                            break;
                        }
                    }
                }
            }
        }
    }
}
return res;

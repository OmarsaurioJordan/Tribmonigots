// arg0: id ave que llama
// arg1: true forzar chequeo
// ret: true si debe alertarse

var res = argument0.antecolision;
if !res and (random(1) < 0.05 or argument1) {
    var vvv = min(150, si_para_vision(especie));
    with o_terrestre {
        if x > argument0.x - vvv and x < argument0.x + vvv and 
                y > argument0.y - vvv and y < argument0.y + vvv {
            if point_distance(x, y, argument0.x, argument0.y) < vvv {
                if id != argument0 and si_para_masa(especie) > si_para_masa(argument0.especie) * 2 {
                    if !collision_line(x, y, argument0.x, argument0.y, o_solido, true, true) {
                        res = true;
                        break;
                    }
                }
            }
        }
    }
}
return res;

// arg0: posicion x
// arg1: posicion y
// arg2: objeto con el cual detectar colision, o noone
// arg3: true si navegar por tierra, false por agua
// arg4: id de objeto a buscar
// arg5: alcance visual limite maximo
// arg6: limite minimo de alcance visual
// arg7: true si debe verificar movimiento por tierra
// arg8: ind de especie si necesario, sino -1
// ret: array con par de puntos, o mismos iniciales si fallo

var res, xx, yy, dd, aux;
res[0] = argument0;
res[1] = argument1;
if instance_exists(argument4) {
repeat 1 { // para usar continue al final del codigo y saltarse cosas
    repeat 4 {
        xx = argument0 + random_range(-argument5, argument5);
        yy = argument1 + random_range(-argument5, argument5);
        aux = instance_nearest(xx, yy, argument4);
        dd = point_distance(argument0, argument1, aux.x, aux.y);
        if dd < argument5 and dd > argument6 {
            if argument8 == -1 {
                break; }
            else if aux.especie == argument8 {
                break; }
            else {
                aux = noone; }
        }
        else {
            aux = noone; }
    }
    if aux != noone {
        xx = aux.x + random_range(-100, 100);
        yy = aux.y + random_range(-100, 100);
        if argument7 {
            if s_verifica_linea(argument0, argument1, xx, yy, argument2, argument3) {
                res[0] = xx;
                res[1] = yy;
                break;
            }
        }
        else {
            if argument2 != noone {
                if collision_line(argument0, argument1, xx, yy, argument2, true, true) {
                    continue;
                }
            }
            if argument3 {
                if s_mizona(xx, yy) != m_bioma_mar {
                    res[0] = xx;
                    res[1] = yy;
                    break;
                }
            }
            else {
                if s_mizona(xx, yy) == m_bioma_mar or s_mizona(xx, yy) == m_bioma_rio {
                    res[0] = xx;
                    res[1] = yy;
                    break;
                }
            }
        }
    }
} }
return res;

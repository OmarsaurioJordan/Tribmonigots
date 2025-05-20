// arg0: posicion x
// arg1: posicion y
// arg2: objeto con el cual detectar colision, o noone
// arg3: true si navegar por tierra, false por agua
// arg4: ind de bioma deseado, o -1 para general
// arg5: alcance visual limite maximo
// arg6: limite minimo de alcance visual
// arg7: true si debe verificar movimiento por tierra
// ret: array con par de puntos, o mismos iniciales si fallo

var res, xx, yy, dd;
res[0] = argument0;
res[1] = argument1;
repeat 4 {
    do {
        xx = argument0 + random_range(-argument5, argument5);
        yy = argument1 + random_range(-argument5, argument5);
        dd = point_distance(argument0, argument1, xx, yy);
    }
    until dd < argument5 and dd > argument6;
    if argument4 == -1 or s_mizona(xx, yy) == argument4 {
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
}
return res;

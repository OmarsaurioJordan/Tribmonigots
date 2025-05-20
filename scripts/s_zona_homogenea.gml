// arg0: posicion x
// arg1: posicion y
// arg2: radio de zona a buscar
// arg3: bioma que debe prevalecer
// ret: true si solo está ese bioma en el lugar

var res = true;
for (var w = -argument2; w <= argument2; w += m_mapa_celda) {
    for (var h = -argument2; h <= argument2; h += m_mapa_celda) {
        if point_distance(0, 0, w, h) <= argument2 {
            if s_mizona(argument0 + w, argument1 + h) != argument3 {
                res = false;
                break;
            }
        }
    }
    if !res { break; }
}
return res;

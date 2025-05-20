// arg0: id instancia que quiere sincronizar posiciones

with argument0 {
    if x != xi or y != yi {
        var ddd = point_direction(xi, yi, x, y);
        var vvv = point_distance(xi, yi, x, y) * 0.1;
        xi += lengthdir_x(vvv, ddd);
        yi += lengthdir_y(vvv, ddd);
        depth = -(yi + zi / m_altuvuelo);
    }
}

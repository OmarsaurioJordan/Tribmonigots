var densidad = ds_grid_width(o_mundo.zona) * ds_grid_height(o_mundo.zona);
var xx, yy, zz, aux, cerca1, cerca2, xxx, yyy;
var cluster = random_range(0.333, 0.666);
var total = round(densidad * 0.666);
repeat total {
    xx = random(room_width);
    yy = random(room_height);
    zz = s_mizona(xx, yy);
    if random(1) < s_densidad_arboles(zz) {
        if random(1) < cluster and instance_exists(o_arbol_nace) {
            repeat 4 {
                cerca1 = instance_nearest(xx, yy, o_arbol_nace);
                cerca1 = point_distance(xx, yy, cerca1.x, cerca1.y);
                xxx = xx + random_range(-200, 200);
                yyy = yy + random_range(-200, 200);
                cerca2 = instance_nearest(xxx, yyy, o_arbol_nace);
                cerca2 = point_distance(xxx, yyy, cerca2.x, cerca2.y);
                if cerca2 < cerca1 and cerca2 < 400 and zz == s_mizona(xxx, yyy) {
                    xx = xxx;
                    yy = yyy;
                }
            }
        }
        s_crear_arbol(xx, yy);
    }
    if random(1) < total * 0.1 {
        cluster = random_range(0.333, 0.666);
    }
}

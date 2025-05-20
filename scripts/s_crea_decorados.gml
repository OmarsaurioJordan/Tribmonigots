var densidad = ds_grid_width(o_mundo.zona) * ds_grid_height(o_mundo.zona);
var xx, yy, zz, aux, cerca1, cerca2, xxx, yyy;
var total, cluster, lista;
lista[0] = o_decorado_flor;
lista[1] = o_decorado_hongo;
lista[2] = o_decorado_frutal;
lista[3] = o_decorado_vegetal;
lista[4] = o_decorado_otro;
lista[5] = o_decorado_mineral;
lista[6] = o_geiser;
for (var i = 0; i < array_length_1d(lista); i++) {
    cluster = random_range(0.333, 0.666);
    total = round(densidad * 0.666);
    repeat total {
        xx = random(room_width);
        yy = random(room_height);
        zz = s_mizona(xx, yy);
        if random(1) < s_densidad_decorados(zz, lista[i]) {
            if random(1) < cluster {
                repeat 4 {
                    cerca1 = s_busca_decorado_naciente(xx, yy, lista[i]);
                    if cerca1 != noone {
                        cerca1 = point_distance(xx, yy, cerca1.x, cerca1.y);
                        xxx = xx + random_range(-200, 200);
                        yyy = yy + random_range(-200, 200);
                        cerca2 = s_busca_decorado_naciente(xxx, yyy, lista[i]);
                        if cerca2 != noone {
                            cerca2 = point_distance(xxx, yyy, cerca2.x, cerca2.y);
                            if cerca2 < cerca1 and cerca2 < 400 and zz == s_mizona(xxx, yyy) {
                                xx = xxx;
                                yy = yyy;
                            }
                        }
                    }
                }
            }
            s_crear_decorado(xx, yy, lista[i]);
        }
        if random(1) < total * 0.1 {
            cluster = random_range(0.333, 0.666);
        }
    }
}

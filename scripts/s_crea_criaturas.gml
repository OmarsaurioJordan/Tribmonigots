var densidad = ds_grid_width(o_mundo.zona) * ds_grid_height(o_mundo.zona);
var xx, yy, zz;
var lista = si_lista_criaturas();
var total = round(densidad * 0.666);
for (var i = 0; i < array_length_1d(lista); i++) {
    if si_para_obj(lista[i]) != o_minusculo and si_para_obj(lista[i]) != o_bichin {
        repeat total {
            xx = random(room_width);
            yy = random(room_height);
            zz = s_mizona(xx, yy);
            if (zz == si_para_bioma(lista[i]) or
                    (zz == m_bioma_mar and lista[i] == m_esp_salmon)) and
                    random(1) < si_para_poblacion(lista[i]) {
                s_crear_criatura(xx, yy, lista[i]); }
        }
    }
}

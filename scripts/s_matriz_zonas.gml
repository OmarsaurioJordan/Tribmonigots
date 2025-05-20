// arg0: nombre del archivo .png a abrir
// arg1: margen de playa en formato de zeldas unitarias o 0
// ret: matriz con las casillas de colores

// m_mapa_mundo es la relaccion proporcional de talla entre room y PNG
// m_mapa_celda es la talla en px de una casilla, seria el radio del tile

// crear el indice maximo de matriz para optimizar memoria
var zona = ds_grid_create(floor(room_width / m_mapa_celda), floor(room_height / m_mapa_celda));
// importar el mapa como tal en PNG y hacer la superficie para leerle pixeles
var figura = sprite_add(argument0, 1, false, false, 0, 0);
var mapa = surface_create(room_width / m_mapa_mundo, room_height / m_mapa_mundo);
surface_set_target(mapa);
draw_sprite(figura, 0, 0, 0);
surface_save(mapa, "actual_mapa.png"); // evita error
sprite_delete(figura);
// ciclo para obtener pixeles
var pix, esc;
esc = m_mapa_celda / m_mapa_mundo;
for (var w = 0; w < ds_grid_width(zona); w++) {
    for (var h = 0; h < ds_grid_height(zona); h++) {
        ds_grid_set(zona, w, h, surface_getpixel(mapa, w * esc, h * esc));
        switch ds_grid_get(zona, w, h) {
            case m_bioma_mar:
            case m_bioma_rio:
            case m_bioma_desierto:
            case m_bioma_llanura:
            case m_bioma_selva:
            case m_bioma_tundra:
            case m_bioma_artico:
            case m_bioma_rocoso:
            case m_bioma_limbo:
                break;
            default:
                ds_grid_set(zona, w, h, m_bioma_mar);
                break;
        }
    }
}
// eliminar la superficie
surface_free(mapa);
surface_reset_target();
// crear playas
if argument1 > 0 {
    var lista;
    lista[0] = m_bioma_desierto;
    lista[1] = m_bioma_llanura;
    lista[2] = m_bioma_selva;
    lista[3] = m_bioma_tundra;
    lista[4] = m_bioma_artico;
    lista[5] = m_bioma_rocoso;
    lista[6] = m_bioma_limbo;
    var ok;
    for (var w = 0; w < ds_grid_width(zona); w++) {
        for (var h = 0; h < ds_grid_height(zona); h++) {
            if ds_grid_get(zona, w, h) == m_bioma_mar {
                // recorrer el vecindario circular de la casilla para ver si hay tierra
                ok = false;
                for (var i = 0; i < array_length_1d(lista); i++) {
                    ok = ds_grid_value_disk_exists(zona, w, h, argument1, lista[i]);
                    if ok { break; }
                }
                if ok {
                    ds_grid_set(zona, w, h, m_bioma_rio);
                }
            }
        }
    }
}
return zona;

// arg0: mapa de biomas a dibujar

// m_mapa_celda es la talla en px de una casilla, seria el radio del tile

// crear los tilesets para el fondo del mundo
var prof = room_height * 3;
for (var w = 0; w < ds_grid_width(argument0); w++) {
    for (var h = 0; h < ds_grid_height(argument0); h++) {
        switch ds_grid_get(argument0, w, h) {
            case m_bioma_mar:
                tile_add(db_suelo, 0, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 100); break;
            case m_bioma_rio:
                tile_add(db_suelo, 64, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 40); break;
            case m_bioma_desierto:
                tile_add(db_suelo, 128, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 80); break;
            case m_bioma_llanura:
                tile_add(db_suelo, 192, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 60); break;
            case m_bioma_selva:
                tile_add(db_suelo, 256, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 50); break;
            case m_bioma_tundra:
                tile_add(db_suelo, 320, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 70); break;
            case m_bioma_artico:
                tile_add(db_suelo, 384, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 90); break;
            case m_bioma_rocoso:
                tile_add(db_suelo, 448, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 55); break;
            case m_bioma_limbo:
                tile_add(db_suelo, 512, 0, 64, 64,
                    w * m_mapa_celda, h * m_mapa_celda, prof + 75); break;
        }
    }
}

// arg0: id de instancia
// arg1: true si es terrestre, false acuatico
// arg2: true si es aereo, arg1 dejaria de importar

with argument0 {
    x = clamp(x, 64, room_width - 64);
    y = clamp(y, 200, room_height - 64);
    if !argument2 {
        if argument1 {
            if s_mizona(x, y) == m_bioma_mar {
                x = antebioma_x; y = antebioma_y;
            }
            else {
                antebioma_x = x; antebioma_y = y;
            }
        }
        else {
            if s_mizona(x, y) != m_bioma_mar and s_mizona(x, y) != m_bioma_rio {
                x = antebioma_x; y = antebioma_y;
            }
            else {
                antebioma_x = x; antebioma_y = y;
            }
        }
    }
}

// arg0: grafico segun el bioma
// arg1: subgrafico de tipo de arbol
// ret: porcentaje para multiplicar por vida o madera

var res = m_material_unidad * 200; // metal basico
switch argument0 {
    case d_mineral_selva:
    case d_mineral_desierto:
    case d_mineral_tundra:
    case d_mineral_limbo:
        switch argument1 {
            case 0: res *= 1.4; break;
            case 5: res *= 1.5; break;
            case 10: res *= 0.9; break;
            case 15: res *= 1.2; break;
        } break;
    case d_mineral_artico:
        switch argument1 {
            case 0: res *= 1.1; break;
            case 5: res *= 1; break;
            case 10: res *= 0.8; break;
            case 15: res *= 0.7; break;
        } break;
    case d_mineral_rocoso:
        switch argument1 {
            case 0: res *= 1.4; break;
            case 5: res *= 2; break;
            case 10: res *= 1.5; break;
            case 15: res *= 0.9; break;
            case 20: res *= 1; break;
            case 25: res *= 1.2; break;
            case 30: res *= 1.3; break;
        } break;
}
res = round(res / m_material_unidad) * m_material_unidad;
return res;

// arg0: grafico segun el bioma
// arg1: subgrafico de tipo de arbol
// ret: cantidad de vida o madera

var res;
res = m_material_unidad * 6; // madera basica
switch argument0 {
    case d_arbol_selva:
        switch argument1 {
            case 0: res *= 1.4; break;
            case 3: res *= 1.8; break;
            case 6: res *= 1.7; break;
            case 9: res *= 1.5; break;
        } break;
    case d_arbol_desierto:
        switch argument1 {
            case 0: res *= 0.9; break;
            case 3: res *= 1.2; break;
            case 6: res *= 0.5; break;
            case 9: res *= 1; break;
        } break;
    case d_arbol_tundra:
        switch argument1 {
            case 0: res *= 1.1; break;
            case 3: res *= 1.7; break;
            case 6: res *= 1.3; break;
            case 9: res *= 0.5; break;
        } break;
    case d_arbol_llanura:
        switch argument1 {
            case 0: res *= 1.1; break;
            case 3: res *= 1.6; break;
            case 6: res *= 1.5; break;
            case 9: res *= 1.4; break;
        } break;
    case d_arbol_limbo:
        switch argument1 {
            case 0: res *= 1.3; break;
            case 3: res *= 0.9; break;
            case 6: res *= 1; break;
            case 9: res *= 1.2; break;
        } break;
}
res = round(res / m_material_unidad) * m_material_unidad;
return res;

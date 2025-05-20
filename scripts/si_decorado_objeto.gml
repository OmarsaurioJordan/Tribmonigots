// arg0: id de sprite que lo conforma
// arg1: ind de subimagen del sprite
// ret: objeto al que esta asociado

var res = noone;
switch argument0 {
    case d_decorado_selva:
        switch argument1 {
            case 0: case 1: case 2: case 3: case 4:
                res = o_decorado_vegetal; break;
            case 5: case 6: case 7:
                res = o_decorado_hongo; break;
            case 8: case 9: case 10:
                res = o_decorado_frutal; break;
            case 11:
                res = o_decorado_mineral; break;
        } break;
    case d_decorado_desierto:
        switch argument1 {
            case 0: case 1: case 2: case 3: case 4: case 5: case 9:
                res = o_decorado_otro; break;
            case 8:
                res = o_decorado_vegetal; break;
            case 6: case 7:
                res = o_decorado_mineral; break;
        } break;
    case d_decorado_tundra:
        switch argument1 {
            case 0: case 4:
                res = o_decorado_vegetal; break;
            case 6: case 7: case 5:
                res = o_decorado_otro; break;
            case 1: case 2:
                res = o_decorado_mineral; break;
            case 3:
                res = o_decorado_frutal; break;
        } break;
    case d_decorado_artico:
        switch argument1 {
            case 0: case 1: case 2: case 3:
                res = o_decorado_mineral; break;
            case 4:
                res = o_geiser; break;
            case 5:
                res = o_decorado_otro; break;
        } break;
    case d_decorado_llanura:
        switch argument1 {
            case 0: case 1: case 2: case 3:
                res = o_decorado_vegetal; break;
            case 4:
                res = o_decorado_mineral; break;
            case 5: case 6:
                res = o_decorado_cultivo; break;
            case 7:
                res = o_decorado_frutal; break;
            case 8: case 9: case 10: case 11: case 12: case 13:
            case 14: case 15:
                res = o_decorado_flor; break;
        } break;
    case d_decorado_rocoso:
        switch argument1 {
            case 0: case 1: case 2: case 7:
                res = o_decorado_mineral; break;
            case 4: case 5: case 6:
                res = o_decorado_hongo; break;
            case 8: case 3:
                res = o_decorado_otro; break;
        } break;
    case d_decorado_limbo:
        switch argument1 {
            case 0: case 1:
                res = o_decorado_hongo; break;
            case 2: case 3:
                res = o_decorado_vegetal; break;
            case 4: case 5: case 7:
                res = o_decorado_otro; break;
            case 6:
                res = o_decorado_frutal; break;
            case 8:
                res = o_decorado_mineral; break;
        } break;
    case d_nido:
        switch argument1 {
            case 0:
                res = o_nido_hormiguero; break;
            case 1:
                res = o_nido_ave; break;
            case 2:
                res = o_nido_tunel; break;
            case 3:
                res = o_nido_huevofrio; break;
            case 4:
                res = o_nido_colmena; break;
            case 5:
                res = o_nido_caregolem; break;
            case 6:
                res = o_nido_telaranna; break;
        } break;
    case d_arbol_selva:
    case d_arbol_desierto:
    case d_arbol_tundra:
    case d_arbol_llanura:
    case d_arbol_limbo:
        res = o_decorado_tocon; break;
    case d_mineral_selva:
    case d_mineral_desierto:
    case d_mineral_tundra:
    case d_mineral_artico:
    case d_mineral_rocoso:
    case d_mineral_limbo:
        res = o_decorado_postmina; break;
}
return res;

// arg0: ind de la zona
// arg1: tipo de decorado segun objeto, por ejemplo o_decorado_flor
// ret: densidad porcentual

var res = 0;
switch argument0 {
    case m_bioma_desierto:
        switch argument1 {
            case o_decorado_mineral: res = 0.02; break;
            case o_decorado_otro: res = 0.04; break;
            case o_decorado_vegetal: res = 0.005; break;
            case o_nido_ave: res = 0.003; break;
        } break;
    case m_bioma_llanura:
        switch argument1 {
            case o_decorado_frutal: res = 0.04; break;
            case o_decorado_mineral: res = 0.04; break;
            case o_decorado_flor: res = 0.09; break;
            case o_decorado_vegetal: res = 0.4; break;
            case o_nido_colmena: res = 0.005; break;
        } break;
    case m_bioma_selva:
        switch argument1 {
            case o_decorado_frutal: res = 0.07; break;
            case o_decorado_mineral: res = 0.03; break;
            case o_decorado_hongo: res = 0.05; break;
            case o_decorado_vegetal: res = 0.4; break;
            case o_nido_hormiguero: res = 0.008; break;
        } break;
    case m_bioma_tundra:
        switch argument1 {
            case o_decorado_frutal: res = 0.02; break;
            case o_decorado_mineral: res = 0.02; break;
            case o_decorado_otro: res = 0.15; break;
            case o_decorado_vegetal: res = 0.2; break;
            case o_nido_tunel: res = 0.01; break;
        } break;
    case m_bioma_artico:
        switch argument1 {
            case o_decorado_mineral: res = 0.08; break;
            case o_decorado_otro: res = 0.01; break;
            case o_geiser: res = 0.01; break;
            case o_nido_huevofrio: res = 0.001; break;
        } break;
    case m_bioma_rocoso:
        switch argument1 {
            case o_decorado_mineral: res = 0.2; break;
            case o_decorado_hongo: res = 0.05; break;
            case o_decorado_otro: res = 0.04; break;
            case o_nido_caregolem: res = 0.001; break;
        } break;
    case m_bioma_limbo:
        switch argument1 {
            case o_decorado_frutal: res = 0.025; break;
            case o_decorado_mineral: res = 0.02; break;
            case o_decorado_hongo: res = 0.06; break;
            case o_decorado_otro: res = 0.1; break;
            case o_decorado_vegetal: res = 0.2; break;
            case o_nido_telaranna: res = 0.004; break;
        } break;
}
return res;

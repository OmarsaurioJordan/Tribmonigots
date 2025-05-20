// arg0: posicion x
// arg1: posicion y

var r = sprite_get_width(d_coli2);
if !collision_circle(argument0, argument1, r, o_solido, true, true) {
if !collision_circle(argument0, argument1, r, o_geiser, true, true) {
    if !s_zonacirculo(argument0, argument1, r * 2, m_bioma_rio) and
            !s_zonacirculo(argument0, argument1, r * 2, m_bioma_mar) {
        var aux = instance_create(argument0, argument1, o_arbol_nace);
        switch s_mizona(argument0, argument1) {
            case m_bioma_desierto: aux.grafico = d_arbol_desierto; break;
            case m_bioma_llanura: aux.grafico = d_arbol_llanura; break;
            case m_bioma_selva: aux.grafico = d_arbol_selva; break;
            case m_bioma_tundra: aux.grafico = d_arbol_tundra; break;
            case m_bioma_limbo: aux.grafico = d_arbol_limbo; break;
            default: with aux { instance_destroy(); } exit;
        }
        aux.subgraf = choose(0, 3, 6, 9);
        s_quitadecorado(argument0, argument1, r);
    }
} }

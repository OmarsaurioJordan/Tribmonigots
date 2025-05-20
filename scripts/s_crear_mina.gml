// arg0: posicion x
// arg1: posicion y

var r = sprite_get_width(d_coli3);
if !collision_circle(argument0, argument1, r, o_solido, true, true) {
if !collision_circle(argument0, argument1, r, o_geiser, true, true) {
    if !s_zonacirculo(argument0, argument1, r * 2, m_bioma_rio) and
            !s_zonacirculo(argument0, argument1, r * 2, m_bioma_mar) {
        var aux = instance_create(argument0, argument1, o_mineral);
        switch s_mizona(argument0, argument1) {
            case m_bioma_desierto: aux.grafico = d_mineral_desierto; break;
            case m_bioma_rocoso: aux.grafico = d_mineral_rocoso; break;
            case m_bioma_selva: aux.grafico = d_mineral_selva; break;
            case m_bioma_tundra: aux.grafico = d_mineral_tundra; break;
            case m_bioma_limbo: aux.grafico = d_mineral_limbo; break;
            case m_bioma_artico: aux.grafico = d_mineral_artico; break;
            default: with aux { instance_destroy(); } exit;
        }
        aux.subgraf = irandom((sprite_get_number(aux.grafico) / 5) - 1) * 5;
        aux.metales = si_mina_metales(aux.grafico, aux.subgraf);
        s_quitadecorado(argument0, argument1, r);
    }
} }

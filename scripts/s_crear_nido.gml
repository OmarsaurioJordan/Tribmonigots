// arg0: posicion x
// arg1: posicion y
// arg2: tipo de decorado segun objeto, por ejemplo o_decorado_flor

var r = sprite_get_width(d_coli2);
if !collision_circle(argument0, argument1, r, o_solido, true, true) {
if !collision_circle(argument0, argument1, r, o_geiser, true, true) {
if !collision_circle(argument0, argument1, r, o_decorado_nace, true, true) {
if !collision_circle(argument0, argument1, r, o_decorado, true, true) {
    if !s_zonacirculo(argument0, argument1, r * 2, m_bioma_rio) and
            !s_zonacirculo(argument0, argument1, r * 2, m_bioma_mar) {
        var aux = instance_create(argument0, argument1, o_decorado_nace);
        aux.grafico = d_nido;
        switch argument2 {
            case o_nido_hormiguero: aux.subgraf = 0; break;
            case o_nido_ave: aux.subgraf = 1; break;
            case o_nido_tunel: aux.subgraf = 2; break;
            case o_nido_huevofrio: aux.subgraf = 3; break;
            case o_nido_colmena: aux.subgraf = 4; break;
            case o_nido_caregolem: aux.subgraf = 5; break;
            case o_nido_telaranna: aux.subgraf = 6; break;
        }
    }
} } } }

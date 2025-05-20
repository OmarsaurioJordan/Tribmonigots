// arg0: posicion x
// arg1: posicion y
// arg2: tipo de decorado segun objeto, por ejemplo o_decorado_flor

var r = sprite_get_width(d_coli1);
if !collision_circle(argument0, argument1, r, o_solido, true, true) {
if !collision_circle(argument0, argument1, r, o_geiser, true, true) {
if !collision_circle(argument0, argument1, r, o_decorado_nace, true, true) {
if !collision_circle(argument0, argument1, r, o_decorado, true, true) {
    if !s_zonacirculo(argument0, argument1, r * 2, m_bioma_rio) and
            !s_zonacirculo(argument0, argument1, r * 2, m_bioma_mar) {
        var aux = instance_create(argument0, argument1, o_decorado_nace);
        var ok = false;
        switch s_mizona(argument0, argument1) {
            case m_bioma_desierto:
                aux.grafico = d_decorado_desierto;
                switch argument2 {
                    case o_decorado_otro:
                        ok = true;
                        aux.subgraf = choose(0, 1, 2, 3, 4, 5, 9); break;
                    case o_decorado_vegetal:
                        ok = true;
                        aux.subgraf = choose(8); break;
                    case o_decorado_cultivo:
                        ok = true;
                        aux.ralentiza = 0.01; // crecimiento cultivo
                        aux.grafico = d_decorado_llanura; // sobreescrito
                        aux.subgraf = choose(6); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(6, 7); break;
                    case o_nido_ave:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 1; break;
                } break;
            case m_bioma_llanura:
                aux.grafico = d_decorado_llanura;
                switch argument2 {
                    case o_decorado_vegetal:
                        ok = true;
                        aux.subgraf = choose(0, 1, 2, 3); break;
                    case o_decorado_frutal:
                        ok = true;
                        aux.subgraf = choose(7); break;
                    case o_decorado_cultivo:
                        ok = true;
                        aux.ralentiza = 0.05; // crecimiento cultivo
                        aux.subgraf = choose(5, 6); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(4); break;
                    case o_decorado_flor:
                        ok = true;
                        aux.subgraf = choose(8, 9, 10, 11, 12, 13, 14, 15); break;
                    case o_nido_colmena:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 4; break;
                } break;
            case m_bioma_selva:
                aux.grafico = d_decorado_selva;
                switch argument2 {
                    case o_decorado_vegetal:
                        ok = true;
                        aux.subgraf = choose(0, 1, 2, 3, 4); break;
                    case o_decorado_frutal:
                        ok = true;
                        aux.subgraf = choose(8, 9, 10); break;
                    case o_decorado_cultivo:
                        ok = true;
                        aux.ralentiza = 0.04; // crecimiento cultivo
                        aux.grafico = d_decorado_llanura; // sobreescrito
                        aux.subgraf = choose(5, 6); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(11); break;
                    case o_decorado_hongo:
                        ok = true;
                        aux.subgraf = choose(5, 6, 7); break;
                    case o_nido_hormiguero:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 0; break;
                } break;
            case m_bioma_tundra:
                aux.grafico = d_decorado_tundra;
                switch argument2 {
                    case o_decorado_otro:
                        ok = true;
                        aux.subgraf = choose(5, 6, 7); break;
                    case o_decorado_vegetal:
                        ok = true;
                        aux.subgraf = choose(0, 4); break;
                    case o_decorado_frutal:
                        ok = true;
                        aux.subgraf = choose(3); break;
                    case o_decorado_cultivo:
                        ok = true;
                        aux.ralentiza = 0.02; // crecimiento cultivo
                        aux.grafico = d_decorado_llanura; // sobreescrito
                        aux.subgraf = choose(5); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(1, 2); break;
                    case o_nido_tunel:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 2; break;
                } break;
            case m_bioma_artico:
                aux.grafico = d_decorado_artico;
                switch argument2 {
                    case o_decorado_otro:
                        ok = true;
                        aux.subgraf = choose(5); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(0, 1, 2, 3); break;
                    case o_geiser:
                        ok = true;
                        aux.subgraf = choose(4); break;
                    case o_nido_huevofrio:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 3; break;
                } break;
            case m_bioma_rocoso:
                aux.grafico = d_decorado_rocoso;
                switch argument2 {
                    case o_decorado_otro:
                        ok = true;
                        aux.subgraf = choose(3, 8); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(0, 1, 2, 7); break;
                    case o_decorado_hongo:
                        ok = true;
                        aux.subgraf = choose(4, 5, 6); break;
                    case o_nido_caregolem:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 5; break;
                } break;
            case m_bioma_limbo:
                aux.grafico = d_decorado_limbo;
                switch argument2 {
                    case o_decorado_otro:
                        ok = true;
                        aux.subgraf = choose(4, 5, 7); break;
                    case o_decorado_vegetal:
                        ok = true;
                        aux.subgraf = choose(2, 3); break;
                    case o_decorado_frutal:
                        ok = true;
                        aux.subgraf = choose(6); break;
                    case o_decorado_cultivo:
                        ok = true;
                        aux.ralentiza = 0.03; // crecimiento cultivo
                        aux.grafico = d_decorado_llanura; // sobreescrito
                        aux.subgraf = choose(5, 6); break;
                    case o_decorado_mineral:
                        ok = true;
                        aux.subgraf = choose(8); break;
                    case o_decorado_hongo:
                        ok = true;
                        aux.subgraf = choose(0, 1); break;
                    case o_nido_telaranna:
                        ok = true;
                        aux.grafico = d_nido; // sobreescrito
                        aux.subgraf = 6; break;
                } break;
        }
        if !ok {
            with aux { instance_destroy(); }
        }
    }
} } } }

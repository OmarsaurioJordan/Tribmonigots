// arg0: ind de especie de criatura

var res;
res[0] = noone;
res[1] = -1;
switch argument0 {
    case m_esp_humano:
        res[0] = o_humano; res[1] = m_esp_humano; break;
    case m_esp_abeja:
        res[0] = o_decorado_flor; res[1] = -1; break;
    case m_esp_pollo:
        res[0] = o_decorado_cultivo; res[1] = -1; break;
    case m_esp_meduza:
        res[0] = o_geiser; res[1] = -1; break;
    case m_esp_loro:
        res[0] = o_decorado_frutal; res[1] = -1; break;
    case m_esp_aranna:
        res[0] = o_nido_telaranna; res[1] = -1; break;
    case m_esp_hormiga:
        res[0] = o_nido_hormiguero; res[1] = -1; break;
    case m_esp_toro:
    case m_esp_perro:
    case m_esp_raton:
    case m_esp_paloma:
    case m_esp_atun:
    case m_esp_pinguino:
        res[0] = o_animal; res[1] = argument0; break;
    case m_esp_conejo:
        res[0] = o_nido_tunel; res[1] = -1; break;
    case m_esp_avestruz:
        res[0] = o_nido_ave; res[1] = -1; break;
    case m_esp_mico:
    case m_esp_buho:
    case m_esp_oso:
    case m_esp_tigre:
    case m_esp_vampiro:
        res[0] = o_arbol; res[1] = -1; break;
    case m_esp_golem:
        res[0] = o_mineral; res[1] = -1; break;
}
return res;

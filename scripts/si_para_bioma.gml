// arg0: ind de especie de criatura

var res = 0;
switch argument0 {
    case m_esp_humano: res = m_bioma_llanura; break;
    case m_esp_paloma: res = m_bioma_rio; break;
    case m_esp_mosca: res = m_bioma_limbo; break;
    case m_esp_buho: res = m_bioma_limbo; break;
    case m_esp_escarabajo: res = m_bioma_rocoso; break;
    case m_esp_abeja: res = m_bioma_llanura; break;
    case m_esp_pollo: res = m_bioma_llanura; break;
    case m_esp_meduza: res = m_bioma_artico; break;
    case m_esp_zancudo: res = m_bioma_tundra; break;
    case m_esp_aguila: res = m_bioma_tundra; break;
    case m_esp_buitre: res = m_bioma_desierto; break;
    case m_esp_libelula: res = m_bioma_selva; break;
    case m_esp_loro: res = m_bioma_selva; break;
    case m_esp_salmon: res = m_bioma_rio; break;
    case m_esp_atun: res = m_bioma_mar; break;
    case m_esp_tiburon: res = m_bioma_mar; break;
    case m_esp_tortuga: res = m_bioma_rio; break;
    case m_esp_ballena: res = m_bioma_mar; break;
    case m_esp_cocodrilo: res = m_bioma_rio; break;
    case m_esp_gusano: res = m_bioma_desierto; break;
    case m_esp_aranna: res = m_bioma_limbo; break;
    case m_esp_caracol: res = m_bioma_rocoso; break;
    case m_esp_plancton: res = m_bioma_artico; break;
    case m_esp_alacran: res = m_bioma_desierto; break;
    case m_esp_hormiga: res = m_bioma_selva; break;
    case m_esp_rana: res = m_bioma_rio; break;
    case m_esp_lagarto: res = m_bioma_rio; break;
    case m_esp_raton: res = m_bioma_limbo; break;
    case m_esp_cabra: res = m_bioma_rocoso; break;
    case m_esp_toro: res = m_bioma_llanura; break;
    case m_esp_pinguino: res = m_bioma_artico; break;
    case m_esp_conejo: res = m_bioma_tundra; break;
    case m_esp_avestruz: res = m_bioma_desierto; break;
    case m_esp_mico: res = m_bioma_selva; break;
    case m_esp_vampiro: res = m_bioma_limbo; break;
    case m_esp_golem: res = m_bioma_rocoso; break;
    case m_esp_perro: res = m_bioma_llanura; break;
    case m_esp_polar: res = m_bioma_artico; break;
    case m_esp_oso: res = m_bioma_tundra; break;
    case m_esp_tigre: res = m_bioma_selva; break;
}
return res;

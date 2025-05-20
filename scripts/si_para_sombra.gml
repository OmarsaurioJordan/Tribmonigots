// arg0: ind de especie de criatura

var res = 0;
switch argument0 {
    case m_esp_humano: res = 3; break;
    case m_esp_paloma: res = 2; break;
    case m_esp_mosca: res = 0; break;
    case m_esp_buho: res = 4; break;
    case m_esp_escarabajo: res = 1; break;
    case m_esp_abeja: res = 0; break;
    case m_esp_pollo: res = 2; break;
    case m_esp_meduza: res = 3; break;
    case m_esp_zancudo: res = 0; break;
    case m_esp_aguila: res = 4; break;
    case m_esp_buitre: res = 3; break;
    case m_esp_libelula: res = 1; break;
    case m_esp_loro: res = 3; break;
    case m_esp_salmon: res = -1; break;
    case m_esp_atun: res = -1; break;
    case m_esp_tiburon: res = -1; break;
    case m_esp_tortuga: res = -1; break;
    case m_esp_ballena: res = -1; break;
    case m_esp_cocodrilo: res = -1; break;
    case m_esp_gusano: res = -1; break;
    case m_esp_aranna: res = 1; break;
    case m_esp_caracol: res = 1; break;
    case m_esp_plancton: res = 1; break;
    case m_esp_alacran: res = 0; break;
    case m_esp_hormiga: res = 0; break;
    case m_esp_rana: res = 3; break;
    case m_esp_lagarto: res = 3; break;
    case m_esp_raton: res = 1; break;
    case m_esp_cabra: res = 4; break;
    case m_esp_toro: res = 6; break;
    case m_esp_pinguino: res = 2; break;
    case m_esp_conejo: res = 2; break;
    case m_esp_avestruz: res = 3; break;
    case m_esp_mico: res = 3; break;
    case m_esp_vampiro: res = 2; break;
    case m_esp_golem: res = 6; break;
    case m_esp_perro: res = 3; break;
    case m_esp_polar: res = 6; break;
    case m_esp_oso: res = 5; break;
    case m_esp_tigre: res = 4; break;
}
return res;

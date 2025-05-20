// arg0: ind de especie de criatura

var res = 0;
switch argument0 {
    case m_esp_humano: res = 0; break;
    case m_esp_paloma: res = 0.01; break;
    case m_esp_mosca: res = 1; break;
    case m_esp_buho: res = 0.0035; break;
    case m_esp_escarabajo: res = 1; break;
    case m_esp_abeja: res = 6; break;
    case m_esp_pollo: res = 0.006; break;
    case m_esp_meduza: res = 0.004; break;
    case m_esp_zancudo: res = 3; break;
    case m_esp_aguila: res = 0.002; break;
    case m_esp_buitre: res = 0.003; break;
    case m_esp_libelula: res = 1; break;
    case m_esp_loro: res = 0.008; break;
    case m_esp_salmon: res = 0.02; break;
    case m_esp_atun: res = 0.01; break;
    case m_esp_tiburon: res = 0.0009; break;
    case m_esp_tortuga: res = 0; break;
    case m_esp_ballena: res = 0.0005; break;
    case m_esp_cocodrilo: res = 0; break;
    case m_esp_gusano: res = 0.0015; break;
    case m_esp_aranna: res = 1; break;
    case m_esp_caracol: res = 1; break;
    case m_esp_plancton: res = 3; break;
    case m_esp_alacran: res = 3; break;
    case m_esp_hormiga: res = 6; break;
    case m_esp_rana: res = 0.009; break;
    case m_esp_lagarto: res = 0.007; break;
    case m_esp_raton: res = 0.008; break;
    case m_esp_cabra: res = 0.005; break;
    case m_esp_toro: res = 0.003; break;
    case m_esp_pinguino: res = 0.005; break;
    case m_esp_conejo: res = 0.008; break;
    case m_esp_avestruz: res = 0.004; break;
    case m_esp_mico: res = 0.005; break;
    case m_esp_vampiro: res = 0.0025; break;
    case m_esp_golem: res = 0.0015; break;
    case m_esp_perro: res = 0.0023; break;
    case m_esp_polar: res = 0.001; break;
    case m_esp_oso: res = 0.0015; break;
    case m_esp_tigre: res = 0.0015; break;
}
return res;

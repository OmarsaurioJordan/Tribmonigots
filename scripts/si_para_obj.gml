// arg0: ind de especie de criatura

var res = 0;
switch argument0 {
    case m_esp_humano:
        res = o_humano; break;
    case m_esp_mosca:
    case m_esp_escarabajo:
    case m_esp_abeja:
    case m_esp_zancudo:
    case m_esp_libelula:
        res = o_bichin; break;
    case m_esp_buho:
    case m_esp_paloma:
    case m_esp_pollo:
    case m_esp_meduza:
    case m_esp_aguila:
    case m_esp_buitre:
    case m_esp_loro:
        res = o_ave; break;
    case m_esp_salmon:
    case m_esp_atun:
    case m_esp_tiburon:
    case m_esp_tortuga:
    case m_esp_ballena:
    case m_esp_cocodrilo:
        res = o_pez; break;
    case m_esp_gusano:
        res = o_gusano; break;
    case m_esp_aranna:
    case m_esp_caracol:
    case m_esp_plancton:
    case m_esp_alacran:
    case m_esp_hormiga:
        res = o_minusculo; break;
    case m_esp_rana:
    case m_esp_lagarto:
    case m_esp_raton:
    case m_esp_cabra:
    case m_esp_toro:
    case m_esp_pinguino:
    case m_esp_conejo:
    case m_esp_avestruz:
    case m_esp_mico:
    case m_esp_vampiro:
    case m_esp_golem:
    case m_esp_perro:
    case m_esp_polar:
    case m_esp_oso:
    case m_esp_tigre:
        res = o_animal; break;
}
return res;

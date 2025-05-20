// arg0: ind de especie de criatura

var res = 0;
switch argument0 {
    case m_esp_salmon: res = 0.35; break;
    case m_esp_atun: res = 0.3; break;
    case m_esp_tiburon: res = 0.6; break;
    case m_esp_tortuga: res = 0.5; break;
    case m_esp_ballena: res = 0.7; break;
    case m_esp_cocodrilo: res = 0.15; break;
    case m_esp_gusano: res = 0.15; break;
}
return res;

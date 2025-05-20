// arg0: ind de la herramienta, no importa si es izq o der
// ret: lo que debe ir en la espalda

var res = -1;
switch argument0 {
    case m_herram_artilleria2: res = 10; break;
    case m_herram_catapulta2b: res = 5; break;
    case m_herram_catapulta1b: res = 4; break;
    case m_herram_catapulta2a: res = 2; break;
    case m_herram_catapulta1a: res = 1; break;
    case m_herram_arco_h2: res = 9; break;
    case m_herram_arco_h1: res = 9; break;
    case m_herram_arco_m2: res = 8; break;
    case m_herram_arco_m1: res = 8; break;
    case m_herram_ballesta2: res = 7; break;
    case m_herram_ballesta1: res = 7; break;
}
return res;

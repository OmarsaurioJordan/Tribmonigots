// arg0: ind de la herramienta, no importa si es izq o der
// ret: si es de doble mano, solo izq, solo der, ambas posibles

var res = m_dispo_dual;
switch argument0 {
    case m_herram_cel:
    case m_herram_libro:
    case m_herram_maleta:
    case m_herram_decreto:
    case m_herram_canasta:
        res = m_dispo_izq; break;
    case m_herram_cerrucho:
    case m_herram_pico:
    case m_herram_horqueta:
    case m_herram_flauta:
    case m_herram_moskete:
    case m_herram_pistola2:
    case m_herram_misil:
    case m_herram_laser:
    case m_herram_rifle1:
    case m_herram_metralla3:
    case m_herram_escopeta:
    case m_herram_metralla2:
    case m_herram_metralla1:
        res = m_dispo_der; break;
    case m_herram_catapulta2b:
    case m_herram_catapulta1b:
    case m_herram_catapulta2a:
    case m_herram_catapulta1a:
    case m_herram_pintura:
    case m_herram_vino:
    case m_herram_almuerzo:
    case m_herram_mancuernas:
    case m_herram_pesa:
    case m_herram_escrito:
    case m_herram_rifle2:
    case m_herram_artilleria2:
    case m_herram_artilleria1:
    case m_herram_metralla4:
    case m_herram_tambor:
    case m_herram_gas:
    case m_herram_granada:
    case m_herram_arco_h2:
    case m_herram_arco_h1:
    case m_herram_arco_m2:
    case m_herram_arco_m1:
    case m_herram_ballesta2:
    case m_herram_ballesta1:
    case m_herram_ariete2:
    case m_herram_ariete1:
    case m_herram_palo:
    case m_herram_baston2:
    case m_herram_baston1:
    case m_herram_bara_negra2:
    case m_herram_bara_negra1:
    case m_herram_bara_blanca2:
    case m_herram_bara_blanca1:
    case m_herram_bara_morada2:
    case m_herram_bara_morada1:
    case m_herram_bara_verde2:
    case m_herram_bara_verde1:
    case m_herram_bara_azul2:
    case m_herram_bara_azul1:
    case m_herram_bara_amarilla2:
    case m_herram_bara_amarilla1:
    case m_herram_bara_roja2:
    case m_herram_bara_roja1:
    case m_herram_violin2b:
    case m_herram_violin2a:
    case m_herram_violin1b:
    case m_herram_violin1a:
        res = m_dispo_una; break;
}
return res;

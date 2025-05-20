// arg0: ind de la zona
// ret: densidad porcentual

var res;
switch argument0 {
    case m_bioma_desierto:
        res = 0.01; break;
    case m_bioma_llanura:
        res = 0.04; break;
    case m_bioma_selva:
        res = 0.2; break;
    case m_bioma_tundra:
        res = 0.1; break;
    case m_bioma_limbo:
        res = 0.15; break;
    default:
        res = 0; break;
}
return res;

// arg0: ind de la zona
// ret: densidad porcentual

var res;
switch argument0 {
    case m_bioma_desierto:
        res = 0.005; break;
    case m_bioma_selva:
        res = 0.008; break;
    case m_bioma_tundra:
        res = 0.007; break;
    case m_bioma_artico:
        res = 0.011; break;
    case m_bioma_rocoso:
        res = 0.023; break;
    case m_bioma_limbo:
        res = 0.009; break;
    default:
        res = 0; break;
}
return res;

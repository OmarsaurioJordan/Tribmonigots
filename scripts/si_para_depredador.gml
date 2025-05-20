// arg0: ind de especie de criatura
// arg1: true si solo los visibles
// arg2: true si incluir al humano

var res = false;
switch argument0 {
    case m_esp_tiburon:
    case m_esp_cocodrilo:
    case m_esp_gusano:
        res = !argument1; break;
    case m_esp_humano:
        res = argument2; break;
    case m_esp_lagarto:
    case m_esp_vampiro:
    case m_esp_golem:
    case m_esp_perro:
    case m_esp_polar:
    case m_esp_oso:
    case m_esp_tigre:
        res = true; break;
}
return res;

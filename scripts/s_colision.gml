// arg0: id de quien trata de colisionar

with argument0 {
    if antecolision or random(1) < 0.05 {
        antecolision = false;
        var otro;
        switch object_index {
            case o_humano:
            case o_animal:
            case o_ave:
            case o_minusculo:
            case o_bichin:
                otro = instance_place(x, y, o_solido); break;
            default:
                otro = noone; break;
        }
        if otro == noone {
            switch object_index {
                case o_gusano:
                    otro = instance_place(x, y, o_gusano);
                    if otro != noone {
                        if otro.estado != m_est_general {
                            antecolision = true;
                            var ddd = point_direction(otro.x, otro.y, x, y);
                            var vvv = si_para_velocidad(especie) * dt;
                            x += lengthdir_x(vvv, ddd);
                            y += lengthdir_y(vvv, ddd);
                            otro = noone;
                        }
                    }
                    break;
                case o_humano:
                case o_animal:
                case o_ave:
                    otro = instance_place(x, y, o_terrestre); break;
                case o_pez:
                    otro = instance_place(x, y, o_pez); break;
                case o_encumbrada:
                    otro = instance_place(x, y, o_encumbrada); break;
                case o_minusculo:
                    otro = instance_place(x, y, o_minusculo); break;
                case o_bichin:
                    otro = instance_place(x, y, o_bichin); break;
            }
            if otro != noone {
                antecolision = true;
                var ddd = point_direction(otro.x, otro.y, x, y);
                var vvv = si_para_velocidad(especie) * dt;
                var prop = si_para_masa(otro.especie) /
                    (si_para_masa(especie) + si_para_masa(otro.especie));
                x += lengthdir_x(vvv * prop, ddd);
                y += lengthdir_y(vvv * prop, ddd);
                // afectar al otro
                otro.antecolision = true;
                otro.x += lengthdir_x(vvv * (1 - prop), -ddd);
                otro.y += lengthdir_y(vvv * (1 - prop), -ddd);
            }
        }
        else {
            antecolision = true;
            var ddd = point_direction(otro.x, otro.y, x, y);
            var vvv = si_para_velocidad(especie) * dt;
            x += lengthdir_x(vvv, ddd);
            y += lengthdir_y(vvv, ddd);
        }
    }
}

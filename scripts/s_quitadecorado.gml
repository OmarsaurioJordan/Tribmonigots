// arg0: cooredanas x
// arg1: coordenadas y
// arg2: radio de colision

var aux = noone;
do {
    if aux != noone {
        with aux {
            var aux2 = instance_create(x, y, o_decorado_muere);
            aux2.grafico = grafico;
            aux2.subgraf = subgraf;
            instance_destroy();
        }
    }
    aux = collision_circle(argument0, argument1, argument2, o_decorado, true, true);
}
until aux == noone;

aux = noone;
do {
    if aux != noone {
        with aux { instance_destroy(); }
    }
    aux = collision_circle(argument0, argument1, argument2, o_decorado_nace, true, true);
}
until aux == noone;

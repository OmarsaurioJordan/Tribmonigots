// arg0: coordenadas x
// arg1: coordenadas y
// arg2: tipo de decorado segun objeto, por ejemplo o_decorado_flor
// ret: id de decorado naciente encontrado o noone

var res = noone;
var mejor = 1000000;
var ddd;
with o_decorado_nace {
    if si_decorado_objeto(grafico, subgraf) == argument2 {
        ddd = point_distance(x, y, argument0, argument1);
        if ddd < mejor {
            mejor = ddd;
            res = id;
        }
    }
}
return res;

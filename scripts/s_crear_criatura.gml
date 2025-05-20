// arg0: posicion x
// arg1: posicion y
// arg2: ind de especie animal
// ret: id de instancia creada

var aux = instance_create(argument0, argument1, si_para_obj(argument2));
aux.vida = si_para_masa(argument2);
aux.especie = argument2;
return aux;

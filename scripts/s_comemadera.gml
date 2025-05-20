// arg0: id del arbol a atacar
// arg1: cantidad de puntos de impacto quitados

with argument0 {
    var muere = false;
    if object_index == o_arbol_quieto {
        if si_arbol_talla(grafico, subgraf) - argument1 <= 0 {
            muere = true;
        }
        else {
            var aux = instance_create(x, y, o_arbol_sana);
            aux.grafico = grafico;
            aux.subgraf = subgraf;
            aux.vida = si_arbol_talla(grafico, subgraf) - argument1;
            instance_destroy();
        }
    }
    else {
        vida -= argument1;
        if vida <= 0 {
            muere = true;
        }
    }
    if muere {
        // crear maderos
        
        // crear arbol muerto
        var aux = instance_create(x, y, o_arbol_muere);
        aux.grafico = grafico;
        aux.subgraf = subgraf;
        instance_destroy();
    }
}


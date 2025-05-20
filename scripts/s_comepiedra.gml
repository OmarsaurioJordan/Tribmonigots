// arg0: id de la mina a minar
// arg1: probabilidad de sacar material

if random(1) < argument1 {
    with argument0 {
        metales -= m_material_unidad;
        // crear mineral recogible
        
        // reducir la mina o destruirla
        if metales <= 0 {
            var aux = instance_create(x, y, o_decorado_postmina);
            aux.grafico = grafico;
            aux.subgraf = subgraf + 4;
            instance_destroy();
        }
        else {
            if metales > si_mina_metales(grafico, subgraf) * 0.75 { desnivel = 0; }
            else if metales > si_mina_metales(grafico, subgraf) * 0.5 { desnivel = 1; }
            else if metales > si_mina_metales(grafico, subgraf) * 0.25 { desnivel = 2; }
            else { desnivel = 3; }
        }
    }
}

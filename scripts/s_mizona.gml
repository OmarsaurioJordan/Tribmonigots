// arg0: punto x
// arg1: punto y
// ret: ind de zona, usualmente color

var xx = round((argument0 / m_mapa_celda) - 1);
xx = clamp(xx, 0, ds_grid_width(o_mundo.zona) - 1);
var yy = round((argument1 / m_mapa_celda) - 1);
yy = clamp(yy, 0, ds_grid_height(o_mundo.zona) - 1);
return ds_grid_get(o_mundo.zona, xx, yy);

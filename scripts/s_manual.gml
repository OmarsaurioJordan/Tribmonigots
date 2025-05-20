// arg0: id instancia que sera manejada por teclas

with argument0 {
    var vertical = 0;
    var horizontal = 0;
    if keyboard_check(ord('A')) {
        horizontal -= 100;
    }
    if keyboard_check(ord('D')) {
        horizontal += 100;
    }
    if keyboard_check(ord('W')) {
        vertical -= 100;
    }
    if keyboard_check(ord('S')) {
        vertical += 100;
    }
    if vertical != 0 or horizontal != 0 {
        s_mover(id, x + horizontal, y + vertical, false);
    }
}

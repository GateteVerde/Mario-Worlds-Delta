///grab_pivots();

/*
**  Usage:
**      grab_pivots();
**
**  Returns:
**      Pivot coodirnates to control circle movement,
*/
///note: dir on argument IS STARTING direction

//Auto grab pivot script, so you don't need to set them yourself, no biggie!
if (dir == cs_circle_upright) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(16,0,16,180);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,16,16,90);
}
else if (dir == cs_circle_upleft) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(-16,0,16,0);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,16,16,90);
}
else if (dir == cs_circle_downright) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(16,0,16,180);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,-16,16,270);
}
else if (dir == cs_circle_downleft) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(-16,0,16,360);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,-16,16,270);
}

//32x32
if (dir == cs_ccircle_upright) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(32,0,32,180);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,32,32,90);
}
else if (dir == cs_ccircle_upleft) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(-32,0,32,0);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,32,32,90);
}
else if (dir == cs_ccircle_downright) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(32,0,32,180);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,-32,32,270);
}
else if (dir == cs_ccircle_downleft) {

    //WARNING they have 2 ways to move using one path direction
    if (alt_dir == 0) 
        pivot_set(-32,0,32,360);
    else if (alt_dir == 1) //only if it is set as dir[1]
        pivot_set(0,-32,32,270);
}

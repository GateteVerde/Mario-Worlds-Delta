///pivot_set(pivotx,pivoty,rad,dir);

/*
**  Usage:
**      pivot_set(pivotx,pivoty,rad,dir);
**
**  Given:
**      pivotx           = Tile width
**      pivoty           = Tile height
**      rad      = Tile width and height, which is radius!
**      dir       = STARTING direction
**
**  Returns:
**      This sets up the coodirnates for the pivot 
*/


pivot_x = myd.x + argument0; // location, based on tile width
pivot_y = myd.y + argument1;  // location, based on tile height
pivot_radius = argument2; //radius
pivot_direction = argument3; //starting

///player_inslope()

/*
**  Name:
**      player_inslope();
**
**  Function:
**      Checks if the player is on a sloped ground
*/

//Check if the player is making contact with a slope
if (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent, 1, 0))
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent_move, 1, 0))
    return true;
else
    return false;

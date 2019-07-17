///player_inslope()

/*
**  Name:
**      player_inslope();
**
**  Function:
**      Checks if the player is on a sloped ground
*/

//Check if the player is making contact with a slope
if (collision_rectangle(x, bbox_bottom+1, x, bbox_bottom+1,obj_slopeparent,1,0))
    return true;
else
    return false;

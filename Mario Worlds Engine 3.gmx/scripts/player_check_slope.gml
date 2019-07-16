///player_check_slope()

/*
**  Name:
**      player_check_slope();
**
**  Function:
**      Checks if the player is on a sloped ground
*/

//Check if the player is making contact with a slope
if (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+4,obj_slopeparent,1,0))
    return true;
else
    return false;

///player_inslope()

/*
**  Name:
**      player_inslope();
**
**  Function:
**      Checks if the player is on a sloped ground
*/

//Telling the compiler to compile this script inline
gml_pragma("forceinline");

//Check if the player is making contact with a slope
return (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent, 1, 0))
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent_move, 1, 0));

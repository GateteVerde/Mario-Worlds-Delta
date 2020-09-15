///player_grow();

/*
**  Name:
**      player_grow();
**
**  Function:
**      Returns the appropiate grow sprite for the player
*/

//Check player
switch (global.player) {

    //Luigi
    case (1): return spr_luigi_transform_grow; break;
    
    //Toad
    case (2): return spr_toad_transform_grow; break;
    
    //Peach
    case (3): return spr_peach_transform_grow; break;
    
    //Default
    default: return spr_mario_transform_grow; break;
}

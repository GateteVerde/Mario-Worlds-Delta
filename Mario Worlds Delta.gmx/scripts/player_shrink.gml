///player_shrink();

/*
**  Name:
**      player_shrink();
**
**  Function:
**      Returns the appropiate shrink sprite for the player
*/

//Check player
switch (global.player) {

    //Luigi
    case (1): return spr_luigi_transform_shrink; break;
    
    //Toad
    case (2): return spr_toad_transform_shrink; break;
    
    //Peach
    case (3): return spr_peach_transform_shrink; break;
    
    //Default
    default: return spr_mario_transform_shrink; break;
}

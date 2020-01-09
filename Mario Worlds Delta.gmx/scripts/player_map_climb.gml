///player_map_climb();

/*
**  Name:
**      player_map_climb();
**
**  Function:
**      Returns the appropiate climbing map sprite for the player
*/
        
//Check what player is being used
switch (global.player) {

    //Mario
    case (0): return spr_mapmario_climb;
        
    //Luigi
    case (1): return spr_mapluigi_climb;
    
    //Toad
    case (2): return spr_maptoad_climb;
}          

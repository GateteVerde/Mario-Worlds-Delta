///player_map_select();

/*
**  Name:
**      player_map_select();
**
**  Function:
**      Returns the appropiate select map sprite for the player
*/

//Check if the player is riding a yoshi
switch (global.mount) {

    //No
    case (0): {
    
        //Check what player is being used
        switch (global.player) {
        
            //Mario
            case (0): return spr_mapmario_select;
                
            //Luigi
            case (1): return spr_mapluigi_select;
            
            //Toad
            case (2): return spr_maptoad;
        }
    } break;
    
    //Yes
    case (1): {
        
        //Check what player is being used
        switch (global.player) {
        
            //Mario
            case (0): return spr_mapmario_yoshi_select;
                
            //Luigi
            case (1): return spr_mapluigi_yoshi_select;
            
            //Toad
            case (2): return spr_maptoad_yoshi;
        }
    } break;
}

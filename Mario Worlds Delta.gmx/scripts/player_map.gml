///player_map();

/*
**  Name:
**      player_map();
**
**  Function:
**      Returns the appropiate default map sprite for the player
*/

//Check if the player is riding a yoshi
switch (global.mount) {

    //No
    case (0): {
    
        //If the player is in water
        if (!is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
            
                //Mario
                case (0): return spr_mapmario;
                    
                //Luigi
                case (1): return spr_mapluigi;
                
                //Toad
                case (2): return spr_maptoad;
                
                //Peach
                case (3): return spr_mappeach;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_water;
                    
                //Luigi
                case (1): return spr_mapluigi_water;
                
                //Toad
                case (2): return spr_maptoad_water;
                
                //Peach
                case (3): return spr_mappeach_water;
            }                    
        }
    } break;
    
    //Yes
    case (1): {
    
        //If the player is in water
        if (!is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
            
                //Mario
                case (0): return spr_mapmario_yoshi;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi;
                
                //Toad
                case (2): return spr_maptoad_yoshi;
                
                //Peach
                case (3): return spr_mappeach_yoshi;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_yoshi_water;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi_water;
                
                //Toad
                case (2): return spr_maptoad_yoshi_water;
                
                //Peach
                case (3): return spr_mappeach_yoshi_water;
            }                    
        }
    } break;
}

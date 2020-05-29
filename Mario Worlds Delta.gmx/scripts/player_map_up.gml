///player_map_up();

/*
**  Name:
**      player_map_up();
**
**  Function:
**      Returns the appropiate moving up map sprite for the player
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
                case (0): return spr_mapmario_up;
                    
                //Luigi
                case (1): return spr_mapluigi_up;
                
                //Toad
                case (2): return spr_maptoad_up;
                
                //Peach
                case (3): return spr_mappeach_up;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_water_up;
                    
                //Luigi
                case (1): return spr_mapluigi_water_up;
                
                //Toad
                case (2): return spr_maptoad_water_up;
                
                //Peach
                case (3): return spr_mappeach_water_up;
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
                case (0): return spr_mapmario_yoshi_up;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi_up;
                
                //Toad
                case (2): return spr_maptoad_yoshi_up;
                
                //Peach
                case (3): return spr_mappeach_yoshi_up;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_yoshi_water_up;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi_water_up;
                
                //Toad
                case (2): return spr_maptoad_yoshi_water_up;
                
                //Peach
                case (3): return spr_mappeach_yoshi_water_up;
            }                    
        }
    } break;
}

///player_map_side();

/*
**  Name:
**      player_map_side();
**
**  Function:
**      Returns the appropiate moving side map sprite for the player
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
                case (0): return spr_mapmario_side;
                    
                //Luigi
                case (1): return spr_mapluigi_side;
                
                //Toad
                case (2): return spr_maptoad_side;
                
                //Peach
                case (3): return spr_mappeach_side;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_water_side;
                    
                //Luigi
                case (1): return spr_mapluigi_water_side;
                
                //Toad
                case (2): return spr_maptoad_water_side;
                
                //Peach
                case (3): return spr_maptoad_water_side;
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
                case (0): return spr_mapmario_yoshi_side;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi_side;
                
                //Toad
                case (2): return spr_maptoad_yoshi_side;
                
                //Peach
                case (3): return spr_mappeach_yoshi_side;
            }
        }
        
        //Otherwise, if the player is not swimming
        else if (is_swimming) {
        
            //Check what player is being used
            switch (global.player) {
        
                //Mario
                case (0): return spr_mapmario_yoshi_water_side;
                    
                //Luigi
                case (1): return spr_mapluigi_yoshi_water_side;
                
                //Toad
                case (2): return spr_maptoad_yoshi_water_side;
                
                //Peach
                case (3): return spr_mappeach_yoshi_water_side;
            }                    
        }
    } break;
}

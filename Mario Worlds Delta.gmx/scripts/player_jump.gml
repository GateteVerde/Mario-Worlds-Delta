///player_jump();

/*
**  Name:
**      player_jump();
**
**  Function:
**      Returns the appropiate jump sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_jump;
            
        //Luigi
        else if (global.player == 1) {
        
            if (vspeed < 0)
                return spr_luigi_small_jump;
            else
                return spr_luigi_small_jump2;
        }
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_jump;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_small_jump;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_jump;
            
        //Luigi
        else if (global.player == 1) {
        
            if (vspeed < 0)
                return spr_luigi_big_jump;
            else
                return spr_luigi_big_jump2;
        }
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_jump;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_jump;
    } break;
}

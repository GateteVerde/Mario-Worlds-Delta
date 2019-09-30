///player_clear();

/*
**  Name:
**      player_clear();
**
**  Function:
**      Returns the appropiate clear sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_clear;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_clear;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_clear;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_clear;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_clear;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_clear;
    } break;
}

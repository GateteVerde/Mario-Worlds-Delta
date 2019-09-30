///player_swim2();

/*
**  Name:
**      player_swim2();
**
**  Function:
**      Returns the appropiate swim2 sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_swim2;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_swim2;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_swim2;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_swim2;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_swim2;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_swim2;
    } break;
}

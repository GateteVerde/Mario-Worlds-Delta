///player_runjump();

/*
**  Name:
**      player_runjump();
**
**  Function:
**      Returns the appropiate runjump sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_runjump;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_runjump;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_runjump;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_small_runjump;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_runjump;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_runjump;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_runjump;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_runjump;
    } break;
}

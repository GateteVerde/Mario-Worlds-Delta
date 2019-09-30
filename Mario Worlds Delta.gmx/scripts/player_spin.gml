///player_spin();

/*
**  Name:
**      player_spin();
**
**  Function:
**      Returns the appropiate spin sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_spin;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_spin;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_spin;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_spin;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_spin;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_spin;
    } break;
}

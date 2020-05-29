///player_ride();

/*
**  Name:
**      player_ride();
**
**  Function:
**      Returns the appropiate ride sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_ride;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_ride;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_ride;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_small_ride;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_ride;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_ride;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_ride;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_ride;
    } break;
}

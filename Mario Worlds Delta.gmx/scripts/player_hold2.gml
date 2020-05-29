///player_hold2();

/*
**  Name:
**      player_hold2();
**
**  Function:
**      Returns the appropiate hold2 sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_hold2;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_hold2;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_hold2;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_small_hold2;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_hold2;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_hold2;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_hold2;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_hold2;
    } break;
}

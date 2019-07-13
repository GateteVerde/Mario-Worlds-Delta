///player_kick();

/*
**  Name:
**      player_kick();
**
**  Function:
**      Returns the appropiate kick sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_kick;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_kick;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_kick;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_kick;
    } break;
}

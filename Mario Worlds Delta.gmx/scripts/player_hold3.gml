///player_hold3();

/*
**  Name:
**      player_hold3();
**
**  Function:
**      Returns the appropiate hold2 sprite for the player
**
**  Notes:
**      Only to be used with Luigi
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
            
        //Luigi
        if (global.player == 1)
            return spr_luigi_small_hold3;
    } break;
    
    //Default
    default: {
            
        //Luigi
        if (global.player == 1)
            return spr_luigi_big_hold3;
    } break;
}

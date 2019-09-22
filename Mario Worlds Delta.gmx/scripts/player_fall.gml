///player_fall();

/*
**  Name:
**      player_fall();
**
**  Function:
**      Returns the appropiate fall sprite for the player
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
            return spr_luigi_small_fall;
    } break;
    
    //Default
    default: {
            
        //Luigi
        if (global.player == 1)
            return spr_luigi_big_fall;
    } break;
}

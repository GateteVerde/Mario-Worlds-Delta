///player_climb();

/*
**  Name:
**      player_climb();
**
**  Function:
**      Returns the appropiate climb sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_climb;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_climb;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_climb;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_climb;
    } break;
}

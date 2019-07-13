///player_swim();

/*
**  Name:
**      player_swim();
**
**  Function:
**      Returns the appropiate swim sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_swim;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_swim;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_swim;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_swim;
    } break;
}

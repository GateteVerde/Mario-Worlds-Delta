///player_run();

/*
**  Name:
**      player_run();
**
**  Function:
**      Returns the appropiate run sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_run;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_run;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_run;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_run;
    } break;
}

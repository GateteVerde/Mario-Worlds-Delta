///player_idle();

/*
**  Name:
**      player_idle();
**
**  Function:
**      Returns the appropiate idle sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big;
    } break;
}

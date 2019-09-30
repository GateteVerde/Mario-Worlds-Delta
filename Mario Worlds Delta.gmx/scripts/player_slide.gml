///player_slide();

/*
**  Name:
**      player_slide();
**
**  Function:
**      Returns the appropiate slide sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_slide;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_slide;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_slide;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_slide;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_slide;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_slide;
    } break;
}

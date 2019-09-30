///player_skid();

/*
**  Name:
**      player_skid();
**
**  Function:
**      Returns the appropiate skid sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_skid;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_skid;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_skid;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_skid;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_skid;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_skid;
    } break;
}
